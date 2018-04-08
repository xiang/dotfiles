call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/syntastic'
  Plug 'fatih/vim-go'
  Plug 'honza/vim-snippets'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-sensible'
  Plug 'morhetz/gruvbox'
  Plug 'bling/vim-airline'
call plug#end()
"Plug 'Valloric/YouCompleteMe'
"Plug 'altercation/vim-colors-solarized'

set shiftwidth=2
set expandtab
set background=dark
set termguicolors
colorscheme gruvbox
