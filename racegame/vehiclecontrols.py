import maya.cmds as cmds
import pymel.core as pm
import time

from PySide import QtCore, QtGui


class Player(object):

    """docstring for Player"""

    def __init__(self,
                 name='Player1',
                 up=16777235,
                 down=16777237,
                 left=16777234,
                 right=16777236):
        self.name = name
        self.up = up
        self.down = down
        self.left = left
        self.right = right

        self.targets_reached = list()

        self.movement_keys = {'up': [False, 0],
                             'down': [False, 0]}
        self.steering_keys = {'left': [False, 0],
                              'right': [False, 0]}
    # end def __init__
# end class Player


class Vehicle(object):

    """docstring for Vehicle"""

    def __init__(self,
                 player,
                 vehicle,
                 max_speed=1,
                 acceleration=0.4,
                 deceleration=0.4,
                 rotational_acceleration=30):
        self.player = player
        self.vehicle = pm.PyNode(vehicle)

        self.reset()

        # m / sec
        self.max_speed = max_speed
        self.acceleration = acceleration
        self.deceleration = deceleration
        self.rotational_acceleration = rotational_acceleration
    # end def __init__

    def reset(self):
        """@todo documentation for reset"""
        self.vehicle.setTranslation([0, 0, 0])
        self.vehicle.setRotation([0, 0, 0])
    # end def reset

    @property
    def forward_vehicle_vector(self):
        """@todo documentation for forward_vehicle_vector"""
        r = self.vehicle.getRotation()
        r.append(0)
        return pm.datatypes.Vector(0, 0, 1).rotateBy(r)
    # end def forward_vehicle_vector

    @property
    def forward_control_vector(self):
        """@todo documentation for forward_control_vector"""
        forward = pm.datatypes.Vector(0, 0, self.player.movement_keys['up'][1] - self.player.movement_keys['down'][1])
        r = self.vehicle.getRotation()
        r.append(0)
        forward = forward.rotateBy(r)
        return forward
    # end def forward_control_vector

    @property
    def speed(self):
        """@todo documentation for speed"""
        return self.forward_control_vector.length() * 60 * 60
    # end def speed

    @property
    def position(self):
        """@todo documentation for position"""
        return pm.datatypes.Point(self.vehicle.getTranslation())
    # end def position

    @property
    def control_rotation(self):
        """@todo documentation for control_rotation"""
        return [0, self.player.steering_keys['left'][1] - self.player.steering_keys['right'][1], 0]
    # end def control_rotation

    def update_controls(self, diff_time):
        """@todo documentation for update"""
        # Update the moving vector
        for key, value in self.player.movement_keys.items():
            if value[0]:
                value[1] += diff_time * self.acceleration
                if value[1] > self.max_speed:
                    value[1] = self.max_speed
                # end if
            else:
                if value[1] > 0:
                    value[1] -= diff_time * self.deceleration
                if value[1] < 0:
                    value[1] = 0
                # end if
            # end if
        # end for

        # Update the steering vector
        for key, value in self.player.steering_keys.items():
            if value[0]:
                value[1] += diff_time * self.rotational_acceleration
            # end if
        # end for
    # end def update

    def update(self, diff_time):
        """@todo documentation for update"""
        # Update the moving vector
        # for key, value in self.player.movement_keys.items():
        #     if value[0]:
        #         value[1] += diff_time * self.acceleration
        #         if value[1] > self.max_speed:
        #             value[1] = self.max_speed
        #         # end if
        #     else:
        #         if value[1] > 0:
        #             value[1] -= diff_time * self.deceleration
        #         if value[1] < 0:
        #             value[1] = 0
        #         # end if
        #     # end if
        # # end for

        # No calculation necessary if there is no speed
        if self.speed == 0:
            return
        # end if

        # Update the steering vector
        # for key, value in self.player.steering_keys.items():
        #     if value[0]:
        #         value[1] += diff_time * self.rotational_acceleration
        #     # end if
        # end for

        # Set the translation
        direction = self.forward_control_vector
        final_position = pm.datatypes.Vector(self.vehicle.getTranslation(ws=True)[0] + direction.x,
                                             0,
                                             self.vehicle.getTranslation(ws=True)[2] + direction.z)
        self.vehicle.setTranslation([final_position.x, 0, final_position.z], ws=True)

        # Set the rotation
        self.vehicle.setRotation(self.control_rotation)
    # end def update
