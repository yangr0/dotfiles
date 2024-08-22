#!/bin/bash
# Run to auto config alacritty
alacritty_dir=~/.config/alacritty
url=https://raw.githubusercontent.com/iinc0gnit0/dotfiles/master/alacritty/alacritty.toml
alacritty_file=alacritty.toml
mkdir -p $alacritty_dir
/usr/bin/wget $url -O $alacritty_dir/$alacritty_file || /usr/bin/curl $url -o $alacritty_dir/$alacritty_file
