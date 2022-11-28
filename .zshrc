#
# .zshrc
#

PS1='%B%F{red}[ %F{yellow}%n%F{green}@%F{blue}%m %F{magenta}%~ ] %F{white}%# %b%f'


# history file
HISTFILE=~/.config/zsh/.zsh_history_file
HISTSIZE=1000
SAVEHIST=1000

setopt autocd beep extendedglob nomatch notify
bindkey -e
zstyle :compinstall filename '/home/geck/.zshrc'
autoload -Uz compinit promptinit
compinit
promptinit

# terminal prompt colors?
autoload -U colors zsh/terminfo
colors

#
# variables
#

export BROWSER="chromium"
export EDITOR="nano"
export MANPAGER="less -R --use-color -Dd+r -Du+b"
export LESS='-R --use-color -Dd+r$Du+b'

LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:';
export LS_COLORS
#
# aliases
#

# add colour to commands
alias ip="ip -color=auto"
alias grep="grep --color=auto"
alias egrep="egrep --colour=auto"
alias fgrep='fgrep --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias diff="diff --color=auto"
alias ls="ls --color=auto --human-readable --classify"
alias la="ls -A"

# interactive  commands
alias mv="mv -iv"
alias cp="cp -iv"
alias rm="rm -Iv"
alias rmdir="rmdir -v"
alias ln="ln -v"
alias mkdir="mkdir -v"

# file navigation
alias ..='cd ..'
alias ...='cd ../..'
alias dl='cd ~/Downloads'
alias ms='cd ~/Music'
alias vd='cd ~/Videos'
alias dc='cd ~/Documents'
alias dk="cd ~/Desktop"

# terminal qol
alias c="clear"
alias cls="clear" # Windows variant
alias open="xdg-open"
alias df='df -h'
alias free='free -m'

# git
alias ga='git add -u'
alias gs='git status'
alias gc='git commit -m'
alias gps='git push'
alias gpl='git pull'

alias r="source .zshrc"
alias zsh="nano .zshrc"
#
# keymaps
#
typeset -g -A key

bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "key[Up]" up-line-or-history
bindkey "key[Down]" up-line-or-history
bindkey "key[Left]" backward-char
bindkey "key[Right]" forward-char
bindkey "key[Insert]" overwrite-mode
bindkey "key[Home]" beginning-of-line
bindkey "key[End]" end-of-line

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/doc/pkgfile/command-not-found.zsh
