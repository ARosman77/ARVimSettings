"Enable plugin support
execute pathogen#infect()

"Set <Space> as leader
let mapleader=" "

"LightLine required settings
set laststatus=2
"LightLine other settings
let g:lightline = { 'colorscheme' : 'wombat', }

"NERDCommenter required setting
filetype plugin on

"NERDTree settings
"Open tree if no files opened at start
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Close Vim if only tree is left opened
autocmd bufenter * 
  \ if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree())
  \ | q | endif
"Close tree after opening file
let NERDTreeQuitOnOpen=1
"Open a node with right arrow
let NERDTreeMapActivateNode='<right>'
"Display hidden files
let NERDTreeShowHidden=1
"Ignore useless files
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
"Map keys to tree commands
nmap <leader>n :NERDTreeToggle<CR>

"General settings
set nocompatible
set backup
set history=100
set ruler
set showcmd
set incsearch
filetype on
syntax on
set hidden


"Choose theme
colorscheme Tomorrow-Night

"Warn about long lines
set colorcolumn=80

"Numbered lines
set number


filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
"Highlight searches
set hlsearch
"Show matching ()
set showmatch

"Hide mode as lightline is doing this (doesn't work if to far up)
set noshowmode

"Key mappings
map <C-e> :wq<CR>
map <C-s> :w<CR>
map <leader>q :q<CR>

"Work on this for python lists
"map <leader>l i[<Esc>ea]<Esc>
