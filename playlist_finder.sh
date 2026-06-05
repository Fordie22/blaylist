#! /bin/bash


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


for player in ${music_players[@]}; do

    if grep -q "$player" music_players.txt && [ ! -f "/bin/$player" ]; then

        read -p "$player has been removed from the /bin directory. Would you like to remove it from your playlist lineup? [y/n] "answer

        if [[answer == "y" || answer == "yes"]]; then

            sed -i "/^$player$/d" music_players.txt
            echo -e "$player removed from music_players.sh\n"
        fi
    
    fi
done



