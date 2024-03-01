if [[ -z "$XDG_CONFIG_HOME" ]]
then
        export XDG_CONFIG_HOME="$HOME/.config/"
fi

if [[ -d "$XDG_CONFIG_HOME/zsh" ]]
then
        export ZDOTDIR="$XDG_CONFIG_HOME/zsh/"
fi

# env variables
export XDG_RUNTIME_DIR=/tmp/xdg-runtime
export XAUTHORITY=/tmp/Xauthority

export BROWSER=firefox
export EDITOR=vim

# finalization
[ -d "${XDG_RUNTIME_DIR}" ] || mkdir "${XDG_RUNTIME_DIR}"
chmod 700 "${XDG_RUNTIME_DIR}"

# xorg/X11
[[ "$(tty)" == "/dev/tty1" ]] && startx ${HOME}/.xinitrc
