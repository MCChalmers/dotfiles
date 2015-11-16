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
set number
set showcmd
set cursorline
filetype plugin indent on
set wildmenu
set showmatch
set guioptions-=m "Remove menu bar
set guioptions-=T "Remove toolbar
set guioptions-=r "Remove right-hand scrollbar
set guioptions-=L "Remove left-hand scrollbar
set showmode "Show current mode
set showcmd "Show current command while being typed
set title "Show title of file in window titlebar  

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
set incsearch
set hlsearch
nnoremap <Leader><space> :nohlsearch<CR>

"Folding
set foldenable
set foldlevelstart=10
nnoremap <space> za
set foldmethod=indent
