import math
from collections import OrderedDict
import pymel.core as pm

from rnkQtImportWrapper import QtCore

from rnkRig.animation.mayagame import gameengine
reload(gameengine)


class Vehicle(gameengine.GameObject):

    """docstring for Vehicle"""

    def __init__(self, transform):
        """"""
        super(Vehicle, self).__init__(transform)


        self.transform.setTranslation([0, 0, 0])

        # Constant attributes
        # lengths in m, mass in kg, area in m**2
        self.length = 2.5
        self.cog = 1.00
        self.mass = 1500.0
        self.wheel_mass = 75.0
        self.wheel_radius = 0.33
        self.windshield_area = 2.2
        self.gear_ratios = [2.90, 2.66, 1.78, 1.30, 1.0, 0.74, 0.5]
        self.differential_ratio = 3.42
        self.transmission_efficiency = 0.7

        # chaning attributes
        self.current_rpm = 0.0
        self.gear = 1
        self.velocity = pm.datatypes.Vector(0, 0, 1)
        self.angular_acceleration = pm.datatypes.Vector(0, 0, 0)
        # self.current_torque = pm.datatypes.Vector(0, 0, 0)


        ###### SAVED ATTRS
        self.previous_acceleration = pm.datatypes.Vector(0, 0, 0)
        self.previous_velocity = 0.0


        ### YET ANOTHER NEW ATTEMPT
        self.wheel_rotation_rate

    # end def __init__

    # def update(self, delta_time):
    #     """Update the vehicle position."""
    #     # 1. TOTAL TORQUE
    #     # total_torque = self.drive_torque() + traction_torque + brake_torque

    #     # Change the gear
    #     # if self.game_engine.input_manager.Key_1[0]:
    #     #     self.gear = 1
    #     # if self.game_engine.input_manager.Key_2[0]:
    #     #     self.gear = 2
    #     # if self.game_engine.input_manager.Key_3[0]:
    #     #     self.gear = 3

    #     # rear_wheel_inertia = (self.wheel_mass * self.wheel_radius**2) / 2.0 * 2


    #     # total_torque = self.drive_torque() + self.traction_torque()

    #     # self.angular_acceleration = total_torque / rear_wheel_inertia

    #     # self.velocity = self.velocity + delta_time * self.angular_acceleration

    #     # print self.rpm()

    #     # slip = (self.angular_acceleration * self.wheel_radius - self.velocity) / self.velocity.length()

    #     # f_long = self.forward_vector * self.mass / 2 * 9.8
    #     # p = self.position + delta_time * self.velocity
    #     # self.transform.setTranslation(p, ws=True)


    #     # Update the acceleration
    #     self.previous_acceleration = self.acceleration()
    #     self.previous_velocity = self.velocity_ms()

    #     print self.velocity_kmh(self.previous_velocity)
    # # end def update

    def speed(self):
        """Speed is in km/h"""
        return self.velocity.length()
    # end def speed

    def throttle_position(self):
        """@todo documentation for throttle_position"""
        return 1
    # end def throttle_position

    # def traction_torque(self):
    #     """@todo documentation for traction_torque"""
    #     return (self.air_resistance_force() + self.internal_resistance_force()) * self.wheel_radius
    # # end def traction_torque


    ######################################################################################################################
    #### NEW ###########################################################
    ######################################################################################################################

    def update(self, delta_time):
        """Update the vehicle position."""
        self.previous_acceleration = self.acceleration()
    # end def update

    def engine_torque(self, rpm=1000):
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

    def drive_force(self):
        """The force that drives the car forward, produced by the engine.

        @return A force vector in Newton
        """
        drive_force = (self.forward_vector
                       * self.engine_torque(self.rpm())
                       * self.gear_ratios[self.gear]
                       * self.differential_ratio
                       * self.transmission_efficiency
                       / self.wheel_radius)
        return drive_force
        max_force = self.maximum_drive_force()
        if drive_force < max_force:
            return drive_force
        else:
            return max_force
        # end if
    # end def drive_force

    def rpm(self):
        """@todo documentation for rpm"""
        wheel_rotation_rate = (self.previous_acceleration.length() * 1000 / 3600.0) / self.wheel_radius
        rpm = (wheel_rotation_rate * self.gear_ratios[self.gear] * self.differential_ratio * 60) / (2 * math.pi)
        if rpm < 10:
            return 10
        # end if
        if rpm > 6000:
            return 6000
        return rpm
    # end def rpm

    def maximum_drive_force(self):
        """@return Force in Newton"""
        # return (self.mass / 2) * 9.8
        return self.weight_transfer()[1]
    # end def maximum_drive_force

    def acceleration(self):
        """@return Acceleration in m/s**2"""
        return (self.drive_force() + self.air_resistance_force() + self.internal_resistance_force()) / self.mass
    # end def acceleration

    def air_resistance_force(self):
        """The air resistance.

        @return A force vector in Newton
        """
        coefficient_of_friction = 0.3
        air_density = 1.29
        return -(0.5 * coefficient_of_friction * self.windshield_area * air_density * self.velocity_ms()**2) * self.forward_vector
    # end def air_resistance_force

    def internal_resistance_force(self):
        """The internal resistance of the wheels.

        @return A force vector in Newton
        """
        return 30 * self.air_resistance_force()
    # end def internal_resistance_force

    def weight_transfer(self):
        """@return The weight forces for the front and rear axle in Newton."""
        c = self.length / 2.0
        b = self.length / 2.0
        weight_front = (c/self.length)*self.mass*9.8 - (self.cog/self.length)*self.mass*self.previous_acceleration
        weight_rear = (b/self.length)*self.mass*9.8 + (self.cog/self.length)*self.mass*self.previous_acceleration
        return weight_front, weight_rear
    # end def weight_transfer

    def velocity_ms(self):
        """@todo documentation for velocity_ms"""
        torque_on_rear_axle = v.gear_ratios[v.gear] * v.differential_ratio
        ## Distance per second
        revolution_distance = 2 * math.pi * v.wheel_radius
        return self.rpm() / torque_on_rear_axle / 60.0 * revolution_distance
    # end def velocity_ms

    def velocity_kmh(self, velocity_in_ms):
        """@todo documentation for velocity_kmh"""
        return 0.001 * velocity_in_ms / 0.0002777777777777778
    # end def velocity_kmh

    def slip_ratio(self):
        """@todo documentation for slip_ratio"""
        d = 0.3
        d0 = 0.2
        D = 0.4
        B = 12
        E = 0.25
        Rc = self.wheel_radius - d0 * (D * math.atan(B * d / d0) + E * d / d0)
        omega = self.velocity_ms() / (2 * math.pi * Rc)
        return (omega - self.velocity_ms()) / self.velocity_ms()
    # end def slip_ratio

    def traction_force(self):
        """@todo documentation for traction_force"""
        self.weight_transfer()
    # end def traction_force

    def traction_torque(self):
        """@todo documentation for traction_torque"""
        # return self.traction_force() * self.wheel_radius
    # end def traction_torque

