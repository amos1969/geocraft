from mcpi.minecraft import Minecraft
import mcpi.block as block
import random
mc = Minecraft.create(name="amos1969", address="192.168.0.15")
while True:
    pos = mc.player.getPos()
    x = pos.x
    y = pos.y
    z = pos.z
    blockType = mc.getBlock(x, y-1, z)
    if blockType == block.STONE.id:
        height = random.randint(0, 4)
        for sky in range(height):
            mc.setBlock(x-1, y+sky, z-1, block.STONE.id)
        height = random.randint(0, 4)
        for sky in range(height):
            mc.setBlock(x-2, y+sky, z-1, block.STONE.id)
        height = random.randint(0, 4)
        for sky in range(height):
            mc.setBlock(x-3, y+sky, z-1, block.STONE.id)
        height = random.randint(0, 4)
        for sky in range(height):
            mc.setBlock(x-1, y+sky, z-2, block.STONE.id)
        height = random.randint(0, 4)
        for sky in range(height):
            mc.setBlock(x-2, y+sky, z-2, block.STONE.id)
        height = random.randint(0, 4)
        for sky in range(height):
            mc.setBlock(x-3, y+sky, z-2, block.STONE.id)
        height = random.randint(0, 4)
        for sky in range(height):
            mc.setBlock(x-1, y+sky, z-3, block.STONE.id)
        height = random.randint(0, 4)
        for sky in range(height):
            mc.setBlock(x-2, y+sky, z-3, block.STONE.id)
        height = random.randint(0, 4)
        for sky in range(height):
            mc.setBlock(x-3, y+sky, z-3, block.STONE.id)


