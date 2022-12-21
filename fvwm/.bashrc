#!/bin/bash

# Environmental Variables
export XDG_RUNTIME_DIR=/tmp/users/$(id -u)
export XDG_SESSION_TYPE=x11
export PATH=$PATH:$HOME/.local/bin
export XDEB_PKGROOT=$HOME/.config/xdeb

# Aliases
alias ls="ls -lah --color=always"
alias clear="clear && printf '\033c'"

# PS1
PS1="\[\e[0;91m\]\u\[\e[0m\][\[\e[0m\]\W\[\e[0m\]] \[\e[0;1m\]% \[\e[0m\]"
