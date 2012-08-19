#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

#mpdas &
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
#exec xterm
#exec --exit-with-session openbox-session

exec openbox-session
