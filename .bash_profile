# shellcheck disable=SC2148
# uncomment if using an Xorg window manager
#if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
#  exec startx
#fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
