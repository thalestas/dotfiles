""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" One day, I will put something here.
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'davidhalter/jedi-vim'
Plugin 'tmhedberg/SimpylFold'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Set Line Number
set number relativenumber

"Set spaces
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab

" Enable folding
"set foldmethod=indent
"set foldlevel=99

"Color
set t_Co=256

"Syntax highlighting
syntax on

"Set color
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark

" put this line first in ~/.vimrc
set nocompatible | filetype indent plugin on | syn on

" VAM
fun! EnsureVamIsOnDisk(plugin_root_dir)
  let vam_autoload_dir = a:plugin_root_dir.'/vim-addon-manager/autoload'
  if isdirectory(vam_autoload_dir)
    return 1
  else
    if 1 == confirm("Clone VAM into ".a:plugin_root_dir."?","&Y\n&N")
      call confirm("Remind yourself that most plugins ship with ".
                  \"documentation (README*, doc/*.txt). It is your ".
                  \"first source of knowledge. If you can't find ".
                  \"the info you're looking for in reasonable ".
                  \"time ask maintainers to improve documentation")
      call mkdir(a:plugin_root_dir, 'p')
      execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '.
                  \       shellescape(a:plugin_root_dir, 1).'/vim-addon-manager'
      exec 'helptags '.fnameescape(a:plugin_root_dir.'/vim-addon-manager/doc')
    endif
    return isdirectory(vam_autoload_dir)
  endif
endfun

fun! SetupVAM()

  " VAM install location:
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME/.vim/vim-addons', 1)
  if !EnsureVamIsOnDisk(c.plugin_root_dir)
    echohl ErrorMsg | echomsg "No VAM found!" | echohl NONE
    return
  endif
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'

  " Tell VAM which plugins to fetch & load:
  call vam#ActivateAddons([], {'auto_install' : 0})

	ActivateAddons vim-snippets snipmate
	
endfun
call SetupVAM()

set rtp+=/usr/local/bin/powerline/powerline/bindings/vim/
set laststatus=2

" Pathogen
execute pathogen#infect()

