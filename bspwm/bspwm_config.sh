#!/bin/bash
# Run to auto config bspwm
config_dir=~/.config
url=https://github.com/iinc0gnit0/dotfiles
mkdir -p $config_dir
git clone --depth=1 $url
cp -r dotfiles/alacritty $config_dir
