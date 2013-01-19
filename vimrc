"---------------------------------------
" file: ~/.vimrc 
" author: manuel moraga - mmoraga@kth.se
"---------------------------------------

" Use Vim settings, rather then Vi settings.
set nocompatible

" Backupdir settings
set backupdir=/var/tmp/vim-flako//
set directory=/var/tmp/vim-flako//

if has("vms")
set nobackup			" do not keep a backup file, use versions instead
else
set backup				" keep a backup file
endif

set history=50			" keep 50 lines of command line history
set ruler				" show the cursor position all the time
set showcmd 			" display incomplete commands
set incsearch			" do incremental searching
set clipboard+=unnamed  " yank and copy to X clipboard
set encoding=utf-8		" UTF-8 encoding for all new files

" Enable mouse
if has('mouse')
set mouse=a
endif

" Enable pathogen for plugins and such shenaniganz
call pathogen#infect()

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
syntax on
set hlsearch

" Enable file type detection
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cintendt' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin on
filetype indent on

" set indentation and tabs
set tabstop=4
set shiftwidth=4
set autoindent

" Enable line numbers
set number

" Highlight current line
set cul
" Adjust color
hi CursorLine term=none cterm=none ctermbg=0

" Highligt 80th column
set cc=80

" Status Bar
set laststatus=2  " always show the status bar
set statusline=%<%f\ %h%w%m%r%y\ %{&ff}\ %=L:%l/%L\ (%p%%)\ C:%c%V\ B:%o\ F:%{foldlevel('.')} 
