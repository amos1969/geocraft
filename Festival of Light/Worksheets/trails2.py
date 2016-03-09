from mcpi.minecraft import Minecraft
from mcpi import block
import random

mc = Minecraft.create()

while True:
    colour = random.randint(0, 15)
    pos = mc.player.getPos()
    mc.setBlock(pos.x, pos.y-1, pos.z, block.WOOL.id, colour)
