import sys
import time

import os
import pymel.core as pm

from PySide import QtCore, QtGui

from MayaGameEngine.core import qtutils
reload(qtutils)


class GameEngine(object):

    """The Game Engine is based on a PySide hack.

    The hack allows to run a game loop while still receiving user input.
    """

    def __new__(cls):
        """Make sure that the Context can only be instantiated once.

        @param cls The class to create
        """
        game_engine = get_gameengine()
        if game_engine is not None:
            return game_engine
        else:
            return super(GameEngine, cls).__new__(cls)
        # end if
    # end def __new__

    def __init__(self):
        """Initialize the context to an empty predefined state."""
        game_engine = get_gameengine()
        if game_engine is not None:
            self = game_engine
        else:
            ## The targeted frames per second
            self.target_fps = 120

            ## The start time
            self.time = time.time()

            ## A list of all registered game objects
            self.game_objects = list()

            ## Manage the user inputs
            self.input_manager = InputManager(self)

            ## Determines the state of the Game Engine
            self.running = False

            ## Variable to pause the Game Engine
            self.paused = False
        # end if
    # end def __init__

    def register_game_object(self, game_object):
        """Register the given game object."""
        game_object.game_engine = self
        self.game_objects.append(game_object)
    # end def register_game_object

    def clear_game_objects(self):
        """Clear all registered game objects."""
        self.game_objects = list() # [go for go in self.game_objects if go.dont_destroy]
    # end def clear_game_objects

    def start(self):
        """Start the game.

        Resets the time.
        """
        for game_object in self.game_objects:
            game_object.start()
        # end for
        self.time = time.time()
        self.paused = False
        self.running = True
        print 'GAME STARTED'
    # end def start

    def pause(self):
        """Pause the game."""
        self.paused = True
    # end def pause

    def resume(self):
        """Resume the game."""
        self.paused = False
    # end def resume

    def stop(self):
        """Stop the game loop."""
        self.running = False
        self.clear_game_objects()
        print 'GAME STOPPED'
    # end def stop

    def delta_time(self):
        """The time in seconds since the last update."""
        delta_time = time.time() - self.time
        if delta_time >= 1.0 / self.target_fps:
            self.time = time.time()
        # end if
        return delta_time
    # end def delta_time

    def update_main_game_loop(self):
        """The main game loop.

        1. Get the current delta time
        2. Update the key map
        3. Update all registered game objects
        """
        delta_time = self.delta_time()

        if delta_time >= 1.0 / self.target_fps:
            self.update_keys(delta_time)

            for game_object in [g for g in self.game_objects if g.enabled]:
                game_object.update(delta_time)
            # end for

            pm.refresh(f=True)
        else:
            pm.refresh(f=True)
        # end if
    # end def update_main_game_loop

    def update_keys(self, delta_time):
        """Store the active time for each pressed key.

        @param delta_time The delta time since the last update
        """
        for key, value in self.input_manager.inputs.items():
            if value[0]:
                value[1] += delta_time
            else:
                value[1] = value[1] - delta_time if value[1] - delta_time > 0 else 0
            # end if
        # end for
    # end def update_keys
# end class GameEngine


