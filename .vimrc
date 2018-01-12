set nocompatible              " be iMproved, required
filetype off                  " required

"Key Mapping
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'ajmwagar/vim-deus'
Plugin 'lrvick/Conque-Shell'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
colors deus

set number
set relativenumber
set ic
set expandtab
set wrap
set noeb
