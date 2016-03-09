from gpiozero import LED
from mcpi.minecraft import Minecraft
from mcpi import block
red = LED(17)
amber = LED(27)
green = LED(9)
mc = Minecraft.create()

while True:
    pos = mc.player.getPos()
    blockType = mc.getBlockWithData(pos.x, pos.y-1, pos.z)
    if blockType.data == 14:
        red.on()
    else:
        red.off()
