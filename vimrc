"**************************************************
"             (_)                   
"	__   ___ _ __ ___  _ __ ___ 
"	\ \ / / | '_ ` _ \| '__/ __|
"	 \ V /| | | | | | | | | (__ 
"	  \_/ |_|_| |_| |_|_|  \___|
"
"**************************************************

"**************************************************
" Initial Setup 
"**************************************************
set nocompatible | filetype indent plugin on | syn on

"**************************************************
" VUNDLE 
"**************************************************
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle Plugins 
Plugin 'VundleVim/Vundle.vim'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

"**************************************************
" Set Relativenumber 
"**************************************************
set number relativenumber

"**************************************************
" Set Spaces 
"**************************************************
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab

"**************************************************
" Color
"**************************************************
set t_Co=256
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark

" Syntax highlighting
syntax on
let python_highlight_all=1

"**************************************************
" Key Bindings 
"**************************************************
" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"**************************************************
" Fix Backspace
"**************************************************
:set backspace=indent,eol,start

"**************************************************
" YouCompleteMe Config
"**************************************************
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

"**************************************************
" Syntastic Config
"**************************************************
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"**************************************************
" Powerline
"**************************************************
set rtp+=/usr/local/bin/powerline/powerline/bindings/vim/
set laststatus=2
