syntax on

set noerrorbells
set nocompatible
set cursorline
set tabstop=4 softtabstop=4
set shiftwidth=4
set noexpandtab
set smartindent
set nu
set nowrap
set nocp
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch
set ignorecase
set number relativenumber
set display+=lastline
set scrolloff=9999 " Scroll down when at middle of file
set colorcolumn=80 " Draw vertical line at 80 characters
set mouse=a

" Skip over closing character
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"

" Custom cursor stuff (NOTE: only works for KDE konsole)
" @ vim.fandom.com/wiki/Change_cursor_shape_in_different_modes
" This section only works for KDE konsole
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" This section only works for Terminator
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Auto place right bracket similar to Eclipse IDE
inoremap {<CR> {<CR>}<C-o>O
inoremap (<CR> (<CR>)<C-o>O
inoremap [<CR> [<CR>]<C-o>O

" Set color of 80-character line
highlight ColorColumn ctermbg=0 guibg=lightgrey 

" Spell check keybindings
nmap - :set spell spelllang=en_us<CR>
nmap = :set nospell<CR>

" Remap tab key to change tabs
nmap <Tab> :bn<CR>
nmap <S-Tab> :bn<CR>

" Remap auto complete shortcut
imap <C-Space> <C-n>

" Exit input mode 
imap jj <Esc>

" Temporarily disable highlight-search
map <F12> :silent! nohls<cr>
map <C-k> :silent! nohls<cr>

" Autoscroll beyond EOF (end of file) 
nnoremap j jzz
nnoremap k kzz

" Java sysout abbreviation
au FileType java ab sysout System.out.println(

" HTML Doctype abbreviation
au Filetype html ab !!! <!DOCTYPE html>

" Python shortcuts
au Filetype python imap ;init def __init__(self):<Esc>F)
au Filetype python imap ;repr def __repr__(self):<Esc>o

" You complete me fix
if has('python3')
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'altercation/solarized'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'valloric/youcompleteme' 
Plug 'dag/vim-fish'
Plug 'sophacles/vim-processing'
Plug 'crusoexia/vim-monokai' " Sublime text theme
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'pangloss/vim-javascript'
Plug 'chemzqm/jscheck'

call plug#end()

" Remove tab from list of keys mapped by YCM
let g:ycm_key_list_select_completion = ['<Down>'] 

" HTML Tab Autocomplete
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Old colorscheme

" colorscheme gruvbox
" set background=dark
" let g:solarized_termcolors=256
" colorscheme solarized

" Color scheme / theme
let g:airline_theme='luna'
colorscheme luna-term " Old colorscheme
" colorscheme monokai - Sublime text theme

