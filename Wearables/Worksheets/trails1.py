from mcpi.minecraft import Minecraft
from mcpi import block

mc = Minecraft.create()

while True:
    pos = mc.player.getPos()
    mc.setBlock(pos.x, pos.y-1, pos.z, block.STONE.id)
