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
alias ...='cd ../..'
alias dl='cd ~/Downloads'
alias c='clear'
alias cls='clear'
alias ll='ls -AlF'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias mkdir='mkdir -v'
alias open="xdg-open"

# git
alias ga='git add -u'
alias gs='git status'
alias gc='git commit -m'
alias gps='git push'
alias gpl='git pull'

# easier to read commands
alias df='df -h'
alias free='free -m'

# reload bash
alias rb='source ~/.bashrc'

# helpful commands
alias da='date  "+%A [%d/%m/%Y] [%Ih:%mm:%Ss] Week No. = %W | Timezone = %:z, %Z"'
alias playmusic='flatpak run io.mpv.Mpv --no-audio-display --shuffle ~/Music/*'
alias dlytmusic='yt-dlp -x -f bestaudio --no-playlist -o "~/Music/%(title)s.%(ext)s"'
alias syu='sudo pacman -Syu'
alias rns='sudo pacman -Rns'
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=1000
setopt autocd extendedglob nomatch
unsetopt notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/geck/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
