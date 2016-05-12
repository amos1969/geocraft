from mcpi.minecraft import Minecraft
from mcpi import block
mc = Minecraft.create()

pos = mc.player.getPos()
mc.setBlocks(pos.x+1, pos.y, pos.z+1,
             pos.x+5, pos.y+5, pos.z+5,
             block.GLASS.id)
