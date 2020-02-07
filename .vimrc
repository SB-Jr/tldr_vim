"For vundle 
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



" for indentation
set autoindent
set expandtab
"set filetype indent on
set tabstop=4
set smarttab
set showmatch

" for searching
set hlsearch   " higlights the search
set ignorecase " ignores the search result
set incsearch  " incremental search that shows partial matches
set smartcase  " Automatically switch search to case-sensitive when search query contains an uppercase letter.

" text rendering
syntax enable
set wrap
set scrolloff=2  " The number of screen lines to keep above and below the cursor.
set sidescrolloff=5 " The number of screen columns to keep to the left and right of the cursor.

" User interface options
set ruler "Always show cursor position.
set wildmenu "Display command line’s tab complete options as a menu.
set cursorline "Highlight the line currently under cursor.
set number "Show line numbers on the sidebar.
"set relativenumber "Show line number on the current line and relative numbers on all other lines.
set noerrorbells "Disable beep on errors.
"set visualbell "Flash the screen instead of beeping on errors.
set mouse=a "Enable mouse for scrolling and resizing.
set title "Set the window’s title, reflecting the file currently being edited.
set background=dark "Use colors that suit a dark background.


" Miscellaneous options
set spell "Enable spellchecking.
colorscheme badwolf
set lazyredraw
autocmd vimenter * NERDTree  "require nerd tree plugin

" closing nerd-tree on exiting document
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" changing current tree show in nerd tree
autocmd BufEnter * lcd %:p:h
" Auto focus on doc and not on nerdtree
autocmd VimEnter * wincmd p


"vundle commands
Plugin 'itchyny/lightline.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Valloric/YouCompleteMe'
Plugin 'frazrepo/vim-rainbow'

