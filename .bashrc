#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=nano
export VISUAL=nano
export TERM=alacritty
export BROWSER=firefox

# add color
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

# file navigation
alias ..='cd ..'
alias dl='cd ~/Downloads'
alias c='clear'
alias la='ls -A'
alias ll='ls -AlF'

# git
alias ga='git add -u'
alias gs='git status'
alias gc='git commit -m'
alias gp='git push'

# helpful commands
alias rb='source ~/.bashrc'
alias da='date  "+%A [%d/%m/%Y] [%Ih:%mm:%Ss] Week No. = %W | Timezone = %:z, %Z"'
PS1='[\u@\h \W]\$ '

# Open terminal
neofetch
