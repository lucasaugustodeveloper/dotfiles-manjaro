#!/bin/sh

sudo pacman -Sy --needed base-devel git --noconfirm && \

bash arch-packages.sh  && \
bash arch-enviroments.sh && \
bash install-sdkman.sh && \
bash arch-packages-browsers.sh

