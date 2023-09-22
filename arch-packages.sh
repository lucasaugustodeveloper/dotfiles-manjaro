#!/usr/bin/env bash

# https://aur.archlinux.org/packages/yay-bin

yay -S github-cli terminator alacritty terminology zsh fzf htop screenfetch --noconfirm --needed && \
yay -S git-extras ctop-bin gotop-bin --noconfirm --needed && \
yay -S visual-studio-code-bin 1password sublime-text-4 vscodium-bin --noconfirm --needed && \
yay -S telegram-desktop --noconfirm --needed && \
yay -S ttf-font powerline powerline-fonts noto-fonts-emoji ttf-fira-code ttf-liberation --noconfirm --needed && \
yay -S libratbag piper --noconfirm  --needed && \
yay -S peco ghq micro --noconfirm --needed && \
yay -S dbeaver insomnia-bin --noconfirm  --needed && \
yay -S opera-ffmpeg-codecs --noconfirm --needed && \
yay -S flatpak --noconfirm --needed

