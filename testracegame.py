import math
from collections import OrderedDict
import pymel.core as pm


# Car Attributes
length = 2.5
mass = 1500.0
cog = 1.00
wheel_mass = 75.0
wheel_radius = 0.33
windshield_area = 2.2
gear_ratio = [2.90, 2.66, 1.78, 1.30, 1.0, 0.74, 0.5][1]
differential_ratio = 3.42
transmission_efficiency = 0.7

# User input
throttle_position = 1
brake_position = 0

# Dynamic Attributes
forward_vector = pm.datatypes.Vector(0, 0, 1)
acceleration = pm.datatypes.Vector(0, 0, 0)
velocity = pm.datatypes.Vector(0, 0, 0)
rear_wheel_angular_velocity = pm.datatypes.Vector(0, 0, 0)


def weight_transfer(length, mass, cog, acceleration):
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


def rpm(wheel_rotation_rate, gear_ratio, differential_ratio):
    """Rpm of the engine.

    wheel_rotation_rate in rad/s
    """
    return (wheel_rotation_rate * gear_ratio * differential_ratio * 60.0) / (2.0 * math.pi)
# end def rpm


def from_ms_to_rads(ms, wheel_radius):
    """Convert m/s to rad/s."""
    return ms / wheel_radius
# end def from_ms_to_rads


print rpm(from_ms_to_rads(5.6, wheel_radius), gear_ratio, differential_ratio)
