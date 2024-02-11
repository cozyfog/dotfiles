# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1='\e[0;7m\u@\h \e[7;0m \W\e[m \$ '

#mkdir -p /tmp/swaytmp
#export XDG_RUNTIME_DIR=/tmp/swaytmp

# If running from tty1, start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi
