import codebug_tether
import codebug_tether.sprites

import time

codebug = codebug_tether.CodeBug()
codebug.set_leg_io(0, 1)
codebug.set_pullup(0, 1)
codebug.clear()

sprite1 = codebug_tether.sprites.Sprite(5, 5)
sprite1.set_row(0, 0b11111)
sprite1.set_row(1, 0b11111)
sprite1.set_row(2, 0b11111)
sprite1.set_row(3, 0b11111)
sprite1.set_row(4, 0b11111)

while True:
    if codebug.get_input(0) == 0:
        codebug.draw_sprite(0, 0, sprite1)
    else:
        codebug.clear()
    
