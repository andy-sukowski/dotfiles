#!/bin/sh

# Create directories
mkdir -pv "$HOME/.zprompts"
mkdir -pv "$HOME/.config/nvim"
mkdir -pv "$HOME/.config/picom"
mkdir -pv "$HOME/.config/gtk-3.0"

# Change directory
cd "${0%/*}"

ln -frsv ".zshrc" "$HOME/.zshrc"
ln -frsv ".zprompts/prompt_gentoo_setup" "$HOME/.zprompts/prompt_gentoo_setup"
ln -frsv ".config/nvim/init.vim" "$HOME/.config/nvim/init.vim"
ln -frsv ".config/picom/picom.conf" "$HOME/.config/picom/picom.conf"
ln -frsv ".config/gtk-3.0/settings.ini" "$HOME/.config/gtk-3.0/settings.ini"
ln -frsv ".gtkrc-2.0" "$HOME/.gtkrc-2.0"
ln -frsv ".xinitrc" "$HOME/.xinitrc"

# Install vim-plug
sh -c 'curl -fLo '${XDG_DATA_HOME:-$HOME/.local/share}'/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install plugins
nvim +PlugInstall +qall
