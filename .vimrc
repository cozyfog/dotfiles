call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/AutoComplPop'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-scripts/c.vim'
Plug 'vim-scripts/TagHighlight'
Plug 'ollykel/v-vim'

call plug#end()

set number
set wrap                " wrap lines
set encoding=utf-8      " set encoding to UTF-8 (default was "latin1")
set mouse=a             " enable mouse support (might not work well on Mac OS X)
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching parentheses / brackets [{()}]
set laststatus=2        " always show statusline (even with only single window)
set ruler               " show line and column number of the cursor on right side of statusline
syntax enable
set tabstop=2           " width that a <TAB> character displays as
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=2        " number of spaces to use for each step of (auto)indent
set softtabstop=2       " backspace after pressing <TAB> will remove up to this many spaces
set autoindent          " copy indent from current line when starting a new line
set smartindent
"set cursorline

set number relativenumber
set nu rnu

set termguicolors

colorscheme gruvbox
set bg=dark
hi Normal guibg=NONE ctermbg=NONE

nnoremap <C-o> :Files<Cr>

let g:v_highlight_array_whitespace_error = 0
let g:v_highlight_chan_whitespace_error = 0
let g:v_highlight_space_tab_error = 0
let g:v_highlight_trailing_whitespace_error = 0
let g:v_highlight_function_calls = 1
let g:v_highlight_fields = 1
