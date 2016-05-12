from mcpi.minecraft import Minecraft
import mcpi.block as block
import random
mc = Minecraft.create()
while True:
	pos = mc.player.getPos()
	x = pos.x
	y = pos.y
	z = pos.z
	block_type = random.randint(0, 3)
    mc.setBlock(x, y - 1, z, block.STONE_BRICK.id, block_type)
