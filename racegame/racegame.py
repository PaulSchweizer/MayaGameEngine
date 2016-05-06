import os
import time
from PySide import QtGui

import pymel.core as pm
from maya import mel

from MayaGameEngine.core import qtutils
from MayaGameEngine.core import gameengine
from MayaGameEngine.core import gameobject
from MayaGameEngine.racegame import vehicle
reload(gameengine)
reload(gameobject)
reload(vehicle)


base_class, form_class = qtutils.load_ui_type(os.path.dirname(__file__) + '/resource/RaceGame.ui')


class RaceGameWidget(base_class, form_class):

    """docstring for RaceGameWidget"""

    def __init__(self):
        """Initialize the Widget."""
        super(RaceGameWidget, self).__init__()
        self.setupUi(self)

        # Load all courses
        self._load_courses()

        # 2. Load a list of Vehicles from file location
        self._load_vehicles()

        # 5. Show the high score
    # end def

    def _load_courses(self):
        """@todo documentation for _load_courses."""
        base = os.path.join(os.path.dirname(__file__), 'resource', 'courses')
        for course in os.listdir(base):
            if course.endswith('.jpg'):
                image = os.path.join(base, course)
                item = QtGui.QListWidgetItem()
                icon = QtGui.QIcon(QtGui.QPixmap(image))
                item.setIcon(icon)
                item.setText(course[:-4])
                self.course_lst.addItem(item)
            # end if
        # end for
    # end def _load_courses

    def _load_vehicles(self):
        """@todo documentation for _load_vehicles."""
        base = os.path.join(os.path.dirname(__file__), 'resource', 'vehicles')
        for course in os.listdir(base):
            if course.endswith('.jpg'):
                image = os.path.join(base, course)
                item = QtGui.QListWidgetItem()
                icon = QtGui.QIcon(QtGui.QPixmap(image))
                item.setIcon(icon)
                item.setText(course[:-4])
                self.vehicle_lst_a.addItem(item)

                image = os.path.join(base, course)
                item = QtGui.QListWidgetItem()
                icon = QtGui.QIcon(QtGui.QPixmap(image))
                item.setIcon(icon)
                item.setText(course[:-4])
                self.vehicle_lst_b.addItem(item)
            # end if
        # end for
    # end def _load_vehicles

    def selected_course(self):
        """@todo documentation for selected_course."""
        file_name = '%s.ma' % self.course_lst.selectedItems()[0].text()
        return os.path.join(os.path.dirname(__file__), 'resource', 'courses', file_name)
    # end def selected_course

    def selected_vehicles(self):
        """@todo documentation for selected_vehicles."""
        file_name_a = '%s.ma' % self.vehicle_lst_a.selectedItems()[0].text()
        file_name_b = '%s.ma' % self.vehicle_lst_a.selectedItems()[0].text()
        return [os.path.join(os.path.dirname(__file__), 'resource', 'vehicles', file_name_a),
                os.path.join(os.path.dirname(__file__), 'resource', 'vehicles', file_name_b)]
    # end def selected_vehicles


# end class RaceGameWidget


class RaceGameUI(gameengine.GameEngineUI):

    """A simple RaceGame for Maya.

    @todo inner_widget
    """

    def __init__(self):
        """Initialize the RaceGameUI"""
        super(RaceGameUI, self).__init__(RaceGameWidget())
    # end def __init__

    def on_start(self):
        """@todo documentation for on_start."""

        # Create the GameManager
        game_manager = GameManager(pm.createNode('transform', n='GameManager'))

        course = self.inner_widget.selected_course()
        vehicles = self.inner_widget.selected_vehicles()
        pm.newFile(f=True)
        pm.importFile(course)

        # Create Colliders
        gameobject.CurveCollider('L_edge_CRV')
        gameobject.CurveCollider('R_edge_CRV')

        for v, namespace in zip(vehicles, ['a', 'b']):
            pm.importFile(v, namespace=namespace)
            pm.select('C_playerCamera_CAM')
            mel.eval('lookThroughModelPanelClipped C_playerCamera_CAM modelPanel4 0.001 1000')
            pm.geometryConstraint('C_groundDrive_PLY', 'C_main_CTL')
            pm.geometryConstraint('C_groundDrive_PLY', 'C_front_CTL')
            pm.delete(pm.parentConstraint('StartLocation', 'C_main_CTL'))
            pm.delete(pm.parentConstraint('StartLocation', 'C_front_CTL'))

            v = vehicle.Vehicle(transform='C_main_CTL',
                                front_aim='C_front_CTL',
                                body='C_body_CTL',
                                steering_axis='C_steeringAxis_CTL',
                                steering_wheel='C_steeringWheel_CTL',
                                ui_pointer='C_pointer_CTL',
                                ui_health='C_health_CTL',
                                ui_countdown=['C_3_PLY', 'C_2_PLY', 'C_1_PLY', 'C_go_PLY'],
                                wheels=['L_frontWheel_CTL', 'R_frontWheel_CTL',
                                          'L_rearWheel_CTL', 'R_rearWheel_CTL'],
                                track_curve='C_center_CRVShape',
                                collider=gameobject.SphereCollider('C_Collider_COL'),
                                fire=gameobject.Particle('C_fire_PAR', particle_shape='C_fire_PARShape'))
            game_manager.vehicles.append(v)
            pm.refresh()
        # end for

        # TODO MOdifty the view properly
        # modelEditor -e -locators false modelPanel4;
        pm.mel.eval('displayStyle -textured')

        gameobject.SphereCollider('sphere1')

    # end def on_start

    def on_stop(self):
        """Override to create and initialize GameObjects on end."""
        print 'ENDED RACEGAME'
    # end def on_stop
# end class RaceGame


class GameManager(gameobject.GameObject):

    """@todo documentation for GameManager."""

    def __init__(self, transform):
        """Initialize GameManager."""
        super(GameManager, self).__init__(transform)
        self.vehicles = list()
        self.started = False
    # end def __init__

    def start(self):
        """@todo documentation for start."""
        for v in self.vehicles:
            v.update(0.001)
        # end for

        # 3. Show start Countdown
        for i in range(4):
            for v in self.vehicles:
                v.ui_countdown[i].setAttr('v', True)
            # end for
            pm.refresh()
            time.sleep(1)
            for v in self.vehicles:
                v.ui_countdown[i].setAttr('v', False)
            # end for
        # end for
    # end def start

    def update(self, delta_time):
        """@todo documentation for update."""
        pass
    # end def update
# end class GameManager
