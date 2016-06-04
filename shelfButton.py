import sys
sys.path.append('/corp/home/pschweizer/Desktop')

from MayaGameEngine.racegame import racegame
reload(racegame)

rgui = racegame.RaceGameUI()
rgui.show()
