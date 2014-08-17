

execute pathogen#infect()

" Enable syntax highlighting
syntax on
colorscheme Tomorrow-Night

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible


set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


set encoding=utf-8
" Au moins 3 lignes visibles autour du curseur
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
" Better command-line completion
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
" Always display the status line, even if only one window is displayed
set laststatus=2
set relativenumber
set undofile


let mapleader=","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
nnoremap <tab> %
vnoremap <tab> %


set list
set listchars=tab:▸\ ,eol:¬


au BufRead,BufNewFile *.bal set filetype=javascript

" To insert a single character and return to normal mode
nmap <Space> xPpr


" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)



" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline



" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Disable use of the mouse for all modes
set mouse=

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2


" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>


"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$


map <leader>n :NERDTreeToggle<CR>

let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_working_path_mode = 'ra'


"------------------------------------------------------------

set completeopt=longest,menu

" Remap autocomplete menu control keys
inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


let g:SuperTabCrMapping = 0 " prevent remap from breaking supertab
let g:SuperTabDefaultCompletionType = "context"
" let g:SuperTabContextDefaultCompletionType = "<c-n>"
" set wildmode=list:longest,full
" let g:SuperTabClosePreviewOnPopupClose = 1 " close scratch window on autocompletion


