#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# command line aliases
alias ....='cd ../../..' # go up three directories
alias ...='cd ../..' # go up two directories
alias ..='cd ..' # go up one directory
alias c='clear' # shorten clear command
alias cls='clear' # windows variant
alias cp='cp -iv' # prompt for confirmation before copying files and add verbosity
alias df='df -h' # display free disk space human readable
alias diff='diff --color=auto' # add color to diff command
alias dir='dir --color=auto' # add color to dir command
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
alias mkd='mkdir' # shorten
alias mkdir='mkdir -pv' # create parent directories if they don't exist and add verbosity
alias mv='mv -iv' # prompt for confirmation before moving files and add verbosity
alias open="xdg-open" # alias
alias rm='rm -iv' # prompt for confirmation before deleting files and add verbosity
alias rmdir='rmdir -pv' # remove directory and ancestors and add verbosity
alias syu='sudo pacman -Syu' # shorten pacman -Syu
alias tree='tree -c' # add color to tree command
alias vdir='vdir --color=auto'  # add color to vdir command