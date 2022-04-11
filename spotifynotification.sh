#!/usr/bin/sh
#############################################################
# @author Mia Hunt
# @github kaykay38
#############################################################
song=$(playerctl metadata --format "Title: {{ title }}\nArtist: {{artist}}\nAlbum: {{ album }}")
notify-send "Spotify" "$song" --icon="$HOME/.config/spotifyd/spotifyicon.png"
