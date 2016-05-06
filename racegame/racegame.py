import os
import time
from PySide import QtGui

import pymel.core as pm
import pymel.core.uitypes as pmui
from maya import cmds

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

        # Load and setup the course
        course = self.inner_widget.selected_course()
        vehicles = self.inner_widget.selected_vehicles()
        pm.newFile(f=True)
        pm.importFile(course)
        # Create boundary Colliders
        gameobject.CurveCollider('L_edge_CRV')
        gameobject.CurveCollider('R_edge_CRV')
        gameobject.SphereCollider('sphere1')

        # Setup the View
        pm.mel.eval('setNamedPanelLayout("Four View")')

        # Import and setup the vehicles
        for v, namespace in zip(vehicles, ['Player1', 'Player2']):
            pm.importFile(v, namespace=namespace)
            panel = cmds.getPanel(withLabel='Top View')
            if namespace == 'Player2':
                panel = cmds.getPanel(withLabel='Persp View')
            # end if
            pm.modelPanel(panel, cam='%s:C_playerCamera_CAM' % namespace, e=True)
            self.set_panel_properties('%s:C_playerCamera_CAM' % namespace)

            pm.geometryConstraint('C_groundDrive_PLY', '%s:C_main_CTL' % namespace)
            pm.geometryConstraint('C_groundDrive_PLY', '%s:C_front_CTL' % namespace)
            pm.delete(pm.parentConstraint('StartLocation', '%s:C_main_CTL' % namespace))
            pm.delete(pm.parentConstraint('StartLocation', '%s:C_front_CTL' % namespace))

            v = vehicle.Vehicle(transform='%s:C_main_CTL' % namespace,
                                up='Key_Up',
                                down='Key_Down',
                                left='Key_Left',
                                right='Key_Right',
                                front_aim='%s:C_front_CTL' % namespace,
                                body='%s:C_body_CTL' % namespace,
                                steering_axis='%s:C_steeringAxis_CTL' % namespace,
                                steering_wheel='%s:C_steeringWheel_CTL' % namespace,
                                ui_pointer='%s:C_pointer_CTL' % namespace,
                                ui_health='%s:C_health_CTL' % namespace,
                                ui_countdown=['%s:C_3_PLY' % namespace,
                                              '%s:C_2_PLY' % namespace,
                                              '%s:C_1_PLY' % namespace,
                                              '%s:C_go_PLY' % namespace],
                                wheels=['%s:L_frontWheel_CTL' % namespace,
                                        '%s:R_frontWheel_CTL' % namespace,
                                        '%s:L_rearWheel_CTL' % namespace,
                                        '%s:R_rearWheel_CTL' % namespace],
                                track_curve='C_center_CRVShape',
                                collider=gameobject.SphereCollider('%s:C_Collider_COL' % namespace),
                                fire=gameobject.Particle('%s:C_fire_PAR' % namespace,
                                                         particle_shape='%s:C_fire_PARShape' % namespace))
            if namespace == 'Player2':
                v.up = 'Key_W'
                v.down = 'Key_S'
                v.left = 'Key_A'
                v.right = 'Key_D'
            # end if
            game_manager.vehicles.append(v)
            pm.refresh()
        # end for
    # end def on_start

    def set_panel_properties(self, camera):
        """@todo documentation for set_panel_properties."""
        modelPanelList = []
        modelEditorList = pm.lsUI(editors=True)
        for myModelPanel in modelEditorList:
            if myModelPanel.find('modelPanel') != -1:
                modelPanelList.append(myModelPanel)
            # end if
        # end for
        for modelPanel in modelPanelList:
            if pmui.ModelEditor(modelPanel).getCamera() == camera:
                pmui.ModelEditor(modelPanel).setDisplayTextures(True)
                pmui.ModelEditor(modelPanel).setRendererName('base_OpenGL_Renderer')
                pmui.ModelEditor(modelPanel).setLocators(False)
                pmui.ModelEditor(modelPanel).setCameras(False)
                pmui.ModelEditor(modelPanel).setDeformers(False)
            # end if
        # end for
    # end def set_panel_properties

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
