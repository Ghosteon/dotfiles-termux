call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

Plug 'tomasiser/vim-code-dark'

Plug 'itchyny/lightline.vim'

Plug 'terryma/vim-multiple-cursors'

call plug#end()


set number

colorscheme codedark

map <C-p> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = 'right'
