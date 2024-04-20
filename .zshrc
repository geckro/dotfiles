setopt autocd extendedglob nomatch notify correct
bindkey -e

zstyle :compinstall filename '$HOME/.zshrc'

# Auto-tab complete
autoload -Uz compinit
compinit

PS1='%B%F{red}[%F{yellow}%n%F{green}@%F{cyan}%m %F{blue}%~%F{magenta}] %F{white}%# %b%f'

# Setup histfile
HISTFILE=~/.cache/shell/zsh/HISTFILE
HISTSIZE=10000
SAVEHIST=10000

zstyle ':completion::complete:*' gain-privileges 1

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

_comp_options+=(globdots) # Include hidden files

bindkey '^[[C' forward-char     # Right key
bindkey '^[[D' backward-char    # Left key
bindkey '^[Oc' forward-word     #
bindkey '^[Od' backward-word    #
bindkey '^[[1;5D' backward-word #
bindkey '^[[1;5C' forward-word  #
bindkey '^H' backward-kill-word # delete previous word with ctrl+backspace
bindkey '^[[Z' undo             # Shift+tab undo last action

# get bash/zsh shell environmental variables
source "$HOME/.config/shell/envars"

# get bash/zsh shell aliases
source "$HOME/.config/shell/aliases"

# Source fancy zsh plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
