"""
http://stephenmason.com/cars/rotationalinertia.html

"""
import math
from collections import OrderedDict


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


class Car(object):

    """@todo documentation for Car."""

    def __init__(self):
        """Initialize Car."""
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
        self._wheel_inertia = self.wheel_mass * self.wheel_radius**2
        self.air_resistance_constant = (0.5 * COEFFICIENT_OF_FRICTION *
                                        self.windshield_area * AIR_DENSITY)

        self.throttle_position = 1
        self.brake_position = 0

        self.engine = Engine()

        self.forward_vector = Vector(1, 0)
        self.v = Vector(0, 0)
        self.a = Vector(0, 0)
        self.wheel_rotation_rate = Vector(0, 0)
        self.usercontrol_rpm = 1000

        self.acceleration = Vector(0, 0)
        self.axle_rot = 0
        self.ang_wheel = 0
    # end def __init__

    @property
    def mass(self):
        """@todo documentation for mass"""
        return (self._mass * (1 + 0.04 + 0.0025 * (self.differential_ratio * self.gear_ratio)**2))
    # end def mass

    @property
    def wheel_inertia(self):
        """@todo documentation for wheel_inertia"""
        return self._wheel_inertia
        return (self.wheel_mass * (1 + 0.04 + 0.0025 * (self.differential_ratio * self.gear_ratio)**2)) * self.wheel_radius**2 * 100
    # end def wheel_inertia

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
        return self.forward_vector * self.engine_force(self.usercontrol_rpm)
    # end def traction_force

    @property
    def long_force(self):
        """@todo documentation for long_force."""
        return (self.traction_force +
                self.air_resistance_force +
                self.internal_resistance_force)
    # end def long_force

    # @property
    # def acceleration(self):
    #     """@todo documentation for acceleration."""
    #     return self.long_force / self.mass
    # # end def acceleration

    def slip_ratio(self, wheel_rotation_rate, ms):
        """@todo documentation for slip_ratio."""
        if ms == 0:
            return 6
        # end if
        slip_ratio = (((wheel_rotation_rate) - ms) / ms)
        return max(-6, min(slip_ratio, 6))
    # end def slip_ratio

    # @property
    # def wheel_traction_force(self):
    #     """@todo documentation for wheel_traction_force."""
    #     # wheel_traction_force = Vector(self.slip_ratio * self.weight_transfer[1], 0)
    #     # if wheel_traction_force.length() > self.weight_transfer[1]:
    #     #     return Vector(self.weight_transfer[1], 0)
    #     # elif wheel_traction_force.length() < -self.weight_transfer[1]:
    #     #     return Vector(-self.weight_transfer[1], 0)
    #     # else:
    #     #     return wheel_traction_force
    #     # # end if
    #     return Vector(ADHESION_COEFFICIENT * self.weight_transfer[1], 0)
    # # end def wheel_traction_force

    # @property
    # def max_wheel_traction_force(self):
    #     """@todo documentation for max_wheel_traction_force."""
    #     return Vector(ADHESION_COEFFICIENT * self.weight_transfer[1], 0)
    # # end def max_wheel_traction_force

    # @property
    # def total_torque(self):
    #     """@todo documentation for total_torque."""
    #     return (self.long_force * self.wheel_radius -
    #             self.wheel_traction_force * self.wheel_radius)
    # # end def total_torque

    # @property
    # def angular_acceleration(self):
    #     """@todo documentation for angular_acceleration."""
    #     return Vector((self.engine.torque(self.rpm) / self.wheel_inertia), 0) * (1/self.gear_ratio)
    # # end def angular_acceleration

    def update(self, delta_time=1):
        """@todo documentation for update."""
        ms = self.v.length() * 0.277777777778
        slip_ratio = self.slip_ratio(self.axle_rot / 60, ms)
        wheel_traction_force = Vector(slip_ratio * self.weight_transfer[1], 0)
        if wheel_traction_force.length() > self.weight_transfer[1]:
            wheel_traction_force = Vector(self.weight_transfer[1], 0)
        wheel_traction_force = wheel_traction_force * ADHESION_COEFFICIENT

        # Update the speed
        traction_torque = wheel_traction_force.x * self.wheel_radius

        total_force = (wheel_traction_force +
                       self.air_resistance_force +
                       self.internal_resistance_force)

        self.acceleration = total_force / self.mass
        self.v += delta_time * self.acceleration

        # Update the wheel rotation
        drive_torque = (self.engine.torque(self.usercontrol_rpm) *
                        self.gear_ratio *
                        self.differential_ratio *
                        self.transmission_efficiency *
                        self.throttle_position)
        total_torque = (drive_torque * self.wheel_radius) - traction_torque
        axle_acc = (total_torque / self.wheel_inertia)
        self.axle_rot = self.axle_rot + delta_time * axle_acc

        max_rot = ((6000 / (self.gear_ratio * self.differential_ratio)))
        if self.axle_rot > max_rot:
            self.axle_rot = max_rot
        if self.axle_rot < 0:
            self.axle_rot = 0



        # ang_wheel = self.usercontrol_rpm / ((self.gear_ratio * self.differential_ratio * 60) / (2.0 * math.pi))
        # ms = self.v.length() * 0.277777777778

        # slip_ratio = self.slip_ratio(self.axle_rot, ms)
        # wheel_traction_force = Vector(slip_ratio * self.weight_transfer[1], 0)
        # if wheel_traction_force.length() > self.weight_transfer[1]:
        #     wheel_traction_force = Vector(self.weight_transfer[1], 0)
        # wheel_traction_force = wheel_traction_force * ADHESION_COEFFICIENT


        # Axle acceleration
        # tractive_effort = self.weight_transfer[1] * ADHESION_COEFFICIENT * self.wheel_radius
        # traction_torque = wheel_traction_force.x * self.wheel_radius
        # drive_torque = (self.engine.torque(self.usercontrol_rpm) *
        #                 self.gear_ratio *
        #                 self.differential_ratio *
        #                 self.transmission_efficiency *
        #                 self.throttle_position)
        # drive_torque = self.traction_force
        # total_torque = drive_torque * self.wheel_radius - traction_torque
        # axle_acc = (wheel_traction_force.x * self.wheel_radius) / self.wheel_inertia

        # self.axle_rot = self.axle_rot + delta_time * axle_acc

        # Calculate the rpm
        self.usercontrol_rpm = max(1000, min((self.axle_rot * self.gear_ratio * self.differential_ratio * 60) / (2 * math.pi), 6000))
        # if rpm > 1000 and rpm < 6000:
        #     self.usercontrol_rpm = rpm
        # if rpm >

        # ang_wheel = self.usercontrol_rpm / ((self.gear_ratio * self.differential_ratio * 60) / (2.0 * math.pi))

        max_kmh = ((6000 / (self.gear_ratio * self.differential_ratio)) * 2 * math.pi * self.wheel_radius) / (1000 / 60)

        print(max_rot, self.axle_rot, self.v.x)

    # end def update
# end class Car



###############################################################################
###############################################################################
###############################################################################


car = Car()
car.gear = 1
# car.usercontrol_rpm = 1000

for i in range(100):
    car.update()

    # if car.usercontrol_rpm > 5000 and car.gear < 6:
    #     print('GEAR SHIFTING TO: %s' % (car.gear + 1))
    #     car.gear += 1
    continue

    if i == 20:
        print('GEAR SHIFT')
        # car.usercontrol_rpm = 4000
        car.gear = 1
    continue
    if i == 40:
        print('GEAR SHIFT')
        # car.usercontrol_rpm = 1000
        car.gear = 3
        car.throttle_position = 1
        # car.usercontrol_rpm = 1600
    if i == 60:
        print('GEAR SHIFT')
        car.gear = 4
        car.throttle_position = 1
    # print(car.wheel_rotation_rate.length(), (car.v.length() * 1000 / 3600.0) / car.wheel_radius, car.slip_ratio)
# end for





