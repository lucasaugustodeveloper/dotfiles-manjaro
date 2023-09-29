#!/usr/bin/env bash

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo && \
flatpak remotes && \
flatpak update

flatpak install flathub -y app.resp.RESP --or-update -y && \
flatpak install flathub -y org.videolan.VLC --or-update -y && \
flatpak install flathub -y io.typora.Typora --or-update && \
flatpak install flathub -y com.getpostman.Postman --or-update && \
flatpak install flathub -y com.axosoft.GitKraken --or-update && \
flatpak install flathub -y com.github.marhkb.Pods --or-update && \
flatpak install flathub -y com.github.mdh34.quickdocs --or-update && \
flatpak install flathub -y io.beekeeperstudio.Studio --or-update && \
flatpak install flathub -y org.gaphor.Gaphor --or-update
flatpak install flathub -y com.github.Bleuzen.FFaudioConverter --or-update && \
flatpak install flathub -y com.github.Flacon --or-update && \
flatpak install flathub -y com.github.JannikHv.Gydl --or-update && \
flatpak install flathub -y com.github.Johnn3y.Forklift --or-update && \
flatpak install flathub -y com.github.artemanufrij.playmyvideos --or-update && \
flatpak install flathub -y com.github.iwalton3.jellyfin-media-player --or-update && \
flatpak install flathub -y com.obsproject.Studio --or-update && \
flatpak install flathub -y io.github.JaGoLi.ytdl_gui --or-update && \
flatpak install flathub -y io.mpv.Mpv --or-update && \
flatpak install flathub -y sa.sy.bluerecorder --or-update && \
flatpak install flathub -y tv.plex.PlexDesktop --or-update
flatpak install flathub -y com.valvesoftware.Steam && \
flatpak install flathub -y net.rpcs3.RPCS3 && \
flatpak install flathub -y com.discordapp.Discord && \
flatpak install flathub -y org.libretro.RetroArch && \
flatpak install flathub -y com.obsproject.Studio && \
flatpak install flathub -y com.github.unrud.VideoDownloader && \
flatpak install flathub -y com.protonvpn.www && \
flatpak install flathub -y com.slack.Slack && \
flatpak install flathub -y net.pcsx2.PCSX2 && \
flatpak install flathub -y io.freetubeapp.FreeTube && \
flatpak install flathub -y com.calibre_ebook.calibre && \
flatpak install flathub -y io.github.aandrew_me.ytdn && \
flatpak install flathub -y org.flameshot.Flameshot && \
flatpak install flathub -y net.cozic.joplin_desktop && \
flatpak install flathub -y com.authy.Authy && \
flatpak install flathub -y org.gustavoperedo.FontDownloader && \

flatpak list

