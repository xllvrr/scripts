#!/bin/sh

tmux has-session -t music 2>/dev/null || \
    tmux new-session -d -s music -n "rmpc" "rmpc" \; \
        split-window -v -l 30% "cava" \; \
        select-pane -t 0 \; \
        new-window -n "spotify" "spotify_player"

tmux attach -t music
