import codebug_tether
import codebug_tether.sprites
import time

codebug = codebug_tether.CodeBug()
codebug.set_leg_io(0, 1)
codebug.set_pullup(0, 1)
codebug.clear()

message = codebug_tether.sprites.StringSprite("Hello MOSI")

while True:
    if codebug.get_input(0) == 0:
        for i in range (50):  
            codebug.draw_sprite(-i, 0, message)
            time.sleep(0.05)      
    else:
        codebug.clear()

    
