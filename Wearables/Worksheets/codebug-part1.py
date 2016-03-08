import codebug_tether
import codebug_tether.sprites
import time

codebug = codebug_tether.CodeBug()
message = codebug_tether.sprites.StringSprite("Hello MOSI")

for i in range (50):  
    codebug.draw_sprite(0-i, 0, message)
    time.sleep(0.1)

    
