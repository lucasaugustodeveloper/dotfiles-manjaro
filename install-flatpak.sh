#!/usr/bin/env bash

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo && \
flatpak remotes && \
flatpak update

flatpak install flathub app.resp.RESP --or-update -y && \
flatpak install flathub io.dbeaver.DBeaverCommunity --or-update -y && \
flatpak install flathub rest.insomnia.Insomnia --or-update -y && \
flatpak install flathub org.videolan.VLC --or-update -y && \
flatpak install flathub io.typora.Typora --or-update && \
flatpak install flathub com.getpostman.Postman --or-update && \
flatpak install flathub com.axosoft.GitKraken --or-update && \
flatpak install flathub com.github.marhkb.Pods --or-update && \
flatpak install flathub com.github.mdh34.quickdocs --or-update && \
flatpak install flathub com.jetbrains.PyCharm-Community --or-update && \
flatpak install flathub io.beekeeperstudio.Studio --or-update && \
flatpak install flathub org.gaphor.Gaphor --or-update
flatpak install flathub com.github.Bleuzen.FFaudioConverter --or-update && \
flatpak install flathub com.github.Flacon --or-update && \
flatpak install flathub com.github.JannikHv.Gydl --or-update && \
flatpak install flathub com.github.Johnn3y.Forklift --or-update && \
flatpak install flathub com.github.artemanufrij.playmyvideos --or-update && \
flatpak install flathub com.github.iwalton3.jellyfin-media-player --or-update && \
flatpak install flathub com.obsproject.Studio --or-update && \
flatpak install flathub io.github.JaGoLi.ytdl_gui --or-update && \
flatpak install flathub io.mpv.Mpv --or-update && \
flatpak install flathub sa.sy.bluerecorder --or-update && \
flatpak install flathub tv.plex.PlexDesktop --or-update

flatpak list

