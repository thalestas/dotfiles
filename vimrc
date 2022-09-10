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
"Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'stevearc/vim-arduino'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'sheerun/vim-polyglot'
" Colorscheme
Plugin 'morhetz/gruvbox'
Plugin 'sainnhe/everforest'
Plugin 'ayu-theme/ayu-vim'


call vundle#end()
filetype plugin indent on

"**************************************************
" Set Relativenumber 
"**************************************************
set number relativenumber
"set mouse=a
"set title
set cursorline
set encoding=utf-8

"**************************************************
" Set Spaces 
"**************************************************
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

"**************************************************
" Color
"**************************************************
set t_Co=256

if has('termguicolors')
  set termguicolors
endif

set background=dark

" everforest
" let g:everforest_background = 'soft'
" let g:everforest_better_performance = 1
" let g:everforest_disable_italic_comment = 1
" colorscheme everforest

" gruvbox
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

" ayu
" let ayucolor="mirage"
" colorscheme ayu

" Syntax highlighting
"syntax on
let python_highlight_all=1

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"**************************************************
" Key Bindings 
"**************************************************
" split navigations
"nnoremap <tab> <C-W>
"nnoremap <tab><tab> <C-W><C-W>
nnoremap <S-J> <C-W><C-J>
nnoremap <S-K> <C-W><C-K>
nnoremap <S-L> <C-W><C-L>
nnoremap <S-H> <C-W><C-H>

" Arduino
"nnoremap <buffer> <leader>am <cmd>ArduinoVerify<CR>
"nnoremap <buffer> <leader>au <cmd>ArduinoUpload<CR>
"nnoremap <buffer> <leader>ad <cmd>ArduinoUploadAndSerial<CR>
"nnoremap <buffer> <leader>ab <cmd>ArduinoChooseBoard<CR>
"nnoremap <buffer> <leader>ap <cmd>ArduinoChooseProgrammer<CR>
nnoremap <leader>am <cmd>ArduinoVerify<CR>
nnoremap <leader>au <cmd>ArduinoUpload<CR>
nnoremap <leader>ad <cmd>ArduinoUploadAndSerial<CR>
nnoremap <leader>ab <cmd>ArduinoChooseBoard<CR>
nnoremap <leader>ap <cmd>ArduinoChooseProgrammer<CR>

"**************************************************
" Fix Backspace
"**************************************************
set backspace=indent,eol,start

"**************************************************
" YouCompleteMe Config
"**************************************************
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/.ycm_extra_conf.py'
let g:ycm_clangd_args=['--header-insertion=never']
let g:ycm_confirm_extra_conf = 0
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

"let g:ycm_language_server =
"  \ [{
"  \   'name': 'ccls',
"  \   'cmdline': [ 'ccls' ],
"  \   'filetypes': [ 'c', 'cpp', 'cuda', 'objc', 'objcpp' ],
"  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
"  \ }]

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

"**************************************************
" NERDTree
"**************************************************
map <leader>n :NERDTreeToggle<CR>

"**************************************************
" GDB
"**************************************************
let g:termdebug_popup = 0
let g:termdebug_wide = 163
packadd termdebug

