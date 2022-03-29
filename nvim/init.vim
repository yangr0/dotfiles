set number 
set hlsearch
set background=dark
set guicursor=
set termguicolors
set t_Co=256
set tabstop=4
set shiftwidth=4
set expandtab
set noswapfile
set autoindent
set smartindent

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
let g:rustfmt_autosave = 1
let g:ale_linters = {'rust': ['cargo', 'analyzer']}
let g:ale_fixers = {'rust': ['rustfmt', 'remove_trailing_lines', 'trim_whitespace']}
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italic = 1
let g:gruvbox_improved_strings = 1
let g:gruvbox_improved_warnings = 1
let g:lightline = {'colorscheme': 'one'}

filetype plugin indent on
syntax enable

colorscheme gruvbox


"curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
