# MayaGameEngine

This is a fun little side project that evolved while working with PySide in Maya.
I wanted to find a solution on how to display a dialog while loading a bunch of assets in the background. The final implementation of that can be found HERE.

LINK to VIDEO

In the process, I discovered that I could run a while loop in a QWidget’s mouseRelaeseEvent while still being able to receive User Input.
With this I got two of the basic elements to run a Game: a game loop and user input. On top of that, since running in Maya, vector math, transformation matrices and rendering of 3D geometry is a given.
The only things missing were game objects that would receive the user input and updates from the game loop.

The following describes my approach on how to implement a simple Game Engine with these preconditions. I show examples from a very basic race game that served as a test implementation of the processes. But my main focus was the framework that is the MayaGameEngine.

Please note that the code examples omit a lot of code to not clutter the text, but they relate tot the actual code in the repository.

## Game Engine
The Engine consists of a Singleton object to make sure every process accesses the same object.
It calculates the delta time between frame updates, updates the registered game objects and the user input.

### Singleton
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

### Update Loop

The update loop in the GameEngine retrieves the delta time and runs the udpate method on all registeres game objects.
Please note that it only updates within the targete the targeted fps.

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

### Game Objects
A Game Object is represented by a transform node in Maya.
It can be disabled to not receive any updates from the game loop. 
On instantiation the GameObject registers itself in the GameEngine

```python
class GameObject(object):

    game_engine = None

    def __init__(self, transform, parent=None):
        self.transform = pm.PyNode(transform)
        self.enabled = True
        self.parent = parent
        gameengine.GameEngine().register_game_object(self)
```

GameObjects hold a bunch of properties for transformation returning pymel objects.

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

For implementing actual behavior in the Game, GameObjects provide four virtual methods.
The most important of them being update, which is being called on every frame providing the delta time since the last update.

```python
    def update(self, delta_time):
        """Called on every frame update.

        @param delta_time The time since the last update.
        """
```

The start method can be overridden to set initial values. The example shows how the Vehicle initializes the values of the damage meter on start up 

```python
    def start(self):
        self.ui_health.setAttr('sx', self.damage / 100.0)
        self.transform.setAttr('damage', self.damage / 100.0)
```


```python
    def key_press_event(self, event):
        """Method to implement key press input events.

        @param event The QtGui event
        """

    def key_release_event(self, event):
        """Method to implement key release input events.

        @param event The QtGui event
        """
```










### User Input
