#!/bin/sh

sudo pacman -Sy --needed base-devel git --noconfirm && \

bash install-yay.sh && \
bash arch-packages.sh  && \
bash arch-docker.sh  && \
bash install-navi.sh && \
bash arch-enviroments.sh && \
bash install-sdkman.sh && \
bash arch-rust-install.sh && \
bash arch-packages-browsers.sh

