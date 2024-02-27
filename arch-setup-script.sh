#!/bin/bash

#                    _        _____      _                  _____           _       _   
#     /\            | |      / ____|    | |                / ____|         (_)     | |  
#    /  \   _ __ ___| |__   | (___   ___| |_ _   _ _ __   | (___   ___ _ __ _ _ __ | |_ 
#   / /\ \ | '__/ __| '_ \   \___ \ / _ \ __| | | | '_ \   \___ \ / __| '__| | '_ \| __|
#  / ____ \| | | (__| | | |  ____) |  __/ |_| |_| | |_) |  ____) | (__| |  | | |_) | |_ 
# /_/    \_\_|  \___|_| |_| |_____/ \___|\__|\__,_| .__/  |_____/ \___|_|  |_| .__/ \__|
#                                                 | |                        | |        
#                                                 |_|                        |_|       
#
# This is a setup script. Not an install script. It just copies my dotfiles and install the packages I use.

# Installing yay

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ~

# Cloning my dotfiles

git clone https://github.com/thecaprisun/dotfiles.git
cd dotfiles
cp -r alacritty ~/.config
cp -r i3 ~/.config
cp -r nvim ~/.config
cp -r waybar ~/.config
cp -r polybar ~/.config
cp -r tofi ~/.config
cp -r hypr ~/.config
cp -r dunst ~/.config
cp -r  ~/.config
cp -r .tmux.config ~

# Installing needed packages

sudo pacman -S alacritty i3 neovim waybar i3 polybar dunst firefox zsh lsd hyprpaper gdm networkmanager
yay -S tofi spotify prismlauncher compfy

# Systemctl

sudo systemctl enable gdm
sudo systemctl enable NetworkManager
sudo systemctl enable bluetooth

echo "done!"