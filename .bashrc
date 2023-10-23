#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.welcome_screen ]] && . ~/.welcome_screen

_set_liveuser_PS1() {
    PS1='[\u@\h \W]\$ '
    if [ "$(whoami)" = "liveuser" ] ; then
        local iso_version="$(grep ^VERSION= /usr/lib/endeavouros-release 2>/dev/null | cut -d '=' -f 2)"
        if [ -n "$iso_version" ] ; then
            local prefix="eos-"
            local iso_info="$prefix$iso_version"
            PS1="[\u@$iso_info \W]\$ "
        fi
    fi
}
_set_liveuser_PS1
unset -f _set_liveuser_PS1

ShowInstallerIsoInfo() {
    local file=/usr/lib/endeavouros-release
    if [ -r $file ] ; then
        cat $file
    else
        echo "Sorry, installer ISO info is not available." >&2
    fi
}


alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."

[[ "$(whoami)" = "root" ]] && return

[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

################################################################################
## Some generally useful functions.
## Consider uncommenting aliases below to start using these functions.
##
## October 2021: removed many obsolete functions. If you still need them, please look at
## https://github.com/EndeavourOS-archive/EndeavourOS-archiso/raw/master/airootfs/etc/skel/.bashrc

_open_files_for_editing() {
    # Open any given document file(s) for editing (or just viewing).
    # Note1:
    #    - Do not use for executable files!
    # Note2:
    #    - Uses 'mime' bindings, so you may need to use
    #      e.g. a file manager to make proper file bindings.

    if [ -x /usr/bin/exo-open ] ; then
        echo "exo-open $@" >&2
        setsid exo-open "$@" >& /dev/null
        return
    fi
    if [ -x /usr/bin/xdg-open ] ; then
        for file in "$@" ; do
            echo "xdg-open $file" >&2
            setsid xdg-open "$file" >& /dev/null
        done
        return
    fi

    echo "$FUNCNAME: package 'xdg-utils' or 'exo' is required." >&2
}

#------------------------------------------------------------

## Aliases for the functions above.
## Uncomment an alias if you want to use it.
##

# alias ef='_open_files_for_editing'     # 'ef' opens given file(s) for editing
# alias pacdiff=eos-pacdiff
################################################################################

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

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
alias grep='grep --color=auto' # add color to grep command
alias ga='git add' # shorten git add
alias gb='git branch' # shorten git branch
alias gc='git checkout' # shorten git checkout
alias gcl='git clone' # shorten git clone
alias gl='git log' # shorten git log
alias gp='git push' # shorten git push
alias gpl='git pull' # shorten git pull
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
