set nocompatible              " be iMproved, required
filetype off                  " required

"Vundle setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'ajmwagar/vim-deus'
Plugin 'lrvick/Conque-Shell'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'python-mode/python-mode'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'morhetz/gruvbox'
call vundle#end()            " required
filetype plugin indent on    " required

"General
syntax on
set termguicolors
colorscheme gruvbox
set background=dark
set number
set relativenumber
set smartcase
"Split have min-height now
set winheight=30
set winminheight=5
"look better when win onfocus
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set relativenumber
    autocmd WinEnter * set number
    autocmd WinLeave * set norelativenumber 
    autocmd WinLeave * set nonumber 
augroup END"
"NO FUCKING BEEEEEP
set noeb vb t_vb=

"Nerdtree"
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
"close Nerdtree when no other split
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"CtrlP settings 
let g:ctrlp_show_hidden = 1
let g:ctrlp_follow_symlinks = 1

"Key Mapping
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-/> :ConqueTermSplit su bash<CR> 
nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

