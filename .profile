#!/bin/sh

# Profile file. Runs on login

export SCRIPTS="$HOME/.scripts/"
export EDITOR="nvim"
export IDE="code"
export TERMINAL="termite"
export BROWSER="firefox"
export WALLPAPER="$HOME/.config/wall.jpg"
export LOCKBG="$HOME/.config/lock.png"
export GREETERBG="$HOME/.config/greeter.jpg"
export GTKTHEME="Numix"
export TASKSFILE="$HOME/.config/tasks"

export PATH="$PATH:$(du "$SCRIPTS" | cut -f2 | tr '\n' ':' | sed 's/:*$//')" # add script folder to path variable

# Start graphical server if i3 not already running. (not needed currently since lightdm is used)
#[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx
