import math
from collections import OrderedDict
import pymel.core as pm

from PySide import QtCore

import gameengine
reload(gameengine)


# CONSTANTS
COEFFICIENT_OF_FRICTION = 0.3
AIR_DENSITY = 1.29
TRACTION_CONSTANT = 1000.0
ADHESION_COEFFICIENT = 0.7
GRAVITY = 9.81


class Vector(object):

    """docstring for Vector"""

    def __init__(self, x=0, y=0):
        """"""
        super(Vector, self).__init__()
        self.x = x
        self.y = y
    # end def __init__

    def __str__(self):
        """@todo documentation for __str__."""
        return '(%s, %s)' % (self.x, self.y)
    # end def __str__

    def __add__(self, other):
        """@todo documentation for __add__."""
        if isinstance(other, Vector):
            return Vector(self.x + other.x, self.y + other.y)
        # end if
    # end def __add__

    def __sub__(self, other):
        """@todo documentation for __sub__."""
        if isinstance(other, Vector):
            return Vector(self.x - other.x, self.y - other.y)
        # end if
    # end def __add__

    def __mul__(self, other):
        """@todo documentation for __mul__(self, other)."""
        return Vector(self.x * other, self.y * other)
    # end def __mul__

    def __div__(self, other):
        """@todo documentation for __mul__(self, other)."""
        return Vector(self.x / other, self.y / other)
    # end def __div__

    def __floordiv__(self, other):
        """@todo documentation for __mul__(self, other)."""
        return Vector(self.x / other, self.y / other)
    # end def __floordiv__

    def __truediv__(self, other):
        """@todo documentation for __mul__(self, other)."""
        return Vector(self.x / other, self.y / other)
    # end def __truediv__

    def __radd__(self, other):
        """@todo documentation for __radd__."""
        return self.__add__(other)
    # end def __radd__

    def __rsub__(self, other):
        """@todo documentation for __rsub__."""
        return self.__sub__(other)
    # end def __radd__

    def __rmul__(self, other):
        """@todo documentation for __mul__(self, other)."""
        return self.__mul__(other)
    # end def __rmul__

    def __rdiv__(self, other):
        """@todo documentation for __mul__(self, other)."""
        return self.__div__(other)
    # end def __rdiv__

    def __rfloordiv__(self, other):
        """@todo documentation for __mul__(self, other)."""
        return self.__floordiv__(other)
    # end def __rfloordiv__

    def __rtruediv__(self, other):
        """@todo documentation for __mul__(self, other)."""
        return self.__truediv__(other)
    # end def __rtruediv__

    def length(self):
        """@todo documentation for length."""
        return math.sqrt(self.x**2 + self.y**2)
    # end def length
# end class Vector


class Engine(object):

    """@todo documentation for Engine."""

    def __init__(self):
        """Initialize Engine."""
        self.torque_curve = OrderedDict()
        self.torque_curve[1000] = 393
        self.torque_curve[2500] = 448
        self.torque_curve[4400] = 475
        self.torque_curve[5000] = 488
        self.torque_curve[6000] = 386
    # end def __init__

    def torque(self, rpm=1000):
        """The maximum engine torque at the given rpm."""
        diff = rpm - list(self.torque_curve)[0]
        start_point = list(self.torque_curve)[0]
        end_point = list(self.torque_curve)[-1]

        if rpm >= end_point:
            return self.torque_curve[end_point]
        if rpm <= start_point:
            return self.torque_curve[start_point]

        for point, value in self.torque_curve.items():
            if abs(point - rpm) <= diff:
                diff = abs(point - rpm)
                start_point = point
            # end if
        # end for

        if rpm > start_point:
            end_point = list(self.torque_curve)[list(self.torque_curve).index(start_point) + 1]
        else:
            end_point = list(self.torque_curve)[list(self.torque_curve).index(start_point) - 1]
        x0 = start_point
        x1 = end_point

        y0 = self.torque_curve[start_point]
        y1 = self.torque_curve[end_point]

        return y0 + (y1 - y0) * ((rpm - x0) / float(x1 - x0))
    # end def torque
# end class Engine


