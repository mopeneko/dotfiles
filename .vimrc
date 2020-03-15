" ==== dein.vim
if &compatible
  set nocompatible
endif

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')

  " Support development plugins
  call dein#add('editorconfig/editorconfig-vim')

  " Languages plugins
  call dein#add('fatih/vim-go')
  call dein#add('posva/vim-vue')

  " Visual plugins
  call dein#add('vim-airline/vim-airline')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
" ==== End

" Edit config
set fenc=utf-8
set cindent

" Visual config
colorscheme molokai
set number
set ruler
set cursorline
set showmatch
set hlsearch
set incsearch
set laststatus=2
syntax enable
set tabstop=3
set shiftwidth=3
set autoindent

