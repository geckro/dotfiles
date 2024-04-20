# shellcheck disable=SC2148
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# If user is root, don't do anything
[[ "$(whoami)" = "root" ]] && return

# limits recursive functions to 100
[[ -z "$FUNCNEST" ]] && export FUNCNEST=100

# Use the up and down arrow keys for finding a command in history
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# Enable bash programmable completion features in interactive shells
if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

# append to history instead of overwriting it
shopt -s histappend
shopt -s checkwinsize

HISTSIZE=10000
HISTFILESIZE=10000

# Disable the bell
if [[ $iatest > 0 ]]; then bind "set bell-style visible"; fi

# Ignore case on auto-completion
# Note: bind used instead of sticking these in .inputrc
if [[ $iatest > 0 ]]; then bind "set completion-ignore-case on"; fi

# Show auto-completion list automatically, without double tab
if [[ $iatest > 0 ]]; then bind "set show-all-if-ambiguous On"; fi

# get bash/zsh shell environmental variables
source "$HOME/.config/shell/envars"

# get bash/zsh shell aliases
source "$HOME/.config/shell/aliases"

eval "$(starship init bash)"
