#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export BROWSER=librewolf
export TERM=konsole
export VISUAL=code
export EDITOR=code


[[ "$(whoami)" = "root" ]] && return

# add color to commands
alias ls='ls --color=auto'
alias la='ls -A --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias ip='ip -color=auto'
alias diff='diff --color=auto'

# file nav
alias ..='cd ..'
alias dl='cd ~/Downloads'
alias c='clear'
alias cls='clear'
alias la='ls -A'
alias ll='ls -AlF'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# git
alias ga='git add -u'
alias gs='git status'
alias gc='git commit -m'
alias gp='git push'

# easier to read commands
alias df='df -h'
alias free='free -m'

# reload bash
alias rb='source ~/.bashrc'

# helpful commands
alias da='date  "+%A [%d/%m/%Y] [%Ih:%mm:%Ss] Week No. = %W | Timezone = %:z, %Z"'
alias playmusic='mpv --no-border --autofit=40%x50% --force-window --shuffle ~/Music/*'
alias dlytmusic='yt-dlp -x -f bestaudio --no-playlist -o "~/Music/%(title)s.%(ext)s"'
alias syu='sudo pacman -Syu'
alias rns='sudo pacman -Rns'

ex ()
{
  if [ -f "$1" ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
