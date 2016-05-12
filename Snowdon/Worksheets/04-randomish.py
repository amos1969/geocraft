from mcpi.minecraft import Minecraft
from mcpi import block
import random
mc = Minecraft.create()

while True:
	pos = mc.player.getPos()
	block_type = random.randint(0, 3)
    mc.setBlock(pos.x, pos.y-1, pos.z, block.STONE_BRICK.id, block_type)
