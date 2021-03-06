import curses
import curses.textpad

def main(stdscr):
    stdscr.clear()
    stdscr.refresh()
    win = curses.newwin(5, 60, 5, 10)

    tb = curses.textpad.Textbox(win, insert_mode=True)
    text = tb.edit()
    curses.flash()
    win.clear()
    win.addstr(0, 0, text.encode('utf-8'))
    win.refresh()
    win.getch()

curses.wrapper(main)
