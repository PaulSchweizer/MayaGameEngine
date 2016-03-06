import math
from collections import OrderedDict


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
wheel_inertia = wheel_mass * wheel_radius**2
adhesion_coefficient = 0.7

# User input
throttle_position = 1
brake_position = 0

# Dynamic Attributes
# forward_vector = pm.datatypes.Vector(0, 0, 1)
# acceleration = pm.datatypes.Vector(0, 0, 0)
# velocity = pm.datatypes.Vector(0, 0, 0)
# rear_wheel_angular_velocity = pm.datatypes.Vector(0, 0, 0)


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

    diff = rpm - list(torque_curve)[0]
    start_point = list(torque_curve)[0]
    end_point = list(torque_curve)[-1]

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
        end_point = list(torque_curve)[list(torque_curve).index(start_point) + 1]
    else:
        end_point = list(torque_curve)[list(torque_curve).index(start_point) - 1]
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
    rpm = (wheel_rotation_rate * gear_ratio * differential_ratio * 60.0) / (2.0 * math.pi)
    if rpm > 6600:
        return 6600
    elif rpm < 0:
        return 0
    else:
        return rpm
# end def rpm


def from_ms_to_rads(ms):
    """Convert m/s to rad/s."""
    return ms / wheel_radius
# end def from_ms_to_rads


def drive_force(engine_torque):
    """The force that drives the car forward, produced by the engine.

    @return A torque
    """
    return (engine_torque * gear_ratio * differential_ratio * transmission_efficiency * throttle_position) / wheel_radius
# end def drive_force


def slip_ratio(angular_velocity, velocity):
    """The slip ratio.

    angular_velocity in rad/s
    wheel_radius in m
    speed in ms/s
    """
    if velocity == 0:
        return 100.0
    return (((angular_velocity * wheel_radius) - velocity) / velocity) * 100


    # if velocity == 0:
    #     return -100
    # # end if
    # slip_ratio = (((angular_velocity * wheel_radius) / velocity) - 1) * 100
    # if slip_ratio > 100:
    #     return 100
    # elif slip_ratio < -100:
    #     return -100
    # else:
    #     return slip_ratio
    # # end if
# end def slip_ratio


def wheel_traction_force(slip_ratio):
    if slip_ratio > 6:
        return traction_constant * 6
    if slip_ratio < -6:
        return traction_constant * -6
    return traction_constant * slip_ratio
# end def wheel_traction_force


def traction_torque(wheel_traction_force):
    return wheel_traction_force * wheel_radius
# end def traction_torque


def rpm_to_wheel_velocity(rpm):
    """"""
    return rpm / ((gear_ratio * differential_ratio * 60) / (2.0 * math.pi))
# end def rpm_to_wheel_velocity


def traction_force(drive_force, air_resistance_force, internal_resistance_force):
    """@todo documentation for traction_force"""
    return drive_force + air_resistance_force + internal_resistance_force
# end def traction_force


print('\n############')
# _rpm = 1000
# velocity = 0
# angular_velocity = rpm_to_wheel_velocity(_rpm)
# angular_velocity_incr = 0
# acceleration = 0
# for i in range(100):
#     # angular_velocity = rpm_to_wheel_velocity(_rpm)
#     slip = slip_ratio(angular_velocity_incr, velocity * (0.0002777777777777778 / 0.001))
#     _wheel_traction_force = wheel_traction_force(slip)

#     _air_resistance_force = air_resistance_force(velocity)
#     _internal_resistance_force = internal_resistance_force(velocity)
#     _drive_force = drive_force(engine_torque(_rpm))
#     _traction_force = traction_force(_drive_force, _air_resistance_force, _internal_resistance_force)

#     weight_front, weight_rear = weight_transfer(acceleration)
#     if weight_rear < _traction_force:
#         _traction_force = weight_rear
#     # end if
#     acceleration = _traction_force / mass
#     velocity = velocity + 1 * acceleration


#     _total_torque = (_drive_force * wheel_radius) - 2 * traction_torque(_wheel_traction_force)

#     angular_acceleration = _total_torque / (wheel_inertia * 9.81)
#     angular_velocity_incr = angular_velocity_incr + 1 * angular_acceleration

#     _rpm = rpm(angular_velocity_incr)


###############################################################################
###############################################################################
###############################################################################


gear_ratio = 1
velocity = 0
_rpm = 1000
velocity_rear = rpm_to_wheel_velocity(_rpm)
for i in range(1):
    # Calculate values
    _slip_ratio = slip_ratio(velocity_rear, velocity * (0.0002777777777777778 / 0.001))
    _drive_force = drive_force(engine_torque(_rpm))
    _air_resistance_force = air_resistance_force(velocity)
    _internal_resistance_force = internal_resistance_force(velocity)

    # Update the velocity of the car
    _traction_force = traction_force(_drive_force, _air_resistance_force, _internal_resistance_force)
    acceleration = _traction_force / mass
    velocity = velocity + 1 * acceleration

    # Update the rear velocity
    _wheel_traction_force = wheel_traction_force(_slip_ratio)
    _total_torque = (_drive_force * wheel_radius) - 2 * traction_torque(_wheel_traction_force)
    angular_acceleration = _total_torque / wheel_inertia
    angular_acceleration = acceleration / wheel_inertia
    velocity_rear += 1 * angular_acceleration

    # Update the rpm
    _rpm = rpm(velocity_rear)

###############################################################################

_rpm = 1000
kmh = rpm_to_wheel_velocity(_rpm)
ms = kmh * 1000 / 3600
rads = ms / wheel_radius
actual_ms = ms
max_force = adhesion_coefficient * 7000

slip = slip_ratio(rads, actual_ms)
traction_torque = wheel_traction_force(slip) * wheel_radius
_drive_force = drive_force(engine_torque(_rpm))
if _drive_force > max_force:
    _drive_force = max_force
drive_torque = _drive_force * wheel_radius
total_torque = drive_torque + 2 * traction_torque
angular_acceleration = total_torque / wheel_inertia

print(angular_acceleration)

