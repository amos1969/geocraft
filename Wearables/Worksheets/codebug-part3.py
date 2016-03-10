import codebug_tether
import codebug_tether.sprites
from mcpi.minecraft import Minecraft
from mcpi import block
import time

codebug = codebug_tether.CodeBug()
codebug.set_leg_io(0, 1)
codebug.set_pullup(0, 1)
codebug.set_leg_io(1, 1)
codebug.set_pullup(1, 1)
codebug.clear()

mc = Minecraft.create()

while True:
    pos = mc.player.getPos()
    if codebug.get_input(0) == 0:
        mc.setBlock(pos.x, pos.y-1, pos.z, block.TNT.id, 1)
    elif codebug.get_input(1) == 0:
        mc.setBlock(pos.x, pos.y-1, pos.z, block.LAVA.id)        
    else:
        codebug.clear()

    
