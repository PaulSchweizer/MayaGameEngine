"""@package MayaGameEngine.racegame.vehicle
@brief A vehicle for the race game
@date 2016/05/01
@version 1.0
@author Paul Schweizer
@email paulschweizer@gmx.net
"""
import math

import pymel.core as pm

from MayaGameEngine.core import gameobject
reload(gameobject)


# CONSTANTS
COEFFICIENT_OF_FRICTION = 0.3
AIR_DENSITY = 1.29
TRACTION_CONSTANT = 1000.0
ADHESION_COEFFICIENT = 0.7
GRAVITY = 9.81


class Vehicle(gameobject.GameObject):

    """The controllable Vehicle for the RaceGame."""

    def __init__(self,
                 transform,
                 name,
                 up,
                 down,
                 left,
                 right,
                 front_aim,
                 body,
                 steering_axis,
                 steering_wheel,
                 collider,
                 ui_pointer,
                 ui_health,
                 ui_countdown=list(),
                 wheels=list(),
                 overall_scale=1,
                 max_steering_angle=40,
                 wheel_radius=0.03,
                 mass=1500.0,
                 windshield_area=2.2):
        """Initialize the Vehicle.

        @param transform The main transform of the Vehicle
        @param name The name of the Player
        @param up The key for the up motion
        @param down The key for the down motion
        @param left The key for the left motion
        @param right The key for the right motion
        @param front_aim Transform to provide the forward aim
        @param body The body of the vehicle
        @param steering_axis The front steering axis
        @param steering_wheel The steering wheel
        @param collider The collider
        @param ui_pointer The speed pointer
        @param ui_health The health bar
        @param ui_countdown The countdown objects
        @param wheels An optional list of wheels that rotate
        @param overall_scale Not implemented
        @param max_steering_angle The maximum steering angle
        @param wheel_radius The wheel radius in Maya units
        @param mass The mass in kg
        @param windshield_area The windshield in m**2
        """
        super(Vehicle, self).__init__(transform)

        self.name = name

        # Keys
        self.up = up
        self.down = down
        self.left = left
        self.right = right

        # Transforms
        self.front_aim = pm.PyNode(front_aim)
        self.body = pm.PyNode(body)
        self.steering_axis = pm.PyNode(steering_axis)
        self.steering_wheel = pm.PyNode(steering_wheel)
        self.collider = collider
        self.collider.parent = self
        self.ui_pointer = pm.PyNode(ui_pointer)
        self.ui_health = pm.PyNode(ui_health)
        self.ui_countdown = [pm.PyNode(c) for c in ui_countdown]
        self.wheels = [pm.PyNode(w) for w in wheels]
        # Values
        self.overall_scale = overall_scale
        self.max_steering_angle = max_steering_angle
        self.wheel_radius = wheel_radius
        self.mass = mass
        self.windshield_area = windshield_area

        # Variables
        self.throttle_position = 0.0
        self.brake_position = 0.0
        self.steering_angle = 0.0
        self.velocity = 0.0
        self.air_resistance_constant = (0.5 * COEFFICIENT_OF_FRICTION *
                                        self.windshield_area * AIR_DENSITY)
        self.external_resistance_force = 0
        self.damage = 0

        self.body_rotation = 0.0

        self.counters = list()
    # end def __init__

    @property
    def air_resistance_force(self):
        """The air resistance.

        @return A force vector in Newton
        """
        return -(self.air_resistance_constant * self.velocity) * self.velocity
    # end def air_resistance_force

    @property
    def internal_resistance_force(self):
        """The internal resistance of the wheels.

        @return A force vector in Newton
        """
        return -(300 * self.air_resistance_constant) * self.velocity
    # end def internal_resistance_force

    def update_external_resistance_force(self, delta_time):
        """Update external forces from colliders."""
        if not self.colliders:
            if self.external_resistance_force < 10 and self.external_resistance_force > -10:
                self.external_resistance_force = 0
            if self.external_resistance_force > 0:
                self.external_resistance_force = max(-2000, min(self.external_resistance_force - delta_time * 1000, 2000))
            elif self.external_resistance_force < 0:
                self.external_resistance_force = max(-2000, min(self.external_resistance_force + delta_time * 1000, 2000))
            # end if
        # end if
    # end def update_external_resistance_force

    def weight_transfer(self, velocity_diff):
        """Transfer weight to simulate acceleration or decceleration.

        @param velocity_diff The difference in velocity
        """
        if velocity_diff < 0:
            value = -math.sqrt(abs(velocity_diff)) * 8
        else:
            value = math.sqrt(abs(velocity_diff)) * 4
        # end if
        return value
    # end def weight_transfer

    def start(self):
        """Reset the damage bar."""
        self.ui_health.setAttr('sx', self.damage / 100.0)
        self.transform.setAttr('damage', self.damage / 100.0)
    # end def start

    def update(self, delta_time):
        """Calculate forces on the car and determine it's new position."""
        # Deal with user input
        self._user_input(delta_time)

        # Update the external force
        self.update_external_resistance_force(delta_time)

        # Update the velocity
        F = ((10000.0 * (self.throttle_position - self.brake_position))
             + self.air_resistance_force
             + self.internal_resistance_force
             + self.external_resistance_force
             - 2000)
        acceleration = F / float(self.mass)
        prev_velocicty = self.velocity
        self.velocity = max(0, min(self.velocity + acceleration * delta_time, 36))

        # Update the rotation
        adj = pm.datatypes.Vector(0, 0, 1) + pm.datatypes.Vector(0, 0, 1).rotateBy(0, math.radians(self.steering_angle), 0, 0)
        angle = math.degrees(pm.datatypes.Vector.angle(pm.datatypes.Vector(0, 0, 1), adj))
        axis = pm.datatypes.Vector.axis(pm.datatypes.Vector(0, 0, 1), adj)
        sign = 1
        if axis.y < 0:
            sign = -1
        # end if
        self.transform.setAttr('ry', self.transform.getAttr('ry') + (angle * delta_time * sign * (self.velocity / 4.5)))

        # Update the translation of the car
        p = self.position + delta_time * pm.datatypes.Vector(0, 0, self.velocity).rotateBy(self.rotation)
        self.transform.setTranslation(p, ws=True)

        front_p = pm.datatypes.Vector(p) + pm.datatypes.Vector(0, 0, 1).rotateBy(self.rotation)
        self.front_aim.setTranslation(front_p, ws=True)

        # Update the rotation of the steering wheel
        self.steering_wheel.setAttr('ry', self.steering_angle)
        self.steering_axis.setAttr('ry', self.steering_angle)

        # Update the wheel rotation
        for w in self.wheels:
            w.setAttr('rz', w.getAttr('rz') + (self.velocity / self.wheel_radius) * delta_time)
        # end for

        # Update the weight propagation
        self.body.setAttr('rx', self.weight_transfer(prev_velocicty - self.velocity))
        self.ui_pointer.setAttr('ry', (self.velocity) / 0.016666666666666666 / 10)
    # end def update

    def _user_input(self, delta_time):
        """Track user input and update interal values."""
        # Throttle up / down
        if getattr(self.game_engine.input_manager, self.up)[0]:
            self.throttle_position = (min(self.throttle_position + delta_time * 2, 1))
        else:
            self.throttle_position = (max(0, self.throttle_position - delta_time * 4))
        # end if

        # Break up / down
        if getattr(self.game_engine.input_manager, self.down)[0]:
            self.brake_position = (min(self.brake_position + delta_time * 2, 1))
        else:
            self.brake_position = (max(0, self.brake_position - delta_time * 4))
        # end if

        # Turn left / right
        if getattr(self.game_engine.input_manager, self.left)[0]:
            self.steering_angle = max(-self.max_steering_angle, min(self.steering_angle + delta_time * 120, self.max_steering_angle))
        if getattr(self.game_engine.input_manager, self.right)[0]:
            self.steering_angle = max(-self.max_steering_angle, min(self.steering_angle - delta_time * 120, self.max_steering_angle))
        if not getattr(self.game_engine.input_manager, self.left)[0] and not getattr(self.game_engine.input_manager, self.right)[0]:
            if self.steering_angle < 1 and self.steering_angle > -1:
                self.steering_angle = 0
            if self.steering_angle > 0:
                self.steering_angle = max(-self.max_steering_angle, min(self.steering_angle - delta_time * 120, self.max_steering_angle))
            elif self.steering_angle < 0:
                self.steering_angle = max(-self.max_steering_angle, min(self.steering_angle + delta_time * 120, self.max_steering_angle))
            # end if
        # end if
    # end def _user_input

    def on_collide_enter(self, collider, point, amount):
        """Damage the vehicle when it gets hit."""
        self.transform.setTranslation(point, ws=True)
        self.external_resistance_force -= amount * self.velocity
        if self.velocity > 0.25 and isinstance(collider, gameobject.SphereCollider):
            self.damage += amount * 15
            self.ui_health.setAttr('sx', self.damage / 100.0)
            self.transform.setAttr('damage', self.damage / 100.0)
        # end if
    # end def on_collide_enter

    def on_collide(self, collider, point, amount):
        """Keep the vehicle outside the other collider."""
        self.transform.setTranslation(point, ws=True)
    # end def on_collide
# end class Vehicle
