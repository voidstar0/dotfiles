call plug#begin('~/.vim/pluggd')

Plug 'tpope/vim-sensible'
Plug 'terryma/vim-multiple-cursors'
Plug 'itchyny/lightline.vim'
Plug 'wincent/command-t'
Plug 'leafgarland/typescript-vim'
Plug 'preservim/nerdtree'

call plug#end()

:set number
:syntax on

:nmap <C-e> :NERDTreeToggle<CR>
