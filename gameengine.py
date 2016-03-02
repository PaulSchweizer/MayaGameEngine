import pymel.core as pm

import time

from rnkQtImportWrapper import loadUi, QtCore, QtGui

from rnkRig.core.qt import utils
reload(utils)


class GameEngine(QtGui.QWidget):

    """The Game Engine is based on a PySide hack.

    The hack allows to run a game loop and still receive user input.
    """

    def __init__(self, inner_widget=None):
        """Initialize the GameEngine."""
        super(GameEngine, self).__init__()
        loadUi(utils.get_ui_file_path(__file__, 'GameEngine'), self)

        # @TODO Provide a spot in the UI for the actual game menus,
        #       much like the ConfirmDialog with the inner widget
        if inner_widget is not None:
            self.game_ui_vly.addWidget(inner_widget)
        # end if

        ## The targeted frames per second
        self.target_fps = 120

        ## The start time
        self.time = time.time()

        ## A list of all registered game objects
        self.game_objects = list()

        ## Manage the user inputs
        self.input_manager = InputManager()
    # end def __init__

    def register_game_object(self, game_object):
        """Register the given game object."""
        game_object.game_engine = self
        self.game_objects.append(game_object)
    # end def register_game_object

    def delta_time(self):
        """The time in seconds since the last update."""
        delta_time = time.time() - self.time
        if delta_time >= 1.0 / self.target_fps:
            self.time = time.time()
        return delta_time
    # end def delta_time

    def keyPressEvent(self, event):
        """Register the pressed key in the key map."""
        self.input_manager.keyPressEvent(event)
    # end def keyPressEvent

    def keyReleaseEvent(self, event):
        """De-register the pressed key in the key map."""
        self.input_manager.keyReleaseEvent(event)
    # end def keyPressEvent

    def closeEvent(self, event):
        """Stop the game in case the UI is closed."""
        self.stop_game()
        QtGui.QWidget.closeEvent(self, event)
    # end def closeEvent

    def start_game(self):
        """Start the game.

        Resets the time.
        """
        print 'GAME STARTED'
        self.time = time.time()
    # end def start_game

    def stop_game(self):
        """Stop the game loop."""
        print 'GAME STOPPED'
        self.start_btn.running = False
    # end def stop_game

    def update(self):
        """The main game loop.

        1. Get the current delta time
        2. Update the key map
        3. Update all registered Game Objects
        """
        delta_time = self.delta_time()

        if delta_time >= 1.0 / self.target_fps:
            self.update_keys(delta_time)

            for game_object in self.game_objects:
                game_object.update(delta_time)
            # end for

            pm.refresh(f=True)
        else:
            pm.refresh(f=True)
    # end def update

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

    def __init__(self):
        """"""
        ## Key map, holds information about pressed keys and time of press
        self.inputs = dict()

        self.min_tim = 0
        self.max_tim = 4
    # end def __init__

    def __getattr__(self, name):
        """
        """
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
    # end def keyPressEvent

    def keyReleaseEvent(self, event):
        """De-register the pressed key in the key map."""
        if event.key() not in self.inputs.keys():
            self.inputs[event.key()] = [False, 0]
        # end if not in dict, add key to dict
        self.inputs[event.key()][0] = False
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


class StartButton(QtGui.QPushButton):

    """Button to start and run the game loop."""

    def __init__(self, parent):
        """Initialize the start button."""
        super(StartButton, self).__init__(parent=parent)
        self.mouse_pressed = False
        self.running = False
    # end def __init__

    def mouseReleaseEvent(self, event):
        """Start and run the game loop.

        Allows to receive user input while running a game loop.
        """
        self.running = True
        self.parent().start_game()
        while self.running:
            self.parent().update()
        # end while
    # end def dragMoveEvent
# end class StartButton


class GameObject(object):

    """The base class for all game objects."""

    ## A reference to the game engine
    game_engine = None

    def __init__(self, transform):
        """A transform node serves as a representation in the scene.

        @param transform The main transform node.
        """
        self.transform = pm.PyNode(transform)
    # end def __init__

    def update(self, delta_time):
        """Called on every frame update.

        @param delta_time The time since the last update.
        """
        pass
    # end def update

    @property
    def forward_vector(self):
        """The forward vector of the transform.

        Forward points along the z-axis.
        """
        return pm.datatypes.Vector(0, 0, 1).rotateBy(self.rotation)
    # end def forward_vector

    @property
    def position(self):
        """The world position of the transform."""
        return pm.datatypes.Point(self.transform.getTranslation(ws=True))
    # end def position

    @property
    def rotation(self):
        """The current rotation of the transform in euler angles."""
        return self.transform.getRotation() + [0]
    # end def rotation
# end class GameObject


class SphereCollider(GameObject):
    """A spherical collider."""
    pass
# end class SphereCollider
