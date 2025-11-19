require("main")

-- DEPENDENCIES
-- neovim >= 0.8.0
-- python3
-- cargo
-- Node.js (for some LSP servers)
-- pip

-- INSTALL
-- sudo pacman -S neovim python nodejs npm (arch)
-- sudo apt install neovim python3 nodejs npm python3-pip (debian)
-- pip3 install --user black neovim
-- curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
-- export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin
-- rustup component add rust-analyzer rustfmt clippy
-- cargo install tree-sitter-cli
-- git clone --depth=1 https://github.com/iinc0gnit0/dotfiles
-- mkdir ~/.config
-- cp -r dotfiles/nvim ~/.config
-- Open neovim and run :PackerSync to install plugins
-- LSP servers and formatters will be installed automatically via Mason
