from gpiozero import LED
import time

red = LED(17)
amber = LED(27)
green = LED(9)

while True:
    red.on()
    time.sleep(1)
    red.off()
    time.sleep(1)
    
