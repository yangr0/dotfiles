set number relativenumber
set hlsearch
set background=dark
set termguicolors
set t_Co=256
set tabstop=4
set shiftwidth=4
set expandtab
set noswapfile
set autoindent
set smartindent
set cursorline
set cc=80
set undofile
set mouse=a

call plug#begin('~/.local/share/nvim/plugged')

Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'

call plug#end()

let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_rust_cargo_use_clippy = 1
let g:ale_set_loclist = 0
let g:ale_set_highlights = 1
let g:ale_python_flake8_options = '--ignore=W503,E501'
let g:rustfmt_autosave = 1
let g:ale_fix_on_save = 1
let g:ale_linters = {'rust': ['cargo', 'analyzer'], 'python': ['flake8']}
let g:ale_fixers = {'rust': ['rustfmt', 'remove_trailing_lines', 'trim_whitespace'], 'python': ['black']}
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italic = 1
let g:gruvbox_improved_strings = 1
let g:gruvbox_improved_warnings = 1
let g:lightline = {'colorscheme': 'one'}

autocmd VimLeave * set guicursor=a:ver25

filetype plugin indent on
syntax enable

colorscheme gruvbox

"DEPENDENCIES
"neovim
"vimplug
"python3
"cargo
"flake8
"black

"INSTALL
"sudo pacman -S neovim | sudo apt install neovim
"curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"sudo pacman -S python | sudo apt install python3
"curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
"sudo pacman -S flake8 | sudo apt install flake8
"pip3 install --user black
"export PATH=$PATH:$HOME/.local/bin
"wget https://raw.githubusercontent.com/iinc0gnit0/dotfiles/master/nvim/init.vim -O ~/.config/nvim/init.vim
":PlugInstall
