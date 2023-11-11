#!/bin/bash

alias cp='cp -v'

# Desktop Environments & Window Managers
## GTK
cp "$HOME/.config/gtkrc-2.0" "$PWD/.config/gtkrc-2.0"
cp "$HOME/.config/gtkrc" "$PWD/.config/gtkrc"
cp "$HOME/.config/gtk-3.0/settings.ini" "$PWD/.config/gtk-3.0/settings.ini"
cp "$HOME/.config/gtk-3.0/colors.css" "$PWD/.config/gtk-3.0/colors.css"
cp "$HOME/.config/gtk-3.0/gtk.css" "$PWD/.config/gtk-3.0/gtk.css"
cp "$HOME/.config/gtk-3.0/window_decorations.css" "$PWD/.config/gtk-3.0/window_decorations.css"
cp -R "$HOME/.config/gtk-3.0/assets" "$PWD/.config/gtk-3.0/assets"
cp "$HOME/.config/gtk-4.0/settings.ini" "$PWD/.config/gtk-4.0/settings.ini"
cp "$HOME/.config/gtk-4.0/colors.css" "$PWD/.config/gtk-4.0/colors.css"
cp "$HOME/.config/gtk-4.0/gtk.css" "$PWD/.config/gtk-4.0/gtk.css"
cp "$HOME/.config/gtk-4.0/window_decorations.css" "$PWD/.config/gtk-4.0/window_decorations.css"

## KDE
cp "$HOME/.config/dolphinrc" "$PWD/.config/dolphinrc"
cp "$HOME/.config/konsolerc" "$PWD/.config/konsolerc"
cp "$HOME/.config/krunnerrc" "$PWD/.config/krunnerrc"
cp "$HOME/.config/kwinrc" "$PWD/.config/kwinrc"
cp "$HOME/.config/spectaclerc" "$PWD/.config/spectaclerc"
cp "$HOME/.config/Trolltech.conf" "$PWD/.config/Trolltech.conf"
cp "$HOME/.gtkrc-2.0" "$PWD/.gtkrc-2.0"
cp "$HOME/.config/xsettingsd/xsettingsd.conf" "$PWD/.config/xsettingsd/xsettingsd.conf"

## I3
cp "$HOME/.config/i3/config" "$PWD/.config/i3/config"
cp "$HOME/.config/polybar/config.ini" "$PWD/.config/polybar/config.ini"
cp "$HOME/.config/polybar/start.sh" "$PWD/.config/polybar/start.sh"

# Apps
## Dolphin Emu
cp "$HOME/.config/dolphin-emu/Dolphin.ini" "$PWD/.config/dolphin-emu/Dolphin.ini"
cp "$HOME/.config/dolphin-emu/Qt.ini" "$PWD/.config/dolphin-emu/Qt.ini"
cp "$HOME/.config/dolphin-emu/GFX.ini" "$PWD/.config/dolphin-emu/GFX.ini"
## Strawberry
cp "$HOME/.config/strawberry/strawberry.conf" "$PWD/.config/strawberry/strawberry.conf"
## VSCode
cp "$HOME/.config/Code/User/settings.json" "$PWD/.config/Code/User/settings.json"

# Terminal apps
## nano
cp "$HOME/.config/nano/nanorc" "$PWD/.config/nano/nanorc"
## pacman
cp "/etc/pacman.conf" "$PWD/etc/pacman.conf"
## kitty
cp "$HOME/.config/kitty/kitty.conf" "$PWD/.config/kitty/kitty.conf"

# Shells
## Starship
cp "$HOME/.config/starship.toml" "$PWD/.config/starship.toml"

## Bash
cp "$HOME/.bashrc" "$PWD/.bashrc"
cp "$HOME/.bash_profile" "$PWD/.bash_profile"

## X
cp "$HOME/.xinitrc" "$PWD/.xinitrc"
cp "$HOME/.Xresources" "$PWD/.Xresources"
cp "$HOME/setup.sh" "$PWD/setup.sh"

# Directories
cp "$HOME/.config/.directory" "$PWD/home/.config/.directory"
cp "$HOME/.local/.directory" "$PWD/home/.local/.directory"
cp "$HOME/.var/.directory" "$PWD/home/.var/.directory"
cp "$HOME/.vscode/.directory" "$PWD/home/.vscode/.directory"
cp "$HOME/Documents/.directory" "$PWD/home/Documents/.directory"
cp "$HOME/Downloads/.directory" "$PWD/home/Downloads/.directory"
cp "$HOME/Music/.directory" "$PWD/home/Music/.directory"
cp "$HOME/Pictures/.directory" "$PWD/home/Pictures/.directory"
cp "$HOME/Projects/.directory" "$PWD/home/Projects/.directory"
cp "$HOME/Videos/.directory" "$PWD/home/Videos/.directory"