from mcpi.minecraft import Minecraft
from mcpi import block
mc = Minecraft.create()

pos = mc.player.getPos()
mc.setBlock(pos.x, pos.y, pos.z, block.GOLD_BLOCK.id)
