#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

cyan='\033[1;36m\]';
red='\[\033[1;31m\]'
green='\[\033[1;32m\]'
white='\[\033[0m\]'
purple='\[\033[1;35m\]'
blue='\[\033[1;34m\]'
yellow='\[\033[1;33m\]'

force_color_prompt=yes

alias vi='vim '
alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='\[\033[1;0m\][\[\033[1;35m\]\u@\h \[\033[1;0m\]\w\[\033[1;0m\]] \$ '
