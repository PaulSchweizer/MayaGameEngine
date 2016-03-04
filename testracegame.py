import math
from collections import OrderedDict
import pymel.core as pm


# Car Attributes
length = 2.5
mass = 1500.0
cog = 1.00
wheel_mass = 75.0
wheel_radius = 0.34
windshield_area = 2.2
gear_ratio = [2.90, 2.66, 1.78, 1.30, 1.0, 0.74, 0.5][1]
differential_ratio = 3.42
transmission_efficiency = 0.7

# constants
coefficient_of_friction = 0.3
air_density = 1.29
air_resistance_constant = 0.5 * coefficient_of_friction * windshield_area * air_density
traction_constant = 1000.0
wheel_inertia = wheel_mass * wheel_radius**2 * 2

# User input
throttle_position = 1
brake_position = 0

# Dynamic Attributes
forward_vector = pm.datatypes.Vector(0, 0, 1)
acceleration = pm.datatypes.Vector(0, 0, 0)
velocity = pm.datatypes.Vector(0, 0, 0)
rear_wheel_angular_velocity = pm.datatypes.Vector(0, 0, 0)


def air_resistance_force(velocity):
    """The air resistance.

    @return A force vector in Newton
    """
    return -(air_resistance_constant * velocity * velocity)
# end def air_resistance_force


def internal_resistance_force(velocity):
    """The internal resistance of the wheels.

    @return A force vector in Newton
    """
    return -(30 * air_resistance_constant * velocity)
# end def internal_resistance_force


def weight_transfer(acceleration):
    """@return The weight forces for the front and rear axle in Newton.

    Acceleration in m/s**2
    length in m
    mass in kg
    cog in m
    """
    c = length / 2.0
    b = length / 2.0
    weight_front = (c/length) * mass * 9.81 - (cog/length) * mass * acceleration
    weight_rear = (b/length) * mass * 9.81 + (cog/length) * mass * acceleration
    return weight_front, weight_rear
# end def weight_transfer


def engine_torque(rpm=1000):
    """The maximum engine torque at the given rpm."""
    torque_curve = OrderedDict()
    torque_curve[1000] = 393
    torque_curve[2500] = 448
    torque_curve[4400] = 475
    torque_curve[5000] = 488
    torque_curve[6000] = 386

    diff = rpm - torque_curve.keys()[0]
    start_point = torque_curve.keys()[0]
    end_point = torque_curve.keys()[-1]

    if rpm >= end_point:
        return torque_curve[end_point]
    if rpm <= start_point:
        return torque_curve[start_point]

    for point, value in torque_curve.items():
        if abs(point - rpm) <= diff:
            diff = abs(point - rpm)
            start_point = point
        # end if
    # end for

    if rpm > start_point:
        end_point = torque_curve.keys()[torque_curve.keys().index(start_point) + 1]
    else:
        end_point = torque_curve.keys()[torque_curve.keys().index(start_point) - 1]
    x0 = start_point
    x1 = end_point

    y0 = torque_curve[start_point]
    y1 = torque_curve[end_point]

    return y0 + (y1 - y0) * ((rpm - x0) / float(x1 - x0))
# end def engine_torque


def rpm(wheel_rotation_rate):
    """Rpm of the engine.

    wheel_rotation_rate in rad/s
    """
    return (wheel_rotation_rate * gear_ratio * differential_ratio * 60.0) / (2.0 * math.pi)
# end def rpm


def from_ms_to_rads(ms):
    """Convert m/s to rad/s."""
    return ms / wheel_radius
# end def from_ms_to_rads


def drive_force(engine_torque, throttle_position=1):
    """The force that drives the car forward, produced by the engine.

    @return A torque
    """
    return engine_torque * gear_ratio * differential_ratio * transmission_efficiency * throttle_position / wheel_radius
# end def drive_force


def slip_ratio(angular_velocity, speed):
    """The slip ratio.

    angular_velocity in rad/s
    wheel_radius in m
    speed in ms/s
    """
    if speed == 0:
        return 0.0
    # end if
    return ((angular_velocity * wheel_radius) - speed) / speed
# end def slip_ratio


def wheel_traction_force(slip_ratio):
    if slip_ratio > 6:
        return traction_constant * 6
    return traction_constant * slip_ratio
# end def wheel_traction_force


def traction_torque(wheel_traction_force):
    return wheel_traction_force * wheel_radius
# end def traction_torque


def rpm_to_wheel_velocity(rpm):
    """"""
    return rpm * (2.0 * math.pi) / (gear_ratio * differential_ratio * 60)
# end def rpm_to_wheel_velocity


def traction_force(drive_force, air_resistance_force, internal_resistance_force):
    """@todo documentation for traction_force"""
    return drive_force + air_resistance_force + internal_resistance_force
# end def traction_force


print '############'
_rpm = 1000
velocity = 0
angular_velocity = rpm_to_wheel_velocity(_rpm)
angular_velocity_incr = 0
ms = velocity * (0.0002777777777777778 / 0.001)
acceleration = 0
for i in range(100):
    angular_velocity = rpm_to_wheel_velocity(_rpm)
    slip = slip_ratio(angular_velocity, ms)
    _wheel_traction_force = wheel_traction_force(slip)

    _air_resistance_force = air_resistance_force(velocity)
    _internal_resistance_force = internal_resistance_force(velocity)
    _drive_force = drive_force(engine_torque(_rpm))
    _traction_force = traction_force(_drive_force, _air_resistance_force, _internal_resistance_force)

    weight_front, weight_rear = weight_transfer(acceleration)
    if weight_rear < _traction_force:
        _traction_force = weight_rear
    # end if
    acceleration = _traction_force / mass
    velocity = velocity + 1 * acceleration

    ms = velocity * (0.0002777777777777778 / 0.001)
    wheel_rotation_rate = ms
    _rpm = rpm(ms)

    _total_torque = _traction_force * wheel_radius + 2*traction_torque(_wheel_traction_force)

    angular_acceleration = _total_torque / wheel_inertia
    angular_velocity_incr += angular_acceleration



    print angular_velocity_incr, angular_velocity
