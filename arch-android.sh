#!/usr/bin/env bash
yay -Sy java-environment=11 gradle --noconfirm --needed  && \
yay -S android-studio --noconfirm --needed && \
yay -S android-platform android-sdk android-sdk-platform-tools android-sdk-build-tools --noconfirm --needed && \
