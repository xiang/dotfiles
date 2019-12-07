call plug#begin('~/.vim/plugged')
  Plug 'fatih/vim-go'
  Plug 'hashivim/vim-terraform'
  Plug 'honza/vim-snippets'
  Plug 'ingydotnet/yaml-vim'
  Plug 'joshdick/onedark.vim'
  Plug 'scrooloose/syntastic'
  Plug 'towolf/vim-helm'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  
call plug#end()

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set number cursorline

set termguicolors
set background=dark
colorscheme onedark   
let g:airline_theme = 'onedark'

nnoremap j gj
nnoremap k gk
