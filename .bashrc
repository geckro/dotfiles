#
# title: .bashrc
# contrib: geckronome
# update: 2023-11-10
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ "$(whoami)" = "root" ]] && return

# limits recursive functions
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
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_ENABLE_HIGHDPI_SCALING=1
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
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
alias ...='cd ../..' # go up two directories
alias ..='cd ..' # go up one directory
alias c='clear' # shorten clear command
alias cd..='cd ..'
alias cls='clear' # windows variant
alias cp='cp -iv' # prompt for confirmation before copying files and add verbosity
alias df='df -h' # display free disk space human readable
alias diff='diff --color=auto' # add color to diff command
alias dir='dir --color=auto' # add color to dir command
alias dl='cd ~/Downloads'
alias dmesg='dmesg --color=auto' # add color to dmesg command
alias du='du -h' # display disk usage human readable
alias egrep='egrep --color=auto' # add color to egrep command
alias fgrep='fgrep --color=auto' # add color to fgrep command
alias free='free -h' # make human readable
alias ga='git add' # shorten git add
alias gb='git branch' # shorten git branch
alias gc='git checkout' # shorten git checkout
alias gcl='git clone' # shorten git clone
alias gl='git log' # shorten git log
alias gp='git push' # shorten git push
alias gpl='git pull' # shorten git pull
alias grep='grep --color=auto' # add color to grep command
alias gs='git status' # shorten git status
alias ip="ip --color=auto" # add color to ip command
alias la='ls -A' # alias
alias ln='ln -v' # make symlinks verbose
alias ls='ls --color=auto --human-readable --classify' # add color to ls, make size human readable, append classification to file (Pictures > Pictures/)
alias mkdir='mkdir -pv' # create parent directories if they don't exist and add verbosity
alias mv='mv -iv' # prompt for confirmation before moving files and add verbosity
alias open="xdg-open" # alias
alias ping='ping -c 10' # ping 10 times instead of infinitely
alias rm='rm -iv' # prompt for confirmation before deleting files and add verbosity
alias rmdir='rmdir -pv' # remove directory and ancestors and add verbosity
alias tree='tree -c' # add color to tree command
alias vdir='vdir --color=auto'  # add color to vdir command

eval "$(starship init bash)"
