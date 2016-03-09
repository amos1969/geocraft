from mcpi.minecraft import Minecraft
from mcpi import block
from gpiozero import LED
red = LED(17)
amber = LED(27)
green = LED(9)
mc = Minecraft.create()

while True:
    pos = mc.player.getPos()
    blockType = mc.getBlockWithData(pos.x, pos.y-1, pos.z)
    if blockType.data == 14:
        red.on()
        amber.off()
        green.off()
    elif blockType.data == 4:
        red.off()
        amber.on()
        green.off()
    elif blockType.data == 5:
        red.off()
        amber.off()
        green.on()
    else:
        red.off()
        amber.off()
        green.off()
        
    



