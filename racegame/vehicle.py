import math
from collections import OrderedDict
import pymel.core as pm

from PySide import QtCore

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
                 front_aim,
                 body,
                 steering_axis,
                 steering_wheel,
                 track_curve,
                 collider,
                 ui_pointer,
                 ui_health,
                 fire,
                 ui_countdown=list(),
                 wheels=list(),
                 overall_scale=1,
                 max_steering_angle=40,
                 wheel_radius=0.03,
                 mass=1500.0,
                 windshield_area=2.2):
        """Initialize the Vehicle.

        @param transform The main transform of the Vehicle
        @param wheels An optional list of wheels that rotate
        """
        super(Vehicle, self).__init__(transform)

        # Transforms
        self.front_aim = pm.PyNode(front_aim)
        self.body = pm.PyNode(body)
        self.steering_axis = pm.PyNode(steering_axis)
        self.steering_wheel = pm.PyNode(steering_wheel)
        self.track_curve = pm.nodetypes.NurbsCurve(track_curve)
        self.collider = collider
        self.collider.parent = self
        self.ui_pointer = pm.PyNode(ui_pointer)
        self.ui_health = pm.PyNode(ui_health)
        self.ui_countdown = [pm.PyNode(c) for c in ui_countdown]
        self.fire = fire
        self.fire.parent = self
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
        """@todo documentation for update_external_resistance_force."""
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
        """@todo documentation for weight_transfer."""
        value = math.sqrt(abs(velocity_diff)) * 10
        if velocity_diff < 0:
            value = -value
        # end if
        return value
    # end def weight_transfer

    def start(self):
        """@todo documentation for start."""
        self.ui_health.setAttr('sx', self.damage / 100.0)
        self.fire.particle_shape.setAttr('fireDensity', self.damage / 5)
    # end def start

    def update(self, delta_time):
        """"""
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
        self.velocity = max(0, min(self.velocity + acceleration * delta_time, 100))

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
        """@todo documentation for _user_input."""
        # Throttle up / down
        if self.game_engine.input_manager.Key_Up[0]:
            self.throttle_position = (min(self.throttle_position + delta_time * 2, 1))
        else:
            self.throttle_position = (max(0, self.throttle_position - delta_time * 4))
        # end if

        # Break up / down
        if self.game_engine.input_manager.Key_Down[0]:
            self.brake_position = (min(self.brake_position + delta_time * 2, 1))
        else:
            self.brake_position = (max(0, self.brake_position - delta_time * 4))
        # end if

        # Turn left / right
        if self.game_engine.input_manager.Key_Left[0]:
            self.steering_angle = max(-self.max_steering_angle, min(self.steering_angle + delta_time * 120, self.max_steering_angle))
        if self.game_engine.input_manager.Key_Right[0]:
            self.steering_angle = max(-self.max_steering_angle, min(self.steering_angle - delta_time * 120, self.max_steering_angle))
        if not self.game_engine.input_manager.Key_Left[0] and not self.game_engine.input_manager.Key_Right[0]:
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
        """@todo documentation for on_collide_enter."""
        self.transform.setTranslation(point, ws=True)
        self.external_resistance_force -= amount * self.velocity
        if self.velocity > 0.5 and isinstance(collider, gameobject.SphereCollider):
            self.damage += amount
            self.ui_health.setAttr('sx', self.damage / 100.0)
            self.fire.particle_shape.setAttr('fireDensity', self.damage / 5.0)
        # end if
    # end def on_collide_enter

    def on_collide(self, collider, point, amount):
        """@todo documentation for on_collide."""
        self.transform.setTranslation(point, ws=True)
    # end def on_collide
# end class Vehicle

































































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


