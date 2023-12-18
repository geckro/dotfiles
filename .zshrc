#
# title: .zshrc
# update: 2023-12-18
#

HISTFILE=~/.config/zsh/HISTFILE
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch notify correct
bindkey -e

zstyle :compinstall filename '/home/geck/.zshrc'

autoload -Uz compinit
compinit

PS1='%B%F{red}[%F{yellow}%n%F{green}@%F{cyan}%m %F{blue}%~%F{magenta}] %F{white}%# %b%f'

zstyle ':completion::complete:*' gain-privileges 1

autoload -U up-line-or-beginning-search 
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search


_comp_options+=(globdots) # Include hidden files

bindkey '^[[C'  forward-char                                    # Right key
bindkey '^[[D'  backward-char                                   # Left key
bindkey '^[Oc' forward-word                                     #
bindkey '^[Od' backward-word                                    #
bindkey '^[[1;5D' backward-word                                 #
bindkey '^[[1;5C' forward-word                                  #
bindkey '^H' backward-kill-word                                 # delete previous word with ctrl+backspace
bindkey '^[[Z' undo                                             # Shift+tab undo last action

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

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
