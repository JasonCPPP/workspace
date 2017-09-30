
import curses
from curses.textpad import Textbox, rectangle
import time
a=curses.initscr()
curses.start_color()
a.addstr("Pretty text", curses.COLOR_RED)
a.refresh()
pad = curses.newpad(100, 100)
        # These loops fill the pad with letters; addch() is
        # explained in the next section
for y in range(0, 99):
    for x in range(0, 99):
        pad.addch(y,x, ord('a') + (x*x+y*y) % 26)
        #stdscr.addstr(0, 0, "Enter IM message: (hit Ctrl-G to send)")

        #editwin = curses.newwin(5,30, 2,1)
        #rectangle(stdscr, 1,0, 1+5+1, 1+30+1)
        #stdscr.refresh()

        #box = Textbox(editwin)

        # Let the user edit until Ctrl-G is struck.
        #box.edit()

                                    # Get resulting contents
        #message = box.gather()
        #return message
pad.refresh( 0,0, 5,5, 20,75)
time.sleep(10)
curses.endwin()
