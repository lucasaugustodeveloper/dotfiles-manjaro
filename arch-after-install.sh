#!/usr/bin/env bash

sudo chown $USER:$USER /usr/local/bin/  && \
sudo chown $USER:$USER /opt && \

# https://stackoverflow.com/questions/22475849/node-js-error-enospc/32600959#32600959
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p && \
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.d/99-sysctl.conf && sudo sysctl --system
