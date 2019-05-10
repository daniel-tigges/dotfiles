#!/bin/sh

# Profile file. Runs on login

export PATH="$PATH:$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')" # add script folder to path variable

export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="google-chrome-stable"
export WALLPAPER="$HOME/.config/wall.jpg"
export LOCKBG="$HOME/.config/lock.png"

# set wallpaper
feh --bg-fill $WALLPAPER