# end class Vehicle


class VehicleControls(QtGui.QWidget):

    """Creates a UI for the Object On Surface rig setup.

    1. Keep framerate at 30fps
    """

    def __init__(self):
        """Initialize the class."""
        super(VehicleControls, self).__init__()
        # loadUi(utils.get_ui_file_path(__file__, 'VehicleControls'), self)

        self.start_btn = JoystickButton(self)
        self.setLayout(QtGui.QHBoxLayout())
        self.layout().addWidget(self.start_btn)

        self.targets = [pm.datatypes.Point(pm.PyNode('target1').getTranslation()),
                        pm.datatypes.Point(pm.PyNode('target2').getTranslation()),
                        pm.datatypes.Point(pm.PyNode('target3').getTranslation())]

        self.players = [Player('Paul'), Player('Jimmy', 87, 83, 65, 68)]
        self.vehicles = [Vehicle(self.players[0], 'pCube1'), Vehicle(self.players[1], 'pCube2')]

        self.target_fps = 60

        self.time = time.time()
    # end def __init__

    @property
    def diff_time(self):
        """@todo documentation for diff_time"""
        return time.time() - self.time
    # end def diff_time

    def start_game(self):
        """@todo documentation for start_game"""
        print 'GAME STARTED'
    # end def start_game

    def keyPressEvent(self, event):
        """@todo documentation for keyPressEvent"""
        for player in self.players:
            if event.key() == player.up:
                player.movement_keys['up'][0] = True
            elif event.key() == player.down:
                player.movement_keys['down'][0] = True
            elif event.key() == player.left:
                player.steering_keys['left'][0] = True
            elif event.key() == player.right:
                player.steering_keys['right'][0] = True
            # end if
        # end for
    # end def keyPressEvent

    def keyReleaseEvent(self, event):
        """@todo documentation for keyPressEvent"""
        for player in self.players:
            if event.key() == player.up:
                player.movement_keys['up'][0] = False
            elif event.key() == player.down:
                player.movement_keys['down'][0] = False
            elif event.key() == player.left:
                player.steering_keys['left'][0] = False
            elif event.key() == player.right:
                player.steering_keys['right'][0] = False
            # end if
        # end for
    # end def keyPressEvent

    def closeEvent(self, event):
        """@todo documentation for closeEvent"""
        self.stop()
        QtGui.QWidget.closeEvent(self, event)
    # end def closeEvent

    def stop(self):
        """@todo documentation for stop"""
        self.start_btn.running = False
        print 'GAME STOPPED'

        for vehicle in self.vehicles:
            vehicle.reset()

        for player in self.players:
            print player.name, 'Targets reached: %s' % len(player.targets_reached)
    # end def stop

    def update(self):
        """The main update loop for the Game."""
        # Update all the vehicles
        diff_time = self.diff_time

        for vehicle in self.vehicles:
            vehicle.update_controls(diff_time)

        if diff_time >= 1.0 / self.target_fps:
            for vehicle in self.vehicles:
                vehicle.update(diff_time)

                for target in self.targets:
                    if target.distanceTo(vehicle.position) < 40:
                        if target not in vehicle.player.targets_reached:
                            vehicle.player.targets_reached.append(target)
                # end for
            # end for

            pm.refresh(f=True)
            # Update the timer
            self.time = time.time()
            return
        else:
            # Paint
            pm.refresh(f=True)
        # end if the diff time is lower than the desired framerate

    # end def update
# end class VehicleControls


class JoystickButton(QtGui.QPushButton):

    """docstring for JoystickButton"""

    def __init__(self, parent):
        super(JoystickButton, self).__init__(parent=parent)
        self.mouse_pressed = False
        self.running = False
        self.setText('START')
    # end def __init__

    def mousePressEvent(self, event):
        """@todo documentation for dragMoveEvent"""
        self.mouse_pressed = True
        self.running = True
    # end def dragMoveEvent

    def mouseReleaseEvent(self, event):
        """@todo documentation for mouseReleaseEvent"""
        self.mouse_pressed = False
        self.parent().start_game()
        while not self.mouse_pressed and self.running:
            self.parent().update()
        # end while
    # end def mouseReleaseEvent
# end class JoystickButton


