from mcpi.minecraft import Minecraft
import mcpi.block as block
mc = Minecraft.create()
pos = mc.player.getPos()
x = pos.x
y = pos.y
z = pos.z
mc.setBlock(x, y, z, block.GOLD_BLOCK.id)
