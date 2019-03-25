"---------------------------------------
" file: ~/.vimrc 
" author: manuel moraga - mmoraga@kth.se
"---------------------------------------

" Use Vim settings, rather then Vi settings.
set nocompatible

" Backupdir settings
"set backupdir=~/tmp/vim/
"set directory=~/tmp/vim/

if has("vms")
set nobackup            " do not keep a backup file, use versions instead
else
set backup              " keep a backup file
endif

set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set showcmd             " display incomplete commands
set clipboard+=unnamed  " yank and copy to X clipboard
set encoding=utf-8      " UTF-8 encoding for all new files

" Enable mouse
if has('mouse')
set mouse=a
endif

filetype off


" Use neocomplcache
let g:neocomplcache_enable_at_startup = 1

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
syntax on

" Enable file type detection
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cintendt' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" fix settings for solarized
set t_Co=16
set background=dark " dark | light "
"call togglebg#map("<F5>")
colorscheme solarized

" Toggle NERDTree with F2
nmap <F2> :NERDTreeToggle<CR>
" Toggle gundo with F3
nnoremap <F3> :GundoToggle<CR>

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <F12> :BufExplorer<CR>
nnoremap <silent> <A-F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>

" set indentation and tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Enable line numbers
set number

" Highlight current line
set cul
" Adjust color
hi CursorLine term=none cterm=none ctermbg=0

" Handle long lines
set wrap
set textwidth=79
set formatoptions=qrn1
set cc=85

" show invisible characters
set list
set listchars=tab:▸\ ,eol:¬

" change the <leader> key
let mapleader = ","

" Searching
" use perl regex
nnoremap / /\v
vnoremap / /\v

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

" clear out search easily
nnoremap <leader><space> :noh<cr>
" tab to match bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" Disable help key. Yes! Kill it with fire!
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Status Bar
set laststatus=2  " always show the status bar
set statusline=%<%f\ %h%w%m%r%y\ %{&ff}\ %=L:%l/%L\ (%p%%)\ C:%c%V\ B:%o\ F:%{foldlevel('.')} 
