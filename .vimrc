"For vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"************************************
"-------------PLUGINS----------------
"************************************
Bundle 'gmarik/Vundle.vim'
Bundle 'tpope/vim-fugitive'                     
"Better movement
Bundle 'Lokaltog/vim-easymotion'                
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
"Bundle 'L9'
Bundle 'scrooloose/nerdtree'
" Bundle 'Xuyuanp/nerdtree-git-plugin'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
"Keep cursor position after closing file
Bundle 'restore_view.vim'                       
"Edit braces
Bundle 'surround.vim'                           
"Quickly change between header and code
Bundle 'a.vim'                                  
"better buffer browsing
Bundle 'bufexplorer.zip'                        
"Quickly comment code
Bundle 'tComment'                               
"Snipmate dep
Bundle "MarcWeber/vim-addon-mw-utils"           
"Snipmate dependency
Bundle "tomtom/tlib_vim"                        
"Snippets
Bundle "garbas/vim-snipmate"                    
Bundle 'honza/vim-snippets'
"For quick value changing
Bundle 'AndrewRadev/switch.vim'
"latex
"Bundle 'LaTeX-Box-Team/LaTeX-Box' */
"json syntax
Bundle 'elzr/vim-json'
Plugin 'jelera/vim-javascript-syntax'
Bundle 'emmet.vim'
Bundle 'jplaut/vim-arduino-ino'
Bundle 'Arduino-syntax-file'
Bundle 'digitaltoad/vim-jade'
Bundle 'kien/ctrlp.vim'
"Automatic closing brackets
Bundle 'Raimondi/delimitMate'
"Smart js completion with ycm
Bundle 'marijnh/tern_for_vim'
Bundle 'crusoexia/vim-monokai'
"show intendation lewels
Bundle 'nathanaelkane/vim-indent-guides'

call vundle#end() 



"**************************************
"----------SETTINGS--------------------
"**************************************
"
filetype  plugin indent on

syntax on

set hidden

"Folding settings
set foldmethod=syntax
set foldlevelstart=20
hi Folded ctermfg=5
hi Folded ctermbg=8

" Better command-line completion
set wildmenu
"
" Show partial commands in the last line of the screen
set showcmd
"
" Highlight searches 
set hlsearch
"
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

set tw=0
set wrap 

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start


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
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

set clipboard=unnamedplus

"cursor position to lower corner
set cursorline


set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

set undolevels=100

set autoread

set noswapfile

"Don't confirm yuc:s conf loading and define fallback
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf ='$HOME/.ycm_extra_conf.py'
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1

let g:NERDTreeDirArrows=0
let NERDTreeIgnore=['\.o$', '\.pro$', '\.aux$']
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

let g:syntastic_enable_highlighting = 0

"Arduino syntax
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

"monitor serial 
let g:vim_arduino_auto_open_serial = 1

"Colors
set t_Co=256
colorscheme monokai

"------------INDENTATION-----------

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on.
set autoindent 
set noexpandtab

" Indentation settings for using 2 spaces instead of tabs.
set shiftwidth=4
set tabstop=4


"***********************************
"-------------MAPPINGS--------------
"***********************************

let mapleader=","

"f search, F hide search hilights
map f /
map F :noh <CR>

map ? :NERDTree <CR>

"capital H/J to jump line beg/start
nnoremap H ^
nnoremap L $

"jj to esc
"imap jj <Esc>
"jk to esc
inoremap jk <Esc>

let g:EasyMotion_leader_key = 'ö'

imap <C-n> <backspace>

"a.vim: Change .h <--> .cpp
nmap zz :A<CR> 

nmap <C-s> :w<ENTER>
inoremap <C-s> <esc>:w<ENTER>a

nnoremap - :Switch<cr>

"Open bufexplorer
nmap bu :BufExplorer<cr>

"Snipmate
imap <C-j> <Plug>snipMateNextOrTrigger
smap <C-j> <Plug>snipMateNextOrTrigger


""**********************************c
"-----------ABBREVIATIONS-----------
""***********************************
iabbrev myname Ville-Valtteri Jäävalli
iabbrev mymail ville.jaavalli@gmail.com
iabbrev funciton function
iabbrev functiton function
iabbrev fucntion function
iabbrev funtion function
iabbrev erturn return
iabbrev retunr return
iabbrev reutrn return
iabbrev reutn return
iabbrev queyr query
iabbrev htis this
iabbrev foreahc foreach
iabbrev forech foreach


