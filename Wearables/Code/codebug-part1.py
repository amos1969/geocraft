import codebug_tether
import codebug_tether.sprites
import time

codebug = codebug_tether.CodeBug()
message = codebug_tether.sprites.StringSprite("Hello MSI")

for i in range (50):  
    codebug.draw_sprite(-i, 0, message)
    time.sleep(0.1)

    