# end class Vehicle


# v = Vehicle('car')
# print '####################'
# for i in range(10):
#     v.update(0.01)



# print v.gear_ratios[v.gear] * v.differential_ratio * v.transmission_efficiency / v.wheel_radius


# rps_wheel = 4400 / (v.gear_ratios[v.gear] * v.differential_ratio) / 60.0
# print (rps_wheel * (2 * math.pi * v.wheel_radius))

# # convert to kmh
# print (1 / 1000.0) * (rps_wheel * (2 * math.pi * v.wheel_radius)) / (1 / 3600.0)





def rpm(wheel_rotation_rate, gear_ratio, differential_ratio):
    """Rpm of the engine."""
    return (wheel_rotation_rate * gear_ratio * differential_ratio * 60.0) / (2.0 * math.pi)
# end def rpm


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


def drive_torque(forward_vector, engine_torque, gear_ratio, differential_ratio, transmission_efficiency, throttle_position):
    """The force that drives the car forward, produced by the engine.

    @return A torque
    """
    return forward_vector * (engine_torque
            * gear_ratio
            * differential_ratio
            * transmission_efficiency) * throttle_position
# end def drive_torque


def drive_force(forward_vector, drive_torque):
    """The force that drives the car forward, produced by the engine.

    @return A force vector in Newton
    """
    return forward_vector * drive_torque