class VehicleOld(gameobject.GameObject):

    """The controllable Vehicle for the RaceGame."""

    def __init__(self,
                 transform,
                 steering_axis,
                 steering_wheel,
                 track_curve,
                 collider,
                 wheels=list(),
                 overall_scale=1,
                 max_steering_angle=30,
                 length=2.5,
                 width=1.8,
                 mass=1500,
                 cog=1.0,
                 wheel_mass=75.0,
                 wheel_radius=0.33,
                 windshield_area=2.2):
        """Initialize the Vehicle.

        @param transform The main transform of the Vehicle
        @param wheels An optional list of wheels that rotate
        """
        super(VehicleOld, self).__init__(transform)

        # transforms
        self.steering_axis = pm.PyNode(steering_axis)
        self.steering_wheel = pm.PyNode(steering_wheel)
        self.track_curve = pm.nodetypes.NurbsCurve(track_curve)
        self.collider = gameobject.SphereCollider(collider)

        self.wheels = [pm.PyNode(w) for w in wheels]

        # Values, some of them need to be replaced by actual rigged up objects
        self.overall_scale = overall_scale
        self.max_steering_angle = max_steering_angle
        self.length = length
        self.width = width
        self._mass = mass
        self.cog = cog
        self.wheel_mass = wheel_mass
        self.wheel_radius = wheel_radius
        self.windshield_area = windshield_area
        self.gear = 1
        self._gear_ratio = [2.90, 2.66, 1.78, 1.30, 1.0, 0.74, 0.5]
        self.differential_ratio = 3.42
        self.transmission_efficiency = 0.7
        self.wheel_inertia = self.wheel_mass * self.wheel_radius**2 * 3
        self.car_inertia = (self._mass / 12.0) * (self.width**2 + self.length**2)
        self.air_resistance_constant = (0.5 * COEFFICIENT_OF_FRICTION *
                                        self.windshield_area * AIR_DENSITY)

        self.throttle_position = 0
        self.brake_position = 0
        self.engine = Engine()
        self.v = pm.datatypes.Vector(0, 0, 0)
        self.rpm = 1000
        self.acceleration = pm.datatypes.Vector(0, 0, 0)
        self.wheel_angular_velocity = 0
        self.steering_angle = 0
        self.steering_radius = 0
        self.actual_velocity = pm.datatypes.Vector(0, 0, 0)
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

    @property
    def break_force(self):
        """"""
        return -self.brake_position * 100000
    # end def break_force

    def drive_torque(self, rpm):
        """@todo documentation for drive_torque."""
        return (self.engine.torque(rpm) *
                self.gear_ratio *
                self.differential_ratio *
                self.transmission_efficiency *
                self.throttle_position)
    # end def drive_torque

    def slip_ratio(self, wheel_angular_velocity, ms):
        """@todo documentation for slip_ratio."""
        if ms == 0 and self.throttle_position == 0:
            return 0.0
        elif ms == 0 and self.throttle_position > 0:
            return self.weight_transfer[1] / 1100.0
        elif wheel_angular_velocity == 0 and self.throttle_position == 0:
            return 0.0
        elif wheel_angular_velocity == 0 and self.throttle_position > 0:
            return self.weight_transfer[1] / 1100.0
        # end if
        slip_ratio = (((wheel_angular_velocity) - ms) / ms)
        return max(-self.weight_transfer[1] / 1100.0, min(slip_ratio, self.weight_transfer[1] / 1100.0))
    # end def slip_ratio

    @property
    def max_angular_velocity(self):
        """@todo documentation for max_angular_velocity."""
        return (6000 / self.gear_ratio / self.differential_ratio / 60)
    # end def max_angular_velocity

    def shift_gear(self, gear):
        """@todo documentation for shift_gear."""
        if gear < len(self._gear_ratio):
            self.gear = gear
        # end if
    # end def shift_gear

    def update(self, delta_time):
        """"""
        #### Throttle up / down
        if self.game_engine.input_manager.Key_Up[0]:
            self.throttle_position = (min(self.throttle_position + delta_time / 2, 1))
        else:
            self.throttle_position = (max(0, self.throttle_position - delta_time * 2))
        # end if

        #### Break up / down
        if self.game_engine.input_manager.Key_Down[0]:
            self.brake_position = (min(self.brake_position + delta_time / 2, 1))
        else:
            self.brake_position = (max(0, self.brake_position - delta_time * 2))
        # end if

        #### Turn left / right
        if self.game_engine.input_manager.Key_Left[0]:
            self.steering_angle = max(-self.max_steering_angle, min(self.steering_angle + delta_time * 60, self.max_steering_angle))
        if self.game_engine.input_manager.Key_Right[0]:
            self.steering_angle = max(-self.max_steering_angle, min(self.steering_angle - delta_time * 60, self.max_steering_angle))
        # end if

        #### The basic drive logic
        drive_torque = self.drive_torque(self.rpm) + self.break_force
        slip_ratio = self.slip_ratio(self.wheel_angular_velocity, self.ms)
        f_long = 1100 * slip_ratio

        angular_acceleration = (drive_torque - f_long * self.wheel_radius) / self.wheel_inertia / 60
        self.wheel_angular_velocity += angular_acceleration * delta_time
        self.wheel_angular_velocity = max(-self.max_angular_velocity, min(self.wheel_angular_velocity, self.max_angular_velocity))

        traction_force = (f_long +
                          self.air_resistance_force.z +
                          self.internal_resistance_force.z) * ADHESION_COEFFICIENT
        acceleration = traction_force / self.mass
        self.v.z += acceleration * delta_time
        self.v.z = max(0, self.v.z)

        self.rpm = self.wheel_angular_velocity * self.gear_ratio * self.differential_ratio * 60 / 2 * math.pi * self.transmission_efficiency

        # This is an automatic vehicle
        if self.rpm > 5500 and self.gear < 6:
            self.shift_gear(self.gear + 1)
        # end if

        # Vehicle has come to a full stop
        if self.v.z == 0:
            self.wheel_angular_velocity = 0.0
        else:
            ## Apply rotation
            self.transform.setAttr('ry', self.transform.getAttr('ry') + (self.steering_angle * delta_time * (0.5 * (1.1 ** self.v.z))))
        # end if

        #######################################################################
        #### ROTATION #########################################################
        #######################################################################

        # if self.v.z != 0 and self.steering_angle != 0:

        #     # Rotation
        #     steering_angle = pm.datatypes.Vector(0, 0, 1).rotateBy([0, self.steering_angle, 0, 0])

        #     length = 2.0 # the distance between the front and back axis
        #     omega = 0
        #     if self.steering_radius != 0:
        #         omega = self.v.x / self.steering_radius
        #     # end if

        #     alpha = self.steering_angle
        #     v_lat = math.cos(alpha) * self.v.length()
        #     v_long = math.sin(alpha) * self.v.length()

        #     # beta = math.atan(self.actual_velocity.x / self.actual_velocity.z)

        #     alpha_front = math.atan((v_lat + omega * 1) / v_long) - v_long
        #     if self.steering_angle > 0:
        #         alpha_front = math.atan((v_lat + omega * 1) / v_long) + v_long

        #     alpha_rear = math.atan((v_lat - omega * 1) / v_long)
        #     f_lateral_front = 2000 * alpha_front
        #     f_lateral_rear = 2000 * alpha_rear
        #     # f_lateral_front = max(-self.weight_transfer[1], min(2200 * alpha_front, self.weight_transfer[1]))
        #     # f_lateral_rear = max(-self.weight_transfer[1], min(2200 * alpha_rear, self.weight_transfer[1]))


        #     # f_cornering = self.steering_angle * f_lateral_front * (1 -f_lateral_rear) * 1
        #     f_cornering = f_lateral_rear + math.cos(math.radians(self.steering_angle)) * f_lateral_front


        #     # self.steering_angle * f_lateral_front * (1 -f_lateral_rear) * 1


        #     sign = 1
        #     if self.steering_angle < 0:
        #         sign = -1

        #     self.transform.setAttr('ry', self.transform.getAttr('ry') + (sign * ((f_cornering * self.steering_radius) / self.car_inertia)) * delta_time)
        #     self.steering_radius = (self.mass * self.v.length()**2) / f_cornering

        # # end if


        #######################################################################
        #######################################################################

        # Update the position
        # TODO Also update the rotation and the various other elements of the vehicle  that need update
        p = self.position + delta_time * pm.datatypes.Vector(0, 0, self.v.z).rotateBy(self.rotation) * self.overall_scale


        ### CHECK DISTANCE WITH THE TRACK CURVE ######
        # distanceToPoint
        distance = self.track_curve.distanceToPoint(pm.datatypes.Point(self.collider.transform.getTranslation(ws=True)))
        if distance > 300:
            return


        before_velocity = pm.datatypes.Vector(self.transform.getAttr('t'))
        self.transform.setTranslation(p, ws=True)
        self.actual_velocity = pm.datatypes.Vector(self.transform.getAttr('t')) - before_velocity

        self.steering_axis.setRotation([0, self.steering_angle, 0])
        self.steering_wheel.setRotation([0, 0, -self.steering_angle])

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
