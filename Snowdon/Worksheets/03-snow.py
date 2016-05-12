from mcpi.minecraft import Minecraft
import mcpi.block as block
mc = Minecraft.create()
while True:
    pos = mc.player.getPos()
	x = pos.x
	y = pos.y
	z = pos.z
    mc.setBlock(x, y - 1, z, block.SNOW.id)
