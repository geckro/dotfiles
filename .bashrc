#
# title: .bashrc
# update: 2023-12-18
#

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

# exports
export EDITOR=nano
export VISUAL=nano
export BROWSER=firefox

# Uncomment if using window manager
#export QT_AUTO_SCREEN_SCALE_FACTOR=1
#export QT_ENABLE_HIGHDPI_SCALING=1
#export GDK_SCALE=2
#export GDK_DPI_SCALE=0.5
#export QT_QPA_PLATFORMTHEME=qt5ct

HISTSIZE=1000
HISTFILESIZE=2000

# Disable the bell
if [[ $iatest > 0 ]]; then bind "set bell-style visible"; fi

# Ignore case on auto-completion
# Note: bind used instead of sticking these in .inputrc
if [[ $iatest > 0 ]]; then bind "set completion-ignore-case on"; fi

# Show auto-completion list automatically, without double tab
if [[ $iatest > 0 ]]; then bind "set show-all-if-ambiguous On"; fi

# aliases
## color
alias diff='diff --color=auto'
alias dir='dir --color=auto'
alias dmesg='dmesg --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'
alias ls='ls --color=auto -hF --group-directories-first' # h: make human readable f: append classifications
alias tree='tree -c'
alias vdir='vdir --color=auto'

## directory navigation
alias ...='cd ../..'
alias ..='cd ..'
alias cd..='cd ..'
alias cp='cp -iv' # i: prompt v: verbose
alias la='ls -A'
alias ln='ln -v' # v: verbose
alias mkdir='mkdir -pv' # p: create parents v: verbose
alias mv='mv -iv'  # i: prompt v: verbose
alias open='xdg-open'
alias rm='rm -Iv'  # I: prompt for 3 v: verbose
alias rmdir='rmdir -pv' # p: remove ancestors v: verbose

## shorten commands
alias c='clear'
alias cls='clear' # windows
alias dl='cd $HOME/Downloads'
alias dc='cd $HOME/Documents'
alias pc='cd $HOME/Pictures'
alias vd='cd $HOME/Videos'
alias de='cd $HOME/Desktop'
alias conf='cd $HOME/.config'
alias g='git'
alias bashrc='$EDITOR $HOME/.bashrc'
alias i3conf='$EDITOR $HOME/.config/i3/config'
alias polybarconf='$EDITOR $HOME/.config/polybar/config.ini'
## modify commands
alias df='df -h' # h: human readable
alias du='du -h' # h: human readable
alias free='free -h' # h: human readable
alias ping='ping -c 10' # c: ping 10 times

eval "$(starship init bash)"