class InputManager(object):

    """Keep track of user inputs."""

    def __init__(self, game_engine):
        """"""
        ## Key map, holds information about pressed keys and time of press
        self.inputs = dict()

        self.min_tim = 0
        self.max_tim = 4
        self.game_engine = game_engine
    # end def __init__

    def __getattr__(self, name):
        """"""
        try:
            if getattr(QtCore.Qt, name) in self.inputs.keys():
                return self.inputs[getattr(QtCore.Qt, name)]
            else:
                return [False, 0]
            # end if
        except:
            raise AttributeError('\'%s\' object has no attribute \'%s\''
                                 % (self.__class__.__name__, name))
        # end try
    # end def __getattr__

    def keyPressEvent(self, event):
        """Register the pressed key in the key map."""
        if event.key() not in self.inputs.keys():
            self.inputs[event.key()] = [True, 0]
        # end if not in dict, add key to dict
        self.inputs[event.key()][0] = True

        for game_object in self.game_engine.game_objects:
            game_object.key_press_event(event)
        # end for
    # end def keyPressEvent

    def keyReleaseEvent(self, event):
        """De-register the pressed key in the key map."""
        if event.key() not in self.inputs.keys():
            self.inputs[event.key()] = [False, 0]
        # end if not in dict, add key to dict
        self.inputs[event.key()][0] = False

        for game_object in self.game_engine.game_objects:
            game_object.key_release_event(event)
        # end for
    # end def keyPressEvent

    def update_keys(self, delta_time):
        """Store the active time for each pressed key.

        @param delta_time The delta time since the last update
        """
        for key, value in self.inputs.items():
            if value[0]:
                value[1] += delta_time
            else:
                value[1] = value[1] - delta_time if value[1] - delta_time > 0 else 0
            # end if
            # value[1] = max(min(value[1], self.mas_time), self.min_time)
        # end for
    # end def update_keys
# end class InputManager


base_class, form_class = qtutils.load_ui_type(os.path.dirname(__file__) + '/resource/GameEngine.ui')


class GameEngineUI(base_class, form_class):

    """@todo documentation for GameEngineUI."""

    def __init__(self, inner_widget=None):
        """Initialize GameEngineUI."""
        super(GameEngineUI, self).__init__()
        self.setupUi(self)

        self.setLayout(QtGui.QHBoxLayout())
        self.start_btn = StartButton(self)
        self.layout().addWidget(self.start_btn)

        self.inner_widget = inner_widget
        if inner_widget is not None:
            self.inner_widget_vlay.addWidget(inner_widget)
        # end if

        self.game_engine = GameEngine()
    # end def __init__

    def on_start(self):
        """Override to create and initialize GameObjects on startup."""
        pass
    # end def on_start

    def on_stop(self):
        """Override to create and initialize GameObjects on end."""
        pass
    # end def on_stop

    def stop(self):
        """Stop the game from running."""
        GameEngine().stop()
        self.on_stop()
    # end def stop

    def keyPressEvent(self, event):
        """Register the pressed key in the key map."""
        self.game_engine.input_manager.keyPressEvent(event)
    # end def keyPressEvent

    def keyReleaseEvent(self, event):
        """De-register the pressed key in the key map."""
        self.game_engine.input_manager.keyReleaseEvent(event)
    # end def keyPressEvent

    def closeEvent(self, event):
        """Stop the game in case the UI is closed."""
        self.stop()
        QtGui.QWidget.closeEvent(self, event)
    # end def closeEvent
# end class GameEngineUI


class StartButton(QtGui.QPushButton):

    """Button to start and run the game loop."""

    def __init__(self, parent):
        """Initialize the start button."""
        super(StartButton, self).__init__(parent=parent)
        self.setText('START')
    # end def __init__

    def mouseReleaseEvent(self, event):
        """Start the Game and run the game loop.

        Allows to receive user input while running a game loop.
        """
        if GameEngine().running:
            self.parent().stop()
            return
        # end if
        self.parent().on_start()
        game_engine = GameEngine()
        game_engine.start()
        pm.refresh(f=True)
        while game_engine.running:
            if not game_engine.paused:
                game_engine.update_main_game_loop()
            # end if
        # end while
        return QtGui.QPushButton.mouseReleaseEvent(self, event)
    # end def dragMoveEvent
# end class StartButton


def get_gameengine():
    """Check whether the context can be found in the modules.

    This is to prevent the context from being initialized multiple
    times and ensures the singleton pattern.
    """
    context_key = 'MayaGameEngine.core.gameengine'
    if context_key in sys.modules.keys():
        if hasattr(sys.modules[context_key], 'gameengine'):
            return getattr(sys.modules[context_key], 'gameengine')
        else:
            return None
        # end if
    else:
        return None
    # end if
# end def get_gameengine


if get_gameengine() is None:
    gameengine = GameEngine()
# end if
