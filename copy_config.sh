alias cp="cp -v"

# ZSH
cp "$HOME/.zshrc" "$PWD/.zshrc"
cp "$HOME/.config/zsh/aliases.zsh" "$PWD/.config/zsh/aliases.zsh"
cp "$HOME/.config/zsh/envar.zsh" "$PWD/.config/zsh/envar.zsh"

# BASH
cp "$HOME/.bashrc" "$PWD/.bashrc"
cp "$HOME/.bash_profile" "$PWD/.bash_profile"

# KDE 
cp "$HOME/.config/dolphinrc" "$PWD/.config/dolphinrc"
cp "$HOME/.config/elisarc" "$PWD/.config/elisarc"
cp "$HOME/.config/katerc" "$PWD/.config/katerc"
cp "$HOME/.config/spectaclerc" "$PWD/.config/spectaclerc"
sed -i '/lastSaveLocation/d' "$PWD/.config/spectaclerc"

# Nano
cp "$HOME/.config/nano/nanorc" "$PWD/.config/nano/nanorc"

# Pacman
cp "/etc/pacman.conf" "$PWD/etc/pacman.conf"

# KeePassXC
cp "$HOME/.config/keepassxc/keepassxc.ini" "$PWD/.config/keepassxc/keepassxc.ini"
sed -i '/BackupFilePathPattern/d' "$PWD/.config/keepassxc/keepassxc.ini"
sed -i '/KeeShare/d' "$PWD/.config/keepassxc/keepassxc.ini"
sed -i '/QuietSuccess/d' "$PWD/.config/keepassxc/keepassxc.ini"

# MPV
cp "$HOME/.config/mpv/mpv.conf" "$PWD/.config/mpv/mpv.conf"
