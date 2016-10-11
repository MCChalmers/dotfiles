execute pathogen#infect()

set nocompatible                "Don't maintain compatibility with vi

"Moving
let mapleader=","

"Colours
colorscheme monokai
let python_highlight_all=1
syntax on

"Spaces & tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set autoindent
set smartindent
set expandtab

"File encoding
set encoding=utf-8

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
set colorcolumn=80              "Show 80-char margin
set splitright                  "Add new buffers to the right

"Platform-specific font
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
"set guifont=Consolas:h10:cANSI:qDRAFT

"Set up toggling between numbers and relative numbers
function! NumberToggle()
        if &rnu==0
                set rnu
        else
                set nornu
        endif
endfunc
nnoremap <C-n> :call NumberToggle()<CR>


"Searching
set incsearch                   "Use incremental search
set hlsearch                    "Highlight search terms
nnoremap <leader><Space> :nohlsearch<CR>

"Folding
set foldenable
set foldlevelstart=10
nnoremap <space> za
set foldmethod=indent

"Custom bindings
map <Enter> o<ESC>
map <S-Enter> O<ESC>

"Use Pydiction
let g:pydiction_location = 'C:\Users\mchalmers\vimfiles\bundle\pydiction\complete-dict'
let g:pydiction_menu_height = 3

"Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = {"mode": "passive"}
let g:syntastic_check_on_open = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_w = 0
let g:syntastic_check_on_wq = 0
let g:pymode_lint_on_write = 0
