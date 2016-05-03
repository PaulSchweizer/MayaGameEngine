import pymel.core as pm

from MayaGameEngine.core import gameengine


class GameObject(object):

    """The base class for all game objects."""

    ## A reference to the game engine
    game_engine = None

    def __init__(self, transform):
        """A transform node serves as a representation in the scene.

        @param transform The main transform node.
        """
        self.transform = pm.PyNode(transform)
        self.enabled = True
        self.dont_destroy = False
        gameengine.GameEngine().register_game_object(self)
    # end def __init__

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

    def start(self):
        """Override this method to run code on game start."""
        pass
    # end def start

    def key_press_event(self, event):
        """Method to implement key press input events.

        @param event The QtGui event
        """
        pass
    # end def key_press_event

    def key_release_event(self, event):
        """Method to implement key release input events.

        @param event The QtGui event
        """
        pass
    # end def key_release_event

    def update(self, delta_time):
        """Called on every frame update.

        @param delta_time The time since the last update.
        """
        pass
    # end def update

    def destroy(self):
        """Removing this object from the GameEngine."""
        gameengine.GameEngine().game_objects.remove(self)
    # end def destroy()
# end class GameObject


class SphereCollider(GameObject):

    """A spherical collider."""

    def __init__(self, transform):
        """@todo documentation for __init__."""
        super(SphereCollider, self).__init__(transform)
    # end def __init__

    # def update(self):
    #     """@todo documentation for update."""
    #     for go in [g for g in self.game_engine.game_objects if isinstance(go, SphereCollider)]:
    #         print go
    # # end def update

# end class SphereCollider
