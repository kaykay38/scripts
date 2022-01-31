#!/usr/bin/sh
song=$(playerctl metadata --format "Title: {{ title }}\nArtist: {{artist}}\nAlbum: {{ album }}")
notify-send "Spotify" "$song" --icon="$HOME/.config/spotifyd/spotifyicon.png"