# end def drive_force


def air_resistance_constant(windshield_area):
    """The air resistance.

    @return A force vector in Newton
    """
    coefficient_of_friction = 0.3
    air_density = 1.29
    return 0.5 * coefficient_of_friction * windshield_area * air_density
# end def air_resistance_constant


def air_resistance_force(forward_vector, air_resistance_constant, velocity):
    """The air resistance.

    @return A force vector in Newton
    """
    return -(air_resistance_constant * velocity * velocity.length())
# end def air_resistance_force


def internal_resistance_force(air_resistance_constant, velocity):
    """The internal resistance of the wheels.

    @return A force vector in Newton
    """
    return -(30 * air_resistance_constant * velocity)
# end def internal_resistance_force


def traction_force(drive_force, air_resistance_force, internal_resistance_force):
    """@todo documentation for traction_force"""
    return drive_force + air_resistance_force + internal_resistance_force
# end def traction_force


def speed_in_ms(rpm, gear_ratio, differential_ratio, wheel_radius):
    """@todo documentation for ms"""
    return rpm / (gear_ratio * differential_ratio * 60.0) * 2 * math.pi * wheel_radius
# end def speed_in_ms


def total_torque(drive_force, traction_force, wheel_radius):
    """@todo documentation for total_torque"""
    drive_torque = drive_force
    traction_torque = traction_force
    return drive_torque + traction_torque # + brake_torque
# end def total_torque

def slip_ratio(angular_velocity, wheel_radius, velocity_ms):
    """@todo documentation for slip_ratio"""
    d = 0.3
    d0 = 0.2
    D = 0.4
    B = 12
    E = 0.25
    Rc = wheel_radius - d0 * (D * math.atan(B * d / d0) + E * d / d0)

    return -((velocity_ms - Rc*angular_velocity) / velocity_ms)


    omega = velocity_ms / (2 * math.pi * Rc)
    return (omega - velocity_ms) / velocity_ms
# end def slip_ratio


def weight_transfer(length, mass, cog, acceleration):
    """@return The weight forces for the front and rear axle in Newton."""
    c = length / 2.0
    b = length / 2.0
    weight_front = (c/length) * mass * 9.81 - (cog/length) * mass * acceleration
    weight_rear = (b/length) * mass * 9.81 + (cog/length) * mass * acceleration
    return weight_front, weight_rear
# end def weight_transfer


#### TESTS ##############################################################
forward_vector = pm.datatypes.Vector(0, 0, 1)
length = 2.5
cog = 1.00
mass = 1500.0
wheel_mass = 75.0
wheel_radius = 0.33
windshield_area = 2.2
throttle_position = 1
wheel_radius = 0.33
gear_ratio = [2.90, 2.66, 1.78, 1.30, 1.0, 0.74, 0.5][1]
differential_ratio = 3.42
transmission_efficiency = 0.7
kmh = 20.0
ms = kmh * 0.0002777777777777778 / 0.001
rear_wheel_angular_velocity = 0
wheel_rotation_rate = ms / wheel_radius

acceleration = pm.datatypes.Vector(0, 0, 0)
velocity = pm.datatypes.Vector(0, 0, 0)


for i in range(100):
    ms = velocity.length() * (0.0002777777777777778 / 0.001)

    wheel_rotation_rate = ms / wheel_radius

    _rpm = rpm(wheel_rotation_rate, gear_ratio, differential_ratio)
    _engine_torque = engine_torque(_rpm)
    _drive_torque = drive_torque(forward_vector, _engine_torque, gear_ratio, differential_ratio, transmission_efficiency, throttle_position)
    weight_front, weight_rear = weight_transfer(length, mass, cog, ((mass / 2) * 9.81) / mass)


    _air_resistance_force = air_resistance_force(forward_vector, air_resistance_constant(windshield_area), velocity)
    _internal_resistance_force = internal_resistance_force(air_resistance_constant(windshield_area), velocity)
    _traction_force = traction_force(_drive_torque, _air_resistance_force, _internal_resistance_force)
    # _total_torque = total_torque(_drive_torque, _air_resistance_force + _internal_resistance_force, wheel_radius)

    # TEST
    acceleration = _traction_force / (weight_rear / 9.81)
    velocity = velocity + 1 * acceleration

    print velocity.length()















