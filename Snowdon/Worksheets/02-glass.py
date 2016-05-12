from mcpi.minecraft import Minecraft
import mcpi.block as block
mc = Minecraft.create()
pos = mc.player.getPos()
x = pos.x + 1
y = pos.y
z = pos.z + 1
x1 = pos.x + 5
y1 = pos.y + 5
z1 = pos.z + 5
mc.setBlocks(x, y, z, x1, y1, z1, block.GLASS.id)
