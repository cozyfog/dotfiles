HISTFILE=$XDG_CONFIG_HOME/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000

# settings
setopt autocd extendedglob
unsetopt beep
bindkey -e

# compinstall
zstyle :compinstall filename '/home/daniel/.zshrc'
zstyle ':completion:*' menu select
zmodload zsh/complist

autoload -Uz compinit
compinit -d ~/.cache/zcompdump

# zsh config
[[ $- != *i* ]] && return

source ${XDG_CONFIG_HOME}zsh/aliasrc

# ctrl+backspace, ctrl+left, ctrl+right
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^H' backward-kill-word

# colored prompt
autoload -U colors && colors
PS1="%B%{$fg[yellow]%}%n%{$fg[red]%}@%{$fg[blue]%}%M %{$reset_color%}(%{$fg[magenta]%}%~%{$reset_color%}) →%b "

# GIT Prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='${vcs_info_msg_0_}'
zstyle ':vcs_info:git:*' formats '%b'

# Plugins!
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
