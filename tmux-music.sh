#!/bin/sh

tmux has-session -t music 2>/dev/null ||
    tmux new-session -d -s music -n "rmpc" "rmpc" \; \
        new-window -n "spotify" "spotify_player"

tmux attach -t music
