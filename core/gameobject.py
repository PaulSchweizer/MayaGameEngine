import pymel.core as pm

from MayaGameEngine.core import gameengine


class GameObject(object):

    """The base class for all game objects."""

    ## A reference to the game engine
    game_engine = None

    def __init__(self, transform, parent=None):
        """A transform node serves as a representation in the scene.

        @param transform The main transform node.
        """
        self.transform = pm.PyNode(transform)
        self.enabled = True
        self.dont_destroy = False
        self.parent = parent
        self.colliders = list()
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

    def on_collide_enter(self, collider, point, amount):
        """@todo documentation for on_collide_enter."""
        pass
    # end def on_collide_enter

    def on_collide(self, collider, point, amount):
        """@todo documentation for on_collide."""
        pass
    # end def on_collide

    def on_collide_exit(self, collider, point):
        """@todo documentation for on_collide_exit."""
        pass
    # end def on_collide_exit

    def destroy(self):
        """Removing this object from the GameEngine."""
        gameengine.GameEngine().game_objects.remove(self)
    # end def destroy()
# end class GameObject


class Collider(GameObject):

    """@todo documentation for Collider."""

    def __init__(self, transform, parent=None):
        """Initialize Collider."""
        super(Collider, self).__init__(transform, parent)
        self.game_engine.colliders.append(self)
    # end def __init__
# end class Collider


class SphereCollider(Collider):

    """A spherical collider."""

    def __init__(self, transform, parent=None):
        """Initialize the sphere collider."""
        super(SphereCollider, self).__init__(transform, parent)
    # end def __init__

    def update(self, delta_time):
        """Handle collisions and send on_collide signals to the parent.

        @param delta_time The delta time
        """
        if not self.parent:
            return
        for collider in self.game_engine.colliders:
            if collider is self or self.parent == collider.parent:
                continue
            # end if
            if isinstance(collider, CurveCollider):
                self._handle_curve_collider(collider)
            elif isinstance(collider, SphereCollider):
                self._handle_sphere_collider(collider)
            # end if
        # end for
    # end def update

    def _handle_sphere_collider(self, collider):
        """@todo documentation for _handle_sphere_collider."""
        r1 = self.transform.getAttr('sx')
        r2 = collider.transform.getAttr('sx')
        d = r1 + r2
        p1 = self.transform.getTranslation(ws=True)
        p2 = collider.transform.getTranslation(ws=True)
        collision_vector = pm.datatypes.Vector(p2 - p1)
        point = p2 - collision_vector.normal() * 2 * r1
        if collision_vector.length() < d:
            if self in self.parent.colliders:
                self.parent.on_collide(collider, point, collision_vector.length())
            else:
                self.parent.on_collide_enter(collider, point, collision_vector.length())
                self.parent.colliders.append(self)
            # end if
        else:
            if self in self.parent.colliders:
                self.parent.colliders.remove(self)
                self.parent.on_collide_exit(collider, point)
            # end if
        # end if
    # end def _handle_sphere_collider

    def _handle_curve_collider(self, collider):
        """Handle collisions with CurveColliders.

        @param collider The CurveCollider
        """
        point = collider.curve.closestPoint(self.transform.getTranslation(ws=True))
        collision_vector = pm.datatypes.Vector(point - self.transform.getTranslation(ws=True))
        point = point - collision_vector.normal() * 2 * self.transform.getAttr('sx')
        if collision_vector.length() < self.transform.getAttr('sx') * 2:
            if collider in self.parent.colliders:
                self.parent.on_collide(collider, point, collision_vector.length())
            else:
                self.parent.colliders.append(self)
                self.parent.on_collide_enter(collider, point, collision_vector.length())
            # end if
        else:
            if collider in self.parent.colliders:
                self.parent.colliders.remove(self)
                self.parent.on_collide_exit(collider, point)
            # end if
        # end if
    # end def _handle_curve_collider
# end class SphereCollider


class CurveCollider(Collider):

    """@todo documentation for CurveCollider."""

    def __init__(self, transform, parent=None):
        """Initialize CurveCollider."""
        super(CurveCollider, self).__init__(transform, parent)
        self.curve = pm.nodetypes.NurbsCurve(self.transform.getShape())
    # end def __init__
# end class CurveCollider


class Particle(GameObject):

    """@todo documentation for Particle."""

    def __init__(self, transform, particle_shape, parent=None):
        """Initialize Particle."""
        super(Particle, self).__init__(transform, parent)
        self.particle_shape = pm.PyNode(particle_shape)
    # end def __init__

    def update(self, delta_time):
        """@todo documentation for update."""
        # self.particle_shape.setAttr('currentTime', self.particle_shape.getAttr('currentTime') + delta_time * 24)
    # end def update
# end class Particle
