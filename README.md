
# MayaGameEngine

This is a fun little side project that evolved while working with PySide in Maya.
I wanted to find a solution on how to display a dialog while loading a bunch of assets in the background. The final implementation of that can be found HERE.

[LINK to VIDEO]

In the process, I discovered that I could run a while loop in a QWidget’s mouseRelaeseEvent while still being able to receive User Input.
With this I got two of the basic elements to run a Game: a game loop and user input. On top of that, since running in Maya, vector math, transformation matrices and rendering of 3D geometry is a given.
The only things missing were game objects that would receive the user input and updates from the game loop.

The following describes my approach on how to implement a simple Game Engine with these preconditions. I show examples from a very basic race game that served as a test implementation of the processes. But my main focus was the framework that is the MayaGameEngine.

Please note that the code examples omit a lot of code tfor simplicity reasons, but they relate to the actual code in the repository.

[1. Game Engine](#game_engine)

[1.1 Singleton](#singleton)

[1.2 Update Loop](#update_loop)

[2. Game Engine UI](#game_engine_ui)

[3. Input Manager](#input_manager)

[4. Game Objects](#game_objects)

[4.1 Colliders](#colliders)

[5. Further Development](#further_development)

## <a name="game_engine">Game Engine</a>
The Engine consists of a Singleton object to make sure every process accesses the same object.
It calculates the delta time between frame updates, updates the registered game objects and the user input.

### <a name="singleton">Singleton</a>
The Singleton is achieved by searching the existing python modules for the game engine module. If the module does not yet possess a certain attribute, the GameEngine class is instantiated and stored in that attribute.

The \__new__ method of the GameEngine class also performs this search and returns the stored instance if it can be found, otherwise it creates a new instance.
This method is also safe against the reload() function.

```python
class GameEngine(object):
  def __new__(cls):
    game_engine = get_gameengine()
    if game_engine is not None:
      return game_engine
    else:
      return super(GameEngine, cls).__new__(cls)


def get_gameengine():
  key = 'MayaGameEngine.core.gameengine'
  if key in sys.modules.keys():
    if hasattr(sys.modules[key], 'gameengine'):
      return getattr(sys.modules[key], 'gameengine')
    else:
      return None
  else:
    return None


if get_gameengine() is None:
    gameengine = GameEngine()
```

### <a name="update_loop">Update Loop</a>

The update loop in the GameEngine retrieves the delta time and runs the udpate method on all registeres game objects.
Please note that it only updates within the targeted fps.

```python
  def update_main_game_loop(self):
    delta_time = self.delta_time()
    if delta_time >= 1.0 / self.target_fps:
      self.update_keys(delta_time)
      for game_object in [g for g in self.game_objects if g.enabled]:
        game_object.update(delta_time)
      pm.refresh(f=True)
    else:
      pm.refresh(f=True)
```

The game loop within the GameEngine is in turn triggered and controlled by the mouseReleaseEvent in the StartButton in the Game Engine UI.

```python
class StartButton(QtGui.QPushButton):
    def mouseReleaseEvent(self, event):
      if GameEngine().running:
        self.parent().stop()
        return
      game_engine = GameEngine()
      game_engine.start()
      pm.refresh(f=True)
      while game_engine.running:
        if not game_engine.paused:
          game_engine.update_main_game_loop()
      return QtGui.QPushButton.mouseReleaseEvent(self, event)
```

## <a name="game_engine_ui">Game Engine UI</a>
The StartButton resides in a PySide UI, which is necessary to make the solution work in the first place.
The StartButton starts and also stops the game. 

Key press and release events are registered by the UI and distributed to the InputManager.
For the key events to be processed, the GameEngineUi has to be focused. 

The UI is designed to fill the entire screen and then minimize when the Game has been started.

The UI can be extended by custom widgets depending on the actual game implementation. Please note that it is crucial to set the proper focus policy on all widgets, otherwise key events might just iterate over the widgets in the UI.

```python
self.setFocusPolicy(QtCore.Qt.NoFocus)
```

## <a name="input_manager">Input Manager</a>
The InputManager keeps track of the pressed buttons and the elapsed time of the button press.
It uses a lazy method to only register keys that are pressed or requested byt GameObjects as opposed to initalizing a long list of all keys on initialization.

```python
class InputManager(object):

  def __init__(self, game_engine):
    self.inputs = dict()

  def __getattr__(self, name):
    try:
      if getattr(QtCore.Qt, name) in self.inputs.keys():
        return self.inputs[getattr(QtCore.Qt, name)]
      else:
        return [False, 0]
    except:
      raise AttributeError('\'%s\' object has no attribute \'%s\''
                           % (self.__class__.__name__, name))
```

## <a name="game_objects">Game Objects</a>
A Game Object is represented by a transform node in Maya.
It can be disabled to not receive any updates from the game loop. 
On instantiation the GameObject registers itself in the GameEngine.
GameObjects can be parented to transmit signals from child to parent or vice versa. Colliders are using this to trigger collision events. More on colliders in the respective section below.

```python
class GameObject(object):

  game_engine = None

  def __init__(self, transform, parent=None):
    self.transform = pm.PyNode(transform)
    self.enabled = True
    self.parent = parent
    gameengine.GameEngine().register_game_object(self)
```

GameObjects hold a series of properties for transformation that return respective pymel objects.

```python
  @property
  def forward_vector(self):
      return pm.datatypes.Vector(0, 0, 1).rotateBy(self.rotation)

  @property
  def position(self):
    return pm.datatypes.Point(self.transform.getTranslation(ws=True))

  @property
  def rotation(self):
      return self.transform.getRotation() + [0]
```

For implementing actual behavior in the Game, GameObjects provide four basic virtual methods.
The most important of them being update, which is being called on every frame providing the delta time since the last update.

```python
  def update(self, delta_time):
    pass
```

The start method can be overridden to set initial values. The example shows how the Vehicle initializes the values of the damage meter on start up.

```python
  def start(self):
    self.ui_health.setAttr('sx', self.damage / 100.0)
    self.transform.setAttr('damage', self.damage / 100.0)
```

Key press events will be registered and can used to trigger actions in the game. Due to the below explained resctrictions it is not possible to register any mouse events.

```python
  def key_press_event(self, event):
    pass

  def key_release_event(self, event):
    pass
```

### <a name="colldiers">Colliders</a>
A special type of GameObjects are colliders.
Right now, only two colliders are provided, a SphereCollider and a CurveCollider.

Colliders check if they collide with any other collider in the scene. If so, they trigger events on their parent GameObject based on whether they enter the collision, exit it or keep on colliding.

```python
def on_collide_enter(self, collider, point, amount):
    pass

def on_collide(self, collider, point, amount):
    pass

def on_collide_exit(self, collider, point):
    pass
```

## <a name="further_development">Further Development</a>
A list of open issues and ideas.

### Particles 
The udpate loop can also update the Maya timeline and thus play particles. A test has proven that particles behave slightly differently than when used regularly in Maya.

### More Colliders
A Point/ImplicitSphere Collider would be easy to implement and allow for non uniformly scaled sphere colliders. 

### Use RigidBodies
Investigate the use of rigid bodies for when updating the timeline

### GameObject representation on it's transform node 
Have attributes on the transform node represent paramters on the actual GameObject class. Those values could be read on start and allow for an interactive setup of game scenes as opposed to purely code driven.
