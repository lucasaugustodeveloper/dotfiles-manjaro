#!/usr/bin/env bash

# terminator
ln -s ~/dotfiles/config/terminator/ ~/.config/terminator

# alacritty
ln -s ~/dotfiles/config/alacritty/ ~/.config/alacritty

# gitmoji-nodejs
ln -s ~/dotfiles/config/gitmoji-nodejs/ ~/.config/gitmoji-nodejs

# sublime
# ln -s ~/dotfiles/config/sublime/Packages/User/ ~/.config/sublime-text-4/Packages/User

# git
ln -s ~/dotfiles/config/gitconfig/.gitconfig ~/.gitconfig

# Powerlevel10k
ln -s ~/dotfiles/config/zsh/.p10k.zsh ~/.p10k.zsh

# ZSH
if [ $(ls ~/.zshrc) ]; then
    rm ~/.zshrc
fi
ln -s ~/dotfiles/config/zsh/.zshrc ~/.zshrc

# LunarVim
ln -s ~/dotfiles/config/lvim/config.lua ~/.config/lvim/config.lua

# Tmux
if [ $(ls ~/.terraformrc); then
    rm ~/.tmux.conf
fi
ln -s ~/dotfiles/config/tmux/.tmux.conf ~/.tmux.conf

#Terraform
# if [ $(ls ~/.terraformrc) ]; then mv ~/.terraformrc ~/.terraformrc_original; fi
# ln -s ~/dotfiles/config/.terraformrc ~/.terraformrc

# anothers
# mkdir -p ~/bin
