#!/bin/bash
# Run to auto config neovim
config_dir=~/.config
url=https://github.com/yangr0/dotfiles
mkdir -p $config_dir
git clone --depth=1 $url
cp -r dotfiles/nvim $config_dir
sudo apt-get install neovim python3 python3-pip fd || sudo pacman -S neovim python python-pip fd
pip3 install --user black neovim --break-system-packages
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin
rustup component add rust-analyzer
cargo install tree-sitter-cli typstyle
sudo npm install -g neovim eslint_d @fsouza/prettierd
