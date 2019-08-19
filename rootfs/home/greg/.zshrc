typeset -U path
path=(~/.local/bin $path[@])

export EDITOR='vim'
export ENABLE_CORRECTION=true
export ZSH=~/.oh-my-zsh

ZSH_THEME='greg'

plugins=()

source $ZSH/oh-my-zsh.sh

setopt nobeep

alias ls='ls --color=auto --group-directories-first --human-readable'

# https://github.com/microsoft/WSL/issues/352
umask 022
