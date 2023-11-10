#!/bin/bash

alias cp='cp -v'

# Desktop Environments
# KDE
cp "$HOME/.config/dolphinrc" "$PWD/.config/dolphinrc"
cp "$HOME/.config/gtkrc-2.0" "$PWD/.config/gtkrc-2.0"
cp "$HOME/.config/gtkrc" "$PWD/.config/gtkrc"
cp "$HOME/.config/konsolerc" "$PWD/.config/konsolerc"
cp "$HOME/.config/krunnerrc" "$PWD/.config/krunnerrc"
cp "$HOME/.config/kwinrc" "$PWD/.config/kwinrc"
cp "$HOME/.config/spectaclerc" "$PWD/.config/spectaclerc"
cp "$HOME/.config/Trolltech.conf" "$PWD/.config/Trolltech.conf"
cp "$HOME/.gtkrc-2.0" "$PWD/.gtkrc-2.0"
cp "$HOME/.config/xsettingsd/xsettingsd.conf" "$PWD/.config/xsettingsd/xsettingsd.conf"


# Apps
# Strawberry
cp "$HOME/.config/strawberry/strawberry.conf" "$PWD/.config/strawberry/strawberry.conf"
# VSCode
cp "$HOME/.config/Code/User/settings.json" "$PWD/.config/Code/User/settings.json"

# Terminal apps
# nano
cp "$HOME/.config/nano/nanorc" "$PWD/.config/nano/nanorc"
# pacman
cp "/etc/pacman.conf" "$PWD/etc/pacman.conf"

# Shells
# Starship
cp "$HOME/.config/starship.toml" "$PWD/.config/starship.toml"

# Bash
cp "$HOME/.bashrc" "$PWD/.bashrc"
cp "$HOME/.bash_profile" "$PWD/.bash_profile"

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