import pymel.core as pm

from PySide import QtCore, QtGui

import gameengine
import vehicle
reload(gameengine)
reload(vehicle)


class RaceGame(gameengine.GameEngine):

    """docstring for RaceGame"""

    def __init__(self):
        """"""
        super(RaceGame, self).__init__()

        # Register the Vehicles
        self.register_game_object(vehicle.Vehicle('car'))

    # end def __init__
# end class RaceGame
