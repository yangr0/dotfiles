call plug#begin('~/.local/share/nvim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'ycm-core/youcompleteme'

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

let g:ale_linters = {'rust': ['rustc', 'rls']}
let g:rustc_path = '~/.cargo/bin/rustc'
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italic = 1
let g:gruvbox_improved_strings = 1
let g:gruvbox_improved_warnings = 1
let g:lightline = {'colorscheme': 'one'}

filetype plugin indent on
syntax enable

call plug#end()
colorscheme gruvbox

"curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
