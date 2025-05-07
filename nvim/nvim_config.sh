#!/bin/bash
# Run to auto config neovim
config_dir=~/.config
url=https://github.com/iinc0gnit0/dotfiles
mkdir -p $config_dir
git clone --depth=1 $url
cp -r dotfiles/nvim $config_dir
sudo apt-get install neovim python3 flake8 python3-pip || sudo pacman -S neovim python flake8 python-pip
pip3 install --user black neovim checkov --break-system-packages
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin
rustup component add rust-analyzer
cargo install tree-sitter-cli
