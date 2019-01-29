#!/bin/sh

session="work"
tmux start-server
tmux new-session -d -s $session
tmux send-keys "vim" C-m

# select pane 1 and open nvidia-smi in it
tmux split-window -h
tmux selectp -t 1
tmux send-keys "watch nvidia-smi" C-m

# select pane 2 and open htop in it
tmux split-window -v
tmux selectp -t 2
tmux send-keys "htop" C-m

# return to pane 0 and attach session
tmux selectp -t 0
tmux attach-session -t $session

