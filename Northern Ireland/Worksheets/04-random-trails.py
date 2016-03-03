from mcpi.minecraft import Minecraft
from mcpi import  block
import random
mc = Minecraft.create()
while True:
    pos = mc.player.getPos()
    x = pos.x
    y = pos.y
    z = pos.z
    which_brick = random.randint(0, 3)
    mc.setBlock(x, y-1, z, block.STONE_BRICK.id, which_brick)





