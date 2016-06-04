"""@package MayaGameEngine.racegame.racegame
@brief GameObject base and colliders
@date 2016/05/01
@version 1.0
@author Paul Schweizer
@email paulschweizer@gmx.net
"""
import os
from os import path
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


base_class, form_class = qtutils.load_ui_type(path.join(path.dirname(__file__),
                                              'resource', 'RaceGame.ui'))


class RaceGameWidget(base_class, form_class):

    """The inner widget for the RaceGame."""

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
        """Load all available race courses."""
        base = path.join(path.dirname(__file__), 'resource', 'courses')
        for course in os.listdir(base):
            if course.endswith('.jpg'):
                image = path.join(base, course)
                item = QtGui.QListWidgetItem()
                icon = QtGui.QIcon(QtGui.QPixmap(image))
                item.setIcon(icon)
                item.setText(course[:-4])
                self.course_lst.addItem(item)
            # end if
        # end for
    # end def _load_courses

    def _load_vehicles(self):
        """Load all available vehicles."""
        base = path.join(path.dirname(__file__), 'resource', 'vehicles')
        for course in os.listdir(base):
            if course.endswith('.jpg'):
                image = path.join(base, course)
                item = QtGui.QListWidgetItem()
                icon = QtGui.QIcon(QtGui.QPixmap(image))
                item.setIcon(icon)
                item.setText(course[:-4])
                self.vehicle_lst_a.addItem(item)

                image = path.join(base, course)
                item = QtGui.QListWidgetItem()
                icon = QtGui.QIcon(QtGui.QPixmap(image))
                item.setIcon(icon)
                item.setText(course[:-4])
                self.vehicle_lst_b.addItem(item)
            # end if
        # end for
    # end def _load_vehicles

    def selected_course(self):
        """@return The selected course"""
        file_name = '%s.ma' % self.course_lst.selectedItems()[0].text()
        return path.join(path.dirname(__file__), 'resource',
                         'courses', file_name)
    # end def selected_course

    def selected_vehicles(self):
        """@return The selected vehicles"""
        file_name_a = '%s.ma' % self.vehicle_lst_a.selectedItems()[0].text()
        file_name_b = '%s.ma' % self.vehicle_lst_b.selectedItems()[0].text()
        return [path.join(path.dirname(__file__), 'resource',
                          'vehicles', file_name_a),
                path.join(path.dirname(__file__), 'resource',
                          'vehicles', file_name_b)]
    # end def selected_vehicles

    def player_names(self):
        """@return The player's names"""
        return [self.player_name_a.text(), self.player_name_b.text()]
    # end def player_names
# end class RaceGameWidget


class RaceGameUI(gameengine.GameEngineUI):

    """A simple RaceGame for Maya."""

    def __init__(self):
        """Initialize the RaceGameUI"""
        super(RaceGameUI, self).__init__(RaceGameWidget())
    # end def __init__

    def on_start(self):
        """Setup the Game."""
        # Create the GameManager

        # Load and setup the course
        course = self.inner_widget.selected_course()
        vehicles = self.inner_widget.selected_vehicles()
        player_names = self.inner_widget.player_names()
        pm.newFile(f=True)
        pm.importFile(course)
        # Create boundary Colliders
        gameobject.CurveCollider('L_edge_CRV')
        gameobject.CurveCollider('R_edge_CRV')

        game_manager = GameManager(pm.createNode('transform', n='GameManager'))

        # Setup the View
        pm.mel.eval('setNamedPanelLayout("Four View")')

        # Import and setup the vehicles
        i = 0
        for v, namespace in zip(vehicles, player_names):
            pm.importFile(v, namespace=namespace)
            panel = cmds.getPanel(withLabel='Persp View')
            if namespace == 'Player2':
                panel = cmds.getPanel(withLabel='Top View')
            # end if
            pm.modelPanel(panel, cam='%s:C_playerCamera_CAM' % namespace, e=True)
            self.set_panel_properties('%s:C_playerCamera_CAM' % namespace)

            pm.geometryConstraint('C_groundDrive_PLY',
                                  '%s:C_main_CTL' % namespace)
            pm.geometryConstraint('C_groundDrive_PLY',
                                  '%s:C_front_CTL' % namespace)
            pm.delete(pm.parentConstraint('StartLocation%s' % i,
                                          '%s:C_main_CTL' % namespace))
            pm.delete(pm.parentConstraint('StartLocation%s' % i,
                                          '%s:C_front_CTL' % namespace))

            v = vehicle.Vehicle(transform='%s:C_main_CTL' % namespace,
                                name=namespace,
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
                                collider=gameobject.SphereCollider('%s:C_Collider_COL' % namespace))
            # Assign different control set to second Player
            if i == 1:
                v.up = 'Key_W'
                v.down = 'Key_S'
                v.left = 'Key_A'
                v.right = 'Key_D'
            # end if
            game_manager.vehicles.append(v)
            pm.refresh()
            i += 1
        # end for
    # end def on_start

    def set_panel_properties(self, camera):
        """Set the properties for the display panel of the given camera.

        @param camera The given camera
        """
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

    """Show the countdown and determine when the game is over."""

    def __init__(self, transform):
        """Initialize GameManager."""
        super(GameManager, self).__init__(transform)
        self.vehicles = list()
        self.counters = [pm.PyNode(c) for c in pm.ls('counter*', type='transform')]
    # end def __init__

    def start(self):
        """Show a countdown"""
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
        """Check the damage on the vehicles.

        @todo check if one of the cars has reached the end of the track
        """
        for v in self.vehicles:
            vt = pm.datatypes.Vector(v.position)
            for c in self.counters:
                ct = pm.datatypes.Vector(c.getTranslation(ws=True))
                if pm.datatypes.Vector(vt - ct).length() < 3.2:
                    if c not in v.counters:
                        v.counters.append(c)
                    # end if
                # end if

            end_distance = pm.datatypes.Vector(vt - pm.datatypes.Vector(self.counters[0].getTranslation(ws=True))).length()

            if len(v.counters) == len(self.counters) and end_distance < 5:

                gameengine.GameEngine().stop()
                print 'The Winner is: %s' % v.name
                from rnkRig.core.qt.widget import confirmdialog
                confirmdialog.ConfirmDialog('The Winner is: %s' % v.name,
                                            button=['Play Again', 'Exit'],
                                            cancel_button='Exit')

            if v.damage == 100:
                print 'END'
            # end if
        # end for
    # end def update
# end class GameManager
