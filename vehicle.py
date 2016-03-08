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
        self.mass = 1500.0
        self.cog = 1.00
        self.wheel_mass = 75.0
        self.wheel_radius = 0.34
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

        self.u = pm.datatypes.Vector(0, 0, 1)
        self.v = pm.datatypes.Vector(0, 0, 0)
        self.a = Vector(0, 0)
        self.wheel_rotation_rate = Vector(0, 0)
        self.usercontrol_rpm = 1000
    # end def __init__

    @property
    def brake_force(self):
        """@todo documentation for brake_force."""
        if self.game_engine.input_manager.Key_Down[0]:
            return pm.datatypes.Vector(-12, 0, 0)
        else:
            return pm.datatypes.Vector(0, 0, 0)
    # end def brake_force

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
    def rpm(self):
        """Rpm of the engine.

        wheel_rotation_rate in rad/s
        """
        rpm = (self.wheel_rotation_rate.length() *
               self.gear_ratio *
               self.differential_ratio *
               60.0) / (2.0 * math.pi)
        return max(1000, min(rpm, 6000))
    # end def rpm

    def engine_force(self, rpm):
        """@todo documentation for engine_force."""
        return ((self.engine.torque(rpm) *
                 self.gear_ratio *
                 self.differential_ratio *
                 self.transmission_efficiency *
                 self.throttle_position) / self.wheel_radius)
    # end def engine_force

    @property
    def traction_force(self):
        """@todo documentation for traction_force."""
        return self.u * self.engine_force(self.usercontrol_rpm)
    # end def traction_force

    @property
    def long_force(self):
        """@todo documentation for long_force."""
        return (self.traction_force +
                self.air_resistance_force +
                self.internal_resistance_force)
    # end def long_force

    @property
    def acceleration(self):
        """@todo documentation for acceleration."""
        return self.long_force / self.mass
    # end def acceleration

    def slip_ratio(self, wheel_rotation_rate, ms):
        """@todo documentation for slip_ratio."""
        if ms == 0:
            return 6
        # end if
        slip_ratio = (((wheel_rotation_rate) - ms) / ms) - 1
        return max(-6, min(slip_ratio, 6))
    # end def slip_ratio

    def update(self, delta_time):
        """Update the vehicle position."""
        # Change the gear
        if self.game_engine.input_manager.Key_1[0]:
            self.gear = 1
        if self.game_engine.input_manager.Key_2[0]:
            self.gear = 2
        if self.game_engine.input_manager.Key_3[0]:
            self.gear = 3

        if self.game_engine.input_manager.Key_Up[0]:
            if self.usercontrol_rpm < 6000:
                self.usercontrol_rpm += 600 * delta_time
            self.throttle_position = 1
        else:
            if self.usercontrol_rpm > 1000:
                self.usercontrol_rpm -= 600 * delta_time
            self.throttle_position = 0

        if self.game_engine.input_manager.Key_Down[0]:
            self.throttle_position = 0

        ang_wheel = self.usercontrol_rpm / ((self.gear_ratio * self.differential_ratio * 60) / (2.0 * math.pi))
        ms = self.v.length() * 0.277777777778

        slip_ratio = self.slip_ratio(ang_wheel, ms)
        wheel_traction_force = pm.datatypes.Vector(0, 0, slip_ratio * self.weight_transfer[1])
        if wheel_traction_force.length() > self.weight_transfer[1]:
            wheel_traction_force = pm.datatypes.Vector(0, 0, self.weight_transfer[1])
        total_force = (wheel_traction_force + self.air_resistance_force + self.internal_resistance_force + self.brake_force)

        acceleration = total_force / self.mass
        if self.v.x >= 0:
            self.v += delta_time * acceleration
        else:
            self.v = pm.datatypes.Vector(0, 0, 0)
        # end if

        p = self.position + delta_time * self.v
        self.transform.setTranslation(p, ws=True)


        print(wheel_traction_force)
    # end def update
# end class Vehicle
