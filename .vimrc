"Colours
colorscheme monokai

syntax enable

"Spaces & tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab

"UI config
set ruler                       "Show cursor coordinates in status bar
set number                      "Show line numbers 
set showcmd                     "Show current command
set cursorline                  "Highlight the current line
filetype plugin indent on       "Use indent settings by filetype
set wildmenu                    "Use wildmenu autocompletion
set showmatch                   "Show matching brackets/braces 
set guioptions-=m               "Remove menu bar
set guioptions-=T               "Remove toolbar
set guioptions-=r               "Remove right-hand scrollbar
set guioptions-=L               "Remove left-hand scrollbar
set showmode                    "Show current mode
set showcmd                     "Show current command while being typed
set title                       "Show title of file in window titlebar  

"Set up toggling between numbers and relative numbers
function! NumberToggle()
        if &rnu==0
                set rnu
        else
                set nornu
        endif
endfunc
nnoremap <C-n> :call NumberToggle()<CR>

"Moving
let mapleader=","

"Searching
set incsearch                   "Use incremental search
set hlsearch                    "Highlight search terms
nnoremap <Leader><Space> :nohlsearch<CR>

"Folding
set foldenable
set foldlevelstart=10
nnoremap <space> za
set foldmethod=indent
