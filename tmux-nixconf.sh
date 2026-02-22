#!/bin/sh

tmux has-session -t nixconf 2>/dev/null || \
  tmux new-session -d -s nixconf -c "$HOME/nixconf"

tmux attach -t nixconf
