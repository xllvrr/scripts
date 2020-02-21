#!/bin/sh

declare options=("zsh
neovim
sxhkd
xresources")

choice=$(echo -e "${options[@]}" | dmenu -i -p 'Edit config file: ')

case "$choice" in
    zsh)
        choice="$HOME/.zshrc"
    ;;
    neovim)
        choice="$HOME/.config/nvim/init.vim"
    ;;
    sxhkd)
        choice="$HOME/.config/sxhkd/sxhkdrc"
    ;;
    xresources)
        choice="$HOME/.Xresources"
    ;;
    *)
        exit 1
    ;;
esac

nvim -c "$choice"
