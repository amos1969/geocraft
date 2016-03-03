from mcpi.minecraft import Minecraft
from mcpi import block
mc = Minecraft.create()

def main():
    while True:
        pos = mc.player.getPos()
        x = pos.x
        y = pos.y
        z = pos.z
        stacks(x, y, z)

def stacks(i, j, k):
    stacker(i-3, j, k-3)
    stacker(i-3, j, k+3)
    stacker(i+3, j, k-3)
    stacker(i+3, j, k+3)

def stacker(a, b, c):
    mc.setBlocks(a, b, c, a, b+5, c, block.DIAMOND_BLOCK.id)
    
main()