class Vehicle(gameengine.GameObject):

    """docstring for Vehicle"""

    def __init__(self, transform):
        """"""
        super(Vehicle, self).__init__(transform)

        self.transform.setTranslation([0, 0, 0])

        self.length = 2.5
        self._mass = 1500.0
        self.cog = 1.00
        self.wheel_mass = 75.0
        self.wheel_radius = 0.33
        self.windshield_area = 2.2
        self.gear = 1
        self._gear_ratio = [2.90, 2.66, 1.78, 1.30, 1.0, 0.74, 0.5]
        self.differential_ratio = 3.42
        self.transmission_efficiency = 0.7
        self.wheel_inertia = self.wheel_mass * self.wheel_radius**2
        self.air_resistance_constant = (0.5 * COEFFICIENT_OF_FRICTION *
                                        self.windshield_area * AIR_DENSITY)

        self.throttle_position = 0
        self.brake_position = 0

        self.engine = Engine()

        self.v = Vector(0, 0)
        self.wheel_rotation_rate = Vector(0, 0)
        self.rpm = 1000

        self.acceleration = Vector(0, 0)
        self.wheel_angular_velocity = 0
        self.ang_wheel = 0
    # end def __init__

    @property
    def mass(self):
        """@todo documentation for mass"""
        return (self._mass * (1 + 0.04 + 0.0025 * (self.differential_ratio * self.gear_ratio)**2))
    # end def mass

    @property
    def gear_ratio(self):
        """@todo documentation for gear_ratio."""
        return self._gear_ratio[self.gear]
    # end def gear_ratio

    @property
    def air_resistance_force(self):
        """The air resistance.

        @return A force vector in Newton
        """
        return -(self.air_resistance_constant * self.v.length()) * self.v
    # end def air_resistance_force

    @property
    def internal_resistance_force(self):
        """The internal resistance of the wheels.

        @return A force vector in Newton
        """
        return -(30 * self.air_resistance_constant) * self.v
    # end def internal_resistance_force

    @property
    def weight_transfer(self):
        """@return The weight forces for the front and rear axle in Newton.

        Acceleration in m/s**2
        length in m
        mass in kg
        cog in m
        """
        c = self.length / 2.0
        b = self.length / 2.0
        weight_front = ((c/self.length) *
                        self.mass *
                        GRAVITY - (self.cog/self.length) *
                        self.mass *
                        self.acceleration.length())
        weight_rear = ((b/self.length) *
                       self.mass *
                       GRAVITY + (self.cog/self.length) *
                       self.mass *
                       self.acceleration.length())
        return weight_front, weight_rear
    # end def weight_transfer

    @property
    def ms(self):
        """@todo documentation for ms."""
        return self.v.length() * 0.277777777778
    # end def ms

    def drive_torque(self, rpm):
        """@todo documentation for drive_torque."""
        return (self.engine.torque(rpm) *
                self.gear_ratio *
                self.differential_ratio *
                self.transmission_efficiency *
                self.throttle_position)
    # end def drive_torque

    def slip_ratio(self, wheel_rotation_rate, ms):
        """@todo documentation for slip_ratio."""
        if ms == 0 and self.throttle_position == 0:
            return 0.0
        elif ms == 0 and self.throttle_position != 0:
            return self.weight_transfer[1] / 1000.0
        elif wheel_rotation_rate == 0 and self.throttle_position == 0:
            return 0.0
        elif wheel_rotation_rate == 0 and self.throttle_position != 0:
            return self.weight_transfer[1] / 1000.0
        # end if
        slip_ratio = (((wheel_rotation_rate) - ms) / ms)
        return max(-self.weight_transfer[1] / 1000.0, min(slip_ratio, self.weight_transfer[1] / 1000.0))
    # end def slip_ratio

    @property
    def max_angular_velocity(self):
        """@todo documentation for max_angular_velocity."""
        return (6000 / self.gear_ratio / self.differential_ratio / 60)
    # end def max_angular_velocity

    def update(self, delta_time):
        """"""
        #### Throttle up / down
        if self.game_engine.input_manager.Key_Up[1]:
            self.throttle_position = (min(self.throttle_position + delta_time / 1.5, 1))
        else:
            self.throttle_position = (max(0, self.throttle_position - delta_time / 1.5))
        # end if

        #### The drive logic
        drive_torque = self.drive_torque(self.rpm)
        angular_acceleration = drive_torque / self.wheel_inertia / 60
        self.wheel_angular_velocity += angular_acceleration * delta_time
        self.wheel_angular_velocity = max(0, min(self.wheel_angular_velocity, self.max_angular_velocity))
        slip_ratio = self.slip_ratio(self.wheel_angular_velocity, self.ms)
        f_long = Vector(1100 * slip_ratio, 0)
        traction_force = (f_long.x +
                          self.air_resistance_force.x +
                          self.internal_resistance_force.x)
        acceleration = traction_force / self.mass
        self.v.x += acceleration * delta_time
        self.rpm = self.wheel_angular_velocity * self.gear_ratio * self.differential_ratio * 60 / 2 * math.pi * self.transmission_efficiency

        p = self.position + delta_time * pm.datatypes.Vector(0, 0, self.v.x)
        self.transform.setTranslation(p, ws=True)
    # end def update

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
        if event.key() == QtCore.Qt.Key_1:
            self.gear = 1
        elif event.key() == QtCore.Qt.Key_2:
            self.gear = 2
        elif event.key() == QtCore.Qt.Key_3:
            self.gear = 3
        elif event.key() == QtCore.Qt.Key_4:
            self.gear = 4
        elif event.key() == QtCore.Qt.Key_5:
            self.gear = 5
        elif event.key() == QtCore.Qt.Key_6:
            self.gear = 6
        # end if
    # end def key_release_event
# end class Vehicle
