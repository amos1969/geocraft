from mcpi.minecraft import Minecraft
from mcpi import  block
mc = Minecraft.create()
pos = mc.player.getPos()
x = pos.x
y = pos.y
z = pos.z
mc.setBlock(x, y, z, block.STONE.id)
