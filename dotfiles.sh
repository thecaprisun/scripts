#!/bin/bash
cp -r ~/.config/alacritty ~/dotfiles
cp -r ~/.config/hypr ~/dotfiles
cp -r ~/.config/i3 ~/dotfiles
cp -r ~/.config/nvim ~/dotfiles
cp -r ~/.config/polybar ~/dotfiles
cp -r ~/.config/tofi ~/dotfiles
cp -r ~/.config/waybar ~/dotfiles
cp -r ~/.config/dunst ~/dotfiles
cp -r ~/.zshrc ~/dotfiles

cd ~/dotfiles 
git add --all
git commit
git push
