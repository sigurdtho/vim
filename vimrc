"Vimrc config file for Sigurd"

"Editing vimrc on the go
"------------------------------"
" Source the vimrc file after saving it
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Edit the vimrc file with mapleader and v
let mapleader = ","
nmap <leader>v :vsplit $MYVIMRC<CR>



"Plugins"
"------------------------------"

"Activate pathogen"
execute pathogen#infect()

" Map NERDTree hotkey
let mapleader = ","
nmap <leader>nt :NERDTree<cr>

" Map NERDTree hotkey
let mapleader = ","
nmap <leader>nt :NERDTree<cr>

" Airline
" Set statusline at all times
set laststatus=2

"------------------------------"
"------------------------------"

"Indentation, folding, tabs and spaces"
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

" Highlight trailing whitespace
"match ErrorMsg '\s\+$'


"------------------------------"
"------------------------------"

"Colors and colorschemes"
"------------------------------"

"Enables colorschemes"
syntax enable

"Enable 256 color
set t_Co=256

"Molokai colorscheme"
colorscheme molokai

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
"Mouse/input/output

"enable Mouse
:set mouse=a








