call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Appearance
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'

" Util
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-goimports'
Plug 'mattn/vim-lsp-icons'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'editorconfig/editorconfig-vim'

" Lang
Plug 'posva/vim-vue'
Plug 'Quramy/tsuquyomi'
Plug 'Quramy/tsuquyomi-vue'
" Plug 'leafgarland/typescript-vim'

call plug#end()

" General
set number
colorscheme nord

" Keymap
nnoremap <C-e> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" ale
let g:ale_lint_on_enter = 1

" vim-goimports
let g:goimports_simplify = 1

" tsuquyomi
autocmd BufNewFile,BufRead *.vue set filetype=vue
