set runtimepath+=~/.vim_runtime
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set nocompatible
filetype plugin indent on

Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'dense-analysis/ale'
Plugin 'vim-syntastic/syntastic'
Plugin 'itchyny/lightline.vim'

let g:ale_linters = {'rust': ['rustc', 'rls']}
let g:rustc_path = "~/.cargo/bin/rustc"
let g:rustfmt_autosave = 1
let g:gruvbox_contrast_dark = 'hard'
let g:lightline = {'colorscheme': 'one'}

syntax enable
colorscheme gruvbox
set background=dark
set guifont=Source\ Code\ Pro\ 11
set number!
set t_Co=256 

call vundle#end()
