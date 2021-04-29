#!/bin/sh

## By: DN-debug
## you can put case if there's more than one application that needs to be toggled
## wayland will give your trouble working with wmctrl

_isRunning() {
    ps -o comm= -C "$1" 2>/dev/null | grep -x "$1" >/dev/null 2>&1
}

if ! _isRunning pamac-manager; then
    pamac-manager &
    notify-send "Starting Pamac-Manager"
else
   wmctrl -r 'Add/Remove Software' -b toggle,hidden
fi


## One can use the short-had method : _isRunning "program-name" || ("program_name" &) 