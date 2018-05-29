import curses
import curses.textpad as textpad

def main(screen):
    """screen is a curses screen passed from the wrapper"""

    while True:
        event = screen.getch() 
        if event :
            textpad.Textbox(curses.newwin(1,13,4,0), insert_mode=True).edit()
            textpad.Textbox(curses.newwin(1,13,4,16), insert_mode=True).edit()
            screen.refresh()      

if __name__ == '__main__':     
    curses.wrapper(main) 
