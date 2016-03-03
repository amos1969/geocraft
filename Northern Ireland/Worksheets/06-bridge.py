from mcpi.minecraft import Minecraft
import mcpi.block as block
mc = Minecraft.create()
while True:
    pos = mc.player.getPos()
    x = pos.x
    y = pos.y
    z = pos.z
    blockType = mc.getBlock(x, y-1, z)
    if blockType == block.WATER_STATIONARY.id:
        mc.setBlock(x, y-1, z, block.STONE.id)



