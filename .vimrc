"For vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"**************************************
"----------SETTINGS--------------------
"**************************************

" Enable syntax highlighting
syntax on
set hidden

"Folding settings
set foldmethod=syntax
set foldlevelstart=20
hi Folded ctermfg=5
hi Folded ctermbg=8

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches 
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on.
set autoindent

"Relative line numbering
set rnu

" Stop certain movements from always going to the first character of a line.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Enable use of the mouse for all modes
"set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>


"cursor position to lower corner
set cursorline

filetype  plugin indent on

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

set undolevels=100

set autoread

set noswapfile

"Don't confirm yuc:s conf loading and define fallback
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf ='$HOME/.ycm_extra_conf.py'
let g:ycm_add_preview_to_completeopt = 0

"------------INDENTATION-----------

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=4
set expandtab

"***********************************
"-------------MAPPINGS--------------
"***********************************

"f search, F hide search hilights
map f /
map F :noh <CR>

map ? :NERDTree <CR>

"capital H/J to jump line beg/start
nnoremap H ^
nnoremap L $

"jj to esc
imap jj <Esc>
let g:EasyMotion_leader_key = 'ö'

nmap zz :A<CR> 

"************************************
"-------------PLUGINS----------------
"************************************
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
"Bundle 'L9'
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'restore_view.vim'
Bundle 'surround.vim'
Bundle 'a.vim'
