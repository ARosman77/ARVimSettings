"Enable plugin support
execute pathogen#infect()

"Set <Space> as leader
let mapleader=" "

"GitGutter settings


"LightLine required settings
set laststatus=2
"LightLine other settings
let g:lightline = { 'colorscheme' : 'Dracula', }
let g:lightline.active = {
  \ 'left' :  [
  \             ['mode','paste'],
  \             ['gitbranch','readonly','filename','modified']
  \           ]}
let g:lightline.component_function =  { 'gitbranch' : 'fugitive#statusline' }

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
"colorscheme Tomorrow-Night
color dracula

"Warn about long lines
set colorcolumn=80

"Numbered lines
set number

"General indentation
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

"Python PEP8 indentation
au BufNewFile,BufRead *.py
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set textwidth=79 |
  \ set expandtab |
  \ set autoindent |
  \ set fileformat=unix

"Hide mode as lightline is doing this (doesn't work if to far up)
set noshowmode

"Flag Whitespaces
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"Enable folding
"set foldmethod=indent
"set foldlevel=99
"Folding with SimpylFold
let g:SimpylFold_docstring_preview=1
let g:SimpylFold_fold_docstring=0
let g:SimpylFold_fold_import=1
"Key mapping for folding
nnoremap <leader><leader> za

"Key mappings
map <C-e> :wq<CR>
map <C-s> :w<CR>
map <leader>q :q<CR>
"Fugitive mappings
map <leader>gs :Gstatus<CR>
map <leader>gc :Gcommit<CR>

"Work on this for python lists
"map <leader>l i[<Esc>ea]<Esc>
