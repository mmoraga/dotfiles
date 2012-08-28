"---------------------------------------
" file: ~/.vimrc 
" author: manuel moraga - mmoraga@kth.se
"---------------------------------------

" Use Vim settings, rather then Vi settings.
set nocompatible

" Backupdir settings
set backupdir=~/tmp

if has("vms")
set nobackup		" do not keep a backup file, use versions instead
else
set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd 		" display incomplete commands
set incsearch		" do incremental searching

" Enable mouse
if has('mouse')
set mouse=a
endif

" Enable pathogen for plugins and such shenaniganz
call pathogen#infect()

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
syntax on
set hlsearch
endif

" Enable file type detection
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cintendt' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" set indentation
set expandtab
set shiftwidth=2
set softtabstop=2

" Enable line numbers
set number

" Highlight current line
set cul
" Adjust color
hi CursorLine term=none cterm=none ctermbg=0

" Status Bar
set laststatus=2  " always show the status bar
set statusline=%<%f\ %h%w%m%r%y\ %{&ff}\ %=L:%l/%L\ (%p%%)\ C:%c%V\ B:%o\ F:%{foldlevel('.')} 
