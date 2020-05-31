#!/bin/sh

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local"

# Profile file. Execute by lightdm on login
export EDITOR="nvim"
export IDE="code"
export TERMINAL="termite"
export BROWSER="brave"
export SCRIPTS="$HOME/.scripts/"
export WALLPAPER="$XDG_CONFIG_HOME/wall.jpg"
export LOCKBG="$XDG_CONFIG_HOME/lock.png"
export GREETERBG="$XDG_CONFIG_HOME/greeter.jpg"
export GTKTHEME="Numix"
# add script folder to path variable
export PATH="$PATH:$(du "$SCRIPTS" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# change zsh dot-directory
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Cleanup home directory
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/android"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export PYLINTHOME="$XDG_CACHE_HOME/pylint"
export TERMINFO="$XDG_DATA_HOME/share/terminfo"
export TERMINFO_DIRS="$XDG_DATA_HOME/share/terminfo:/usr/share/terminfo"
export LESSKEY="$XDG_CONFIG_HOME/less/lesskey"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export ERRFILE="$XDG_CACHE_HOME/xsession-errors"