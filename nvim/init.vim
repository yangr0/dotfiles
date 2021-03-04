call plug#begin('~/.local/share/nvim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'

let g:ale_linters = {'rust': ['rustc', 'rls']}
let g:rustc_path = '~/.cargo/bin/rustc'
let g:gruvbox_contrast_dark = 'hard'
let g:lightline = {'colorscheme': 'one'}

filetype plugin indent on
set background=dark
set number 
set hlsearch
set t_Co=256
set tabstop=4
set shiftwidth=4
set expandtab
syntax enable

call plug#end()
colorscheme gruvbox


"curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
