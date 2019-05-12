#!/bin/sh

# Profile file. Runs on login

export SCRIPTS="$HOME/.scripts/"
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="google-chrome-stable"
export WALLPAPER="$HOME/.config/wall.jpg"
export LOCKBG="$HOME/.config/lock.png"
export GTKTHEME="Numix"

export PATH="$PATH:$(du "$SCRIPTS" | cut -f2 | tr '\n' ':' | sed 's/:*$//')" # add script folder to path variable

# set wallpaper
feh --bg-fill $WALLPAPER

