#!/bin/zsh
tmux start-server

if ! $(tmux has-session -t 'istink'); then
cd ~/Sites/istink.stink.tv

env TMUX= tmux start-server \; set-option -g base-index 1 \; new-session -d -s 'istink' -n 'vim'
tmux set-option -t 'istink' default-path ~/Sites/istink.stink.tv


tmux new-window -t 'istink':2 -n 'git'

tmux new-window -t 'istink':3 -n 'server'

tmux new-window -t 'istink':4 -n 'console'

tmux new-window -t 'istink':5 -n 'logs'

tmux new-window -t 'istink':6 -n 'capistrano'

tmux new-window -t 'istink':7 -n 'remote'


# set up tabs and panes

# tab "vim"

tmux send-keys -t 'istink':1 'vim .' C-m


# tab "git"

tmux send-keys -t 'istink':2 'git pull' C-m


# tab "server"

tmux send-keys -t 'istink':3 'script/server' C-m


# tab "console"

tmux send-keys -t 'istink':4 'script/console' C-m


# tab "logs"

tmux send-keys -t 'istink':5 'tail -f log/development.log' C-m


# tab "capistrano"

tmux send-keys -t 'istink':6 '' C-m


# tab "remote"

tmux send-keys -t 'istink':7 'ssh apu.pebbleit.com' C-m



tmux select-window -t 'istink':1

fi

if [ -z $TMUX ]; then
    tmux -u attach-session -t 'istink'
else
    tmux -u switch-client -t 'istink'
fi