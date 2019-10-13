#!/bin/sh

# Profile file. Execute by lightdm on login
export EDITOR="nvim"
export IDE="code"
export TERMINAL="termite"
export BROWSER="firefox"
export SCRIPTS="$HOME/.scripts/"
export WALLPAPER="$HOME/.config/wall.jpg"
export LOCKBG="$HOME/.config/lock.png"
export GREETERBG="$HOME/.config/greeter.jpg"
export GTKTHEME="Numix"
export TASKSFILE="$HOME/.config/tasks"
# add script folder to path variable
export PATH="$PATH:$(du "$SCRIPTS" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
# change zsh dot-directory
export ZDOTDIR="$HOME/.config/zsh"