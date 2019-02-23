call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

Plug 'tomasiser/vim-code-dark'

Plug 'itchyny/lightline.vim'

Plug 'terryma/vim-multiple-cursors'

call plug#end()


set number
filetype plugin indent on
syntax on
scriptencoding utf-8

colorscheme codedark

noremap <Space> :

map <C-p> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = 'right'

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
