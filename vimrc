"VIMRC config file for Sigurd"

" Vundle stuff
set nocompatible	" be iMproved required
filetype off		" required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage vundle, required
Plugin 'gmarik/Vundle.vim'
" Unbind tap from autocomplete
let g:ycm_key_list_select_completion = []

" Install YCM
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" Install VIM airline
Plugin 'bling/vim-airline'
let g:airline_theme='powerlineish'

" Install vim-addon-mw-utils snipmate helper
Bundle 'MarcWeber/vim-addon-mw-utils'

" Install tilb_vim snipmate helper
Bundle 'tomtom/tlib_vim'

" Snippets for snipmate
Bundle 'honza/vim-snippets'

" Install snipmate
Bundle 'garbas/vim-snipmate'

" Install syntastic
Plugin 'scrooloose/syntastic'

" Install surround
Plugin 'tpope/vim-surround'

" Install unimpaired
Plugin 'tpope/vim-unimpaired'

" Install fugitive
Plugin 'tpope/vim-fugitive'

" Install nerdcommenter
Plugin 'scrooloose/nerdcommenter'

" Install nerdtree
Plugin 'scrooloose/nerdtree'

call vundle#end()	" required




" Setting mapleader
let mapleader = ","
let maplocalleader = "-"

"Editing vimrc on the go
"------------------------------"
" Source the vimrc file after saving it
nnoremap <leader>sv :source $MYVIMRC<CR>

" Edit the vimrc file with mapleader and v
nnoremap <leader>ev :vsplit $MYVIMRC<CR>


" Split screen vertical and open a new file
nnoremap <leader>s :vne<cr>:e

" Split screen horizontal and open a new file
nnoremap <leader>v :new<cr>:e

"Plugins"
"------------------------------"

"Activate pathogen"
"execute pathogen#infect()

" Map NERDTree hotkey
nmap <leader>nt :NERDTreeToggle<cr>


" Airline
" Set statusline at all times
set laststatus=2

"------------------------------"
"------------------------------"



" Abbreviations
"
" Email
:iabbrev eemail sigurd14@gmail.com
" Signature
:iabbrev ssig --<cr>Sigurd Thomassen<cr>sigurd14@gmail.com







"Indentation, folding, tabs, maps  and spaces"
"------------------------------"

"Adds indentation for filetypes"
filetype plugin indent on
filetype plugin on

" Enables indentation folding
:set foldmethod=manual

" Map space to folding
nnoremap <space> za
vnoremap <space> zf

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv


" makes H go to beginning of line
nnoremap H 0
nnoremap L $

" Map jk in insertmode to esc
inoremap jk <esc> 

inoremap <esc> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>

nnoremap <Left> <nop>
nnoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>

" Make current word UPPERCASE while in insert mode
inoremap <localleader><u> <esc>bveUea

" Make current word UPPERCASE while in normal mode
nnoremap <localleader><u> LWBVEU

" Wraps visual selection in quotes
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>
" Wraps visual selection in single quotes
vnoremap <leader>' <esc>`<i'<esc>`>a'<esc>




" Highlight trailing whitespace
"match ErrorMsg '\s\+$'
"
" Map localleader and c to comment current line in python
:augroup pycomment
autocmd!
autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
:augroup END

"
" Map <F5> to run the current file
:augroup pyrun
autocmd!
autocmd FileType python nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>
:augroup END

"------------------------------"
"------------------------------"

"Colors and colorschemes"
"------------------------------"

"Enables colorschemes"
syntax enable

"Enable 256 color
set t_Co=256

"Molokai colorscheme"
colorscheme badwolf

"------------------------------"
"------------------------------"

"Line numbers"
"------------------------------"
:set number
"------------------------------"
"------------------------------"

" Files
" -----------------------------"
"  No swapfiles
:set noswapfile


"------------------------------"
"MOUSE/input/output

"enable Mouse
:set mouse=a








