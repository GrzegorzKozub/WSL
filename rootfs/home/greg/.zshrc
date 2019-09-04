typeset -U path
path=(~/.gem/ruby/2.5.0/bin ~/.local/bin ~/.yarn/bin ~/go/bin $path[@])

export DOTNET_CLI_TELEMETRY_OPTOUT=1
export EDITOR='vim'
export ENABLE_CORRECTION=true
export ERL_AFLAGS='-kernel shell_history enabled'
export ZSH=~/.oh-my-zsh

ZSH_THEME='greg'

plugins=(yarn)

source $ZSH/oh-my-zsh.sh

setopt nobeep

alias ls='ls --color=auto --group-directories-first --human-readable'

# https://github.com/microsoft/WSL/issues/352
umask 022
