#!/bin/bash

echo -e "Welcome to blaylist the bash playlist creator\n"

music_players=(
    # Streaming
    "spotify"

    # Terminal / lightweight
    "mpv"
    "mplayer"
    "cmus"
    "mocp"
    "ncmpcpp"
    "musikcube"

    # GUI players
    "vlc"
    "rhythmbox"
    "clementine"
    "strawberry"
    "audacious"
    "deadbeef"
    "quodlibet"
    "lollypop"
    "amarok"
    "elisa"
    "saymus"

    # Library managers
    "banshee"
    "exaile"
    "gnome-music"

    # Daemon based
    "mpd"
)

> music_players.txt

for player in "${music_players[@]}"; do
    if [ -f "/bin/$player" ]; then
        echo -e "\n$player found\n"
        echo "$player" >> music_players.txt
    fi
done

read -p "Are there any other music players that have not been scanned? [y/n] " answer

while [[ "$answer" == "y" || "$answer" == "yes" ]]; do
    read -p "Enter the music player: " alternate_player
    echo "$alternate_player" >> music_players.txt
    read -p "Add another? [y/n] " answer
done
        