class VehicleOld(gameengine.GameObject):

    """docstring for Vehicle"""

    def __init__(self,
                 transform,
                 max_speed=1,
                 acceleration=1,
                 deceleration=0.4,
                 rotational_acceleration=10):
        """"""
        super(VehicleOld, self).__init__(transform)

        self.transform.setTranslation([0, 0, 0])

        # Car attributes
        # lengths in m, mass in kg, area in m**2
        self.length = 2.80685
        self.height = 1.00
        self.mass = 1500.0
        self.windshield_area = 2.2
        self.wheel_radius = 0.34

        self.differential_ratio = 3.42
        self.transmission_efficiency = 0.7

        self.rpm = 1000

        self.gear_ratios = [2.90, 2.66, 1.78, 1.30]
        self.gear = 1
        self.velocity = pm.datatypes.Vector(0, 0, 1)
    # end def __init__

    def throttle_position(self):
        """@todo documentation for throttle_position"""
        return 1
    # end def throttle_position

    def torque(self, rpm=1000):
        """@todo integrate the gear."""
        torque_curve = {1000: 350, 3800: 600, 6600: 505}
        diff = rpm - 1000
        start_point = 1000
        end_point = 6600

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

        return (y0 + (y1 - y0) * ((rpm - x0) / float(x1 - x0))) * self.throttle_position()
    # end def torque

    def engine_torque(self):
        """@todo documentation for engine_torque"""
        wheel_rotation_rate = (self.speed() * 1000 / 3600) / self.wheel_radius
        rpm = (wheel_rotation_rate * self.gear_ratios[self.gear] * self.differential_ratio * 60) / (2 * 3.14)
        return self.torque(rpm) * self.gear_ratios[self.gear] * self.differential_ratio * self.transmission_efficiency
    # end def engine_torque

    def slip_ratio(self):
        """@todo documentation for slip_ratio"""
        pass
    # end def slip_ratio

    def break_force(self):
        """@todo documentation for break_force"""
        if self.game_engine.input_manager.Down[0]:
            return - self.forward_vector * 10
        else:
            return 0
        # end if
    # end def break_force

    def speed(self):
        """@todo documentation for speed"""
        return self.velocity.length()
    # end def speed

    def air_friction(self):
        """@todo documentation for air_friction"""
        coefficient_of_friction = 0.3
        air_density = 1.29
        return -0.5 * coefficient_of_friction * self.windshield_area * air_density * self.speed()**2 * self.forward_vector
    # end def air_friction

    def traction(self):
        """@todo documentation for traction"""
        return self.forward_vector * self.engine_torque()
    # end def traction

    def internal_resistance(self):
        """@todo documentation for internal_resistance"""
        return 30 * self.air_friction()
    # end def internal_resistance

    def longitude(self):
        """@todo"""
        return self.traction() + self.air_friction() + self.internal_resistance()

        # if self.break_force() > 0:
        #     return self.break_force() + self.friction() + self.internal_resistance()
        # else:
        #     return self.traction() + self.friction() + self.internal_resistance()
    # end def longitude

    def acceleration(self):
        """@todo documentation for acceleration"""
        return self.longitude()  / self.mass
    # end def acceleration

    def weight_transfer(self):
        """@todo documentation for weight_transfer"""
        c = self.length / 2
        b = self.length / 2
        Wf = (c/self.length)*self.mass*9.8 - (self.height/self.length)*self.mass*self.acceleration()
        Wr = (b/self.length)*self.mass*9.8 + (self.height/self.length)*self.mass*self.acceleration(),
        print Wf, Wr
    # end def weight_transfer

    def update(self, delta_time):
        """Update the vehicle position."""

        if self.game_engine.input_manager.Key_1[0]:
            self.gear = 1
        if self.game_engine.input_manager.Key_2[0]:
            self.gear = 2
        if self.game_engine.input_manager.Key_3[0]:
            self.gear = 3

        self.velocity = self.velocity + delta_time * self.acceleration()
        p = self.position + delta_time * self.velocity
        self.transform.setTranslation(p, ws=True)
# end class Vehicle
