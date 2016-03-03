from mcpi.minecraft import Minecraft
from mcpi import block
mc = Minecraft.create()
while True:
    pos = mc.player.getPos()
    x = pos.x
    y = pos.y
    z = pos.z
    blockType = mc.getBlock(x, y-1, z)
    if blockType == block.GRASS.id:
        max_height = 3
        for height in range(max_height):
            mc.setBlock(x-1, y+height, z-1, block.GRASS.id)


























