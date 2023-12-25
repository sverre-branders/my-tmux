#! /bin/bash
# This script is used to sym link the tmux.conf file in this directory to ~/.tmux.conf

if [ $# -eq 0 ]; then
    if [ ! -e $HOME/.tmux.conf ]; then
        echo "Linking tmux.conf file"
        ln -rsf tmux.conf $HOME/.tmux.conf
    else
        echo "Warning: tmux.conf already exists."
        read -r -p "Are you sure you want to overwrite it? [y/N] " response
        case "$response" in
            [yY][eE][sS]|[yY])
                echo "Linking tmux.conf file and overwriting"
		rm $HOME/.tmux.conf
        	ln -rsf tmux.conf $HOME/.tmux.conf
                ;;
            *)
                echo "skipped."
                ;;
        esac
    fi
    else
        echo "Run this script to link tmux.conf from this repository to $HOME/.tmux.conf"
fi
