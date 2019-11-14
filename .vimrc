call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/syntastic'
  Plug 'fatih/vim-go'
  Plug 'honza/vim-snippets'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-sensible'
"  Plug 'morhetz/gruvbox'
  Plug 'joshdick/onedark.vim'
  Plug 'bling/vim-airline'
  Plug 'ingydotnet/yaml-vim'
  Plug 'towolf/vim-helm'
  Plug 'hashivim/vim-terraform'
  
call plug#end()
"Plug 'Valloric/YouCompleteMe'
"Plug 'altercation/vim-colors-solarized'

set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set background=dark
set termguicolors
"colorscheme gruvbox
colorscheme onedark
