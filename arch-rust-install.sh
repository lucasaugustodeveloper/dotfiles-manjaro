#!/usr/bin/env bash

yay -Sy rustup --noconfirm --needed && \
rustup toolchain stable && \
rustup set profile complete && \
rustup default stable && \
mkdir -p ~/.local/share/bash-completion/completions/ && \
rustup completions bash > ~/.local/share/bash-completion/completions/rustup
