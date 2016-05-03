import os

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

        # 1. Load a list of race courses from a file location

        # 2. Load a list of Vehicles from file location

        # 5. Show the high score
    # end def
# end class RaceGameWidget


class RaceGameUI(gameengine.GameEngineUI):

    """A simple RaceGame for Maya.

    @todo inner_widget
    """

    def __init__(self):
        """Initialize the RaceGameUI."""
        super(RaceGameUI, self).__init__(RaceGameWidget())

        # 8. Display the elapsed Time
        # -----> Create a Counter game_object
        # 9. Enable/Disable Controls in GameEngine

    # end def __init__

    def on_start(self):
        """@todo documentation for on_start."""
        # Create the GameManager
        GameManager(pm.createNode('transform', n='GameManager'))

        # Create the Vehicles
        vehicle.Vehicle('C_main_CTL',
                        'C_steeringAxis_CTL',
                        'C_steeringWheel_CTL',
                        )
    # end def on_start

    def on_stop(self):
        """Override to create and initialize GameObjects on end."""
        print('ENDED RACEGAME')
    # end def on_stop
# end class RaceGame


class GameManager(gameobject.GameObject):

    """@todo documentation for GameManager."""

    def __init__(self, transform):
        """Initialize GameManager."""
        super(GameManager, self).__init__(transform)
    # end def __init__

    def start(self):
        """@todo documentation for start."""
        self._assemble_scene()
        # loadingdialog.LoadingDialog(self._assemble_scene, 'Loading Game ...')
        # pm.refresh()
        # 3. Show start Countdown
        # loadingdialog.LoadingDialog(partial(time.sleep, 1), '3')
        # loadingdialog.LoadingDialog(partial(time.sleep, 1), '2')
        # loadingdialog.LoadingDialog(partial(time.sleep, 1), '1')
    # end def start

    def _assemble_scene(self):
        """@todo documentation for _assemble_scene."""
        return
        course = '/corp/home/pschweizer/Desktop/track.ma'
        vehicles = ['/corp/home/pschweizer/Desktop/scoopAsCar.ma']
        pm.newFile(f=True)
        pm.importFile(course)
        for v in vehicles:
            pm.importFile(v)

            # TODO Attach the car to the surface properly

            # TODO Add a name tag to the car

        # end for

        # TODO Look through Camera
        pm.select('player1_CAM')
        mel.eval('lookThroughModelPanelClipped player1_CAM modelPanel4 0.001 1000')

        from rnkRig.animation.objectonsurface import objectonsurface
        pm.delete(pm.parentConstraint('startingPosition1', 'C_global_CTL'))
        objectonsurface.ObjectOnSurface('C_mainBodyContact_M', 'course').run()
        objectonsurface.ObjectOnSurface('L_frontWheelContact_M', 'course').run()
        objectonsurface.ObjectOnSurface('R_frontWheelContact_M', 'course').run()
        objectonsurface.ObjectOnSurface('L_rearWheelContact_M', 'course').run()
        objectonsurface.ObjectOnSurface('L_rearWheelContact_M', 'course').run()


        #### GAME ENGINE STUFF BELOW ###########################

        # TODO Properly register the Vehicles
        scoop = vehicle.Vehicle(transform='C_vehicleDrive0_CTL',
                                front_axis='C_frontWheelMainSteer_CTL',
                                steering_wheel='C_steerWheel0_CTL',
                                wheels=['L_frontWheelRoll_CTL',
                                        'L_rearWheelRoll_CTL',
                                        'R_frontWheelRoll_CTL',
                                        'R_rearWheelRoll_CTL'],
                                overall_scale=50,
                                max_steering_angle=20,
                                track_curve='trackCurveShape',
                                collider='sphereCollider')
    # end def _assemble_scene
# end class GameManager
