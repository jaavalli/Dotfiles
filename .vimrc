"For vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"**************************************
"----------SETTINGS--------------------
"**************************************

" Enable syntax highlighting
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

set tw=0
set wrap 

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
let g:ycm_autoclose_preview_window_after_completion = 1

let g:NERDTreeDirArrows=0
let NERDTreeIgnore=['\.o$', '\.pro$']
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

let g:syntastic_enable_highlighting = 0

"Arduino syntax
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

"monitor serial 
let g:vim_arduino_auto_open_serial = 1

"------------INDENTATION-----------

" Indentation settings for using 2 spaces instead of tabs.
set shiftwidth=4
set tabstop=4

"Spaces istead of tabs
"set expandtab='noexpandtab'

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

imap <C-n> <backspace>

"a.vim: Change .h <--> .cpp
nmap zz :A<CR> 

nmap <C-s> :w<ENTER>
inoremap <C-s> <esc>:w<ENTER>a

nnoremap - :Switch<cr>

"Open bufexplorer
"nmap ++ \be

"Snipmate
imap <C-j> <Plug>snipMateNextOrTrigger
smap <C-j> <Plug>snipMateNextOrTrigger


"***********************************
"-----------ABBREVIATIONS-----------
"***********************************
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

"************************************
"-------------PLUGINS----------------
"************************************
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'                     
"Better movement
Bundle 'Lokaltog/vim-easymotion'                
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
"Bundle 'L9'
Bundle 'scrooloose/nerdtree'
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
Bundle 'tsaleh/vim-matchit'                     
"Quickly comment code
Bundle 'tComment'                               
Bundle "MarcWeber/vim-addon-mw-utils"           
"Useless?
Bundle "tomtom/tlib_vim"                        
"Snippets
Bundle "garbas/vim-snipmate"                    
"For quick value changing
Bundle 'AndrewRadev/switch.vim'
"latex
Bundle 'LaTeX-Box-Team/LaTeX-Box'
"json syntax
Bundle 'elzr/vim-json'

Bundle 'emmet.vim'
Bundle 'jplaut/vim-arduino-ino'
Bundle 'Arduino-syntax-file'
Bundle 'digitaltoad/vim-jade'

syntax on
