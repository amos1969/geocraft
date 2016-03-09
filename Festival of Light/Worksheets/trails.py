from mcpi.minecraft import Minecraft
from mcpi import block
import random

mc = Minecraft.create()
red_amber_green = [14, 4, 5]

while True:
    pos = mc.player.getPos()
    colour = random.choice(red_amber_green)
    mc.setBlock(pos.x, pos.y-1, pos.z, block.WOOL.id, colour)
