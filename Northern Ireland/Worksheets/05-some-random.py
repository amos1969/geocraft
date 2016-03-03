from mcpi.minecraft import Minecraft
from mcpi import  block
import random

mc = Minecraft.create()
some_blocks = [block.GOLD_BLOCK.id, block.DIAMOND_BLOCK.id,
               block.LAPIS_LAZULI_BLOCK.id, block.OBSIDIAN.id,
               block.IRON_ORE.id, block.BRICK_BLOCK.id]

while True:
    pos = mc.player.getPos()
    x = pos.x
    y = pos.y
    z = pos.z
    a_block = random.choice(some_blocks)
    mc.setBlock(x, y-1, z, a_block)





