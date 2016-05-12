import sys
sys.path.append('')

from MayaGameEngine.racegame import racegame
reload(racegame)

rgui = racegame.RaceGameUI()
rgui.show()
