# ~/.zshrc

# zsh history
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000

# SET SHELL OPTIONS
# autocd allows you to change to a directory just by typing its name, without needing to type cd first
# extendedglob enables extended pattern matching features, such as using parentheses for grouping and the | symbol for alternation
# nomatch causes Zsh to exit with an error if a filename wildcard pattern does not match any files, instead of leaving the pattern intact.
# notify tells Zsh to report immediately when a background job finishes running.
setopt autocd extendedglob nomatch notify interactive_comments globdots cdablevars

# Use emacs style key bindings
bindkey -e

# Use a descriptive name for the zcompdump file
zstyle :compinstall filename '/home/geckro/.zshrc'

# AUTOLOAD
# in zsh, the autoload command is used to load functions only when they are actually needed, which can improve shell startup time and memory usage
# -U tells autoload to load the function only once, even if it is called multiple times, to avoid unnecessary overhead.
# -z tells autoload to load the function in the background, so zsh doesn't hang while the function is being loaded.

# compinit is zsh autocompletion / completion suggestions when typing commands
# promptinit is a zsh function that allows you to configure the shell prompt.
autoload -Uz compinit promptinit

# turn on zsh autocompletion
# ssh/scp/sftp completion
# sudo completion
compinit
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

# turn zsh shell prompt to the walters theme ( user@hostname>                   ~ )
promptinit
prompt walters

# search history
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search


# ctrl
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
typeset -g -A key

key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
key[PageUp]="${terminfo[kpp]}"
key[PageDown]="${terminfo[knp]}"
key[Shift-Tab]="${terminfo[kcbt]}"

# setup key accordingly
[[ -n "${key[Home]}"      ]] && bindkey -- "${key[Home]}"       beginning-of-line
[[ -n "${key[End]}"       ]] && bindkey -- "${key[End]}"        end-of-line
[[ -n "${key[Insert]}"    ]] && bindkey -- "${key[Insert]}"     overwrite-mode
[[ -n "${key[Backspace]}" ]] && bindkey -- "${key[Backspace]}"  backward-delete-char
[[ -n "${key[Delete]}"    ]] && bindkey -- "${key[Delete]}"     delete-char
[[ -n "${key[Up]}"        ]] && bindkey -- "${key[Up]}"         up-line-or-history
[[ -n "${key[Down]}"      ]] && bindkey -- "${key[Down]}"       down-line-or-history
[[ -n "${key[Left]}"      ]] && bindkey -- "${key[Left]}"       backward-char
[[ -n "${key[Right]}"     ]] && bindkey -- "${key[Right]}"      forward-char
[[ -n "${key[PageUp]}"    ]] && bindkey -- "${key[PageUp]}"     beginning-of-buffer-or-history
[[ -n "${key[PageDown]}"  ]] && bindkey -- "${key[PageDown]}"   end-of-buffer-or-history
[[ -n "${key[Shift-Tab]}" ]] && bindkey -- "${key[Shift-Tab]}"  reverse-menu-complete

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
	autoload -Uz add-zle-hook-widget
	function zle_application_mode_start { echoti smkx }
	function zle_application_mode_stop { echoti rmkx }
	add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
	add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi
# SOURCE
# source is a shell command that reads and executes commands from a file. When you source a file any functions in that file can be used.

# zsh-syntax-highlighting is a zsh plugin that provides syntax highlighting.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-autosuggestions provides auto-suggestions for partially typed commands.
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# command-not-found is added by pkgfile which searches the pkgfile database when you enter the wrong command.
source /usr/share/doc/pkgfile/command-not-found.zsh

# this imports all aliases from aliases.zsh
source ~/.config/zsh/aliases.zsh

# this imports all environmental variables from envar.zsh
source ~/.config/zsh/envar.zsh
