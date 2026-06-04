#!/usr/bin/bash

sudo mount -t ntfs-3g -o uid=1000,gid=1000 /dev/sdd1 $HOME/HomeMedia && sudo mount -t ntfs-3g -o uid=1000,gid=1000 /dev/sda5 $HOME/DownloadBrowser
