# MayaGameEngine

This is a fun little side project that evolved while working with PySide in Maya.
I wanted to find a solution on how to display a dialog while loading a bunch of assets in the background. The final implementation of that can be found HERE.

LINK to VIDEO

In the process, I discovered that I could run a while loop in a QWidget’s mouseRelaeseEvent while still being able to receive User Input.
With this I got two of the basic elements to run a Game: a game loop and user input. On top of that, since running in Maya, vector math, transformation matrices and rendering of 3D geometry is a given.
The only things missing were game objects that would receive the user input and updates from the game loop.

The following describes my approach on how to implement a simple Game Engine with these preconditions.

Please note that the code examples omit a lot of code to not clutter the text, but they relate tot the actual code in the repository.

## Game Engine
The Engine consists of a Singleton object to make sure every process accesses the same object.
It calculates the delta time between frame updates, updates the registered game objects and the user input.

### Singleton
The Singleton is achieved by searching the existing python modules for the game engine module. If the module does not yet possess a certain attribute, the GameEngine class is instantiated and stored in that attribute.

The \__new__ method of the GameEngine class performs this search and returns the stored instance if it can be found.
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
