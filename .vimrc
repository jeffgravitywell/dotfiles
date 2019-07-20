" for training purposes only
" disable arrow keys in normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" look and feel
set guifont=Menlo:h14
set background=dark
colorscheme gruvbox
"set lines=44 columns=153

" general options
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set number
set nocp 
set relativenumber
set autowrite
set copyindent
set laststatus=2
set noshowmode  " to get rid of the default mode line
set undofile
set undodir=~/.vim/undo
set backupdir=~/.vim/backup
set directory=~/.vim/swap

" this servers as a quick ESC key
inoremap jj <ESC>
" move to the last night and center screen
map <Leader>] Gzz
" move the current line up or down
map <C-J> ddp
map <C-K> ddkkp
" cut and paste to the system clipboard
vnoremap <C-c> "+y
map <C-v> "+P


" this saves on lost focus
au FocusLost * :wa

" Initialize plugin system
call plug#begin('~/.vim/plugged')

" themes and colors
Plug 'sickill/vim-monokai'
Plug 'morhetz/gruvbox'
" Plug 'nightsense/stellarized'

" utilities
Plug 'tpope/vim-surround' 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'yegappan/mru'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'sjl/gundo.vim'
Plug 'python-mode/python-mode'
Plug 'kien/rainbow_parentheses.vim'
Plug 'davidoc/taskpaper.vim'
Plug 'tpope/vim-obsession'
Plug 'vim-scripts/fountain.vim'

call plug#end()

" plug-in configurations

"nerdTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 50

" set up directory for fzf
set rtp+=~/.fzf
    
" MRU file spot
let MRU_file='~/.vim/swap'

" toggle button for gundo - undo mapping
nnoremap <F5> :GundoToggle<CR>

" vim-markdown configuration
" let g:vim_markdown_folding_disabled = 1

let g:airline_powerline_fonts = 1
" let g:airline_symbols_ascii = 1
" let g:airline_theme = 'base16_monokai'
" let g:airline_theme = 'powerlineish'
let g:airline_theme = 'molokai'

 if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.maxlinenr = '+'
  let g:airline_symbols.branch = '|'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.spell = ';'
  let g:airline_symbols.notexists = ':'
  let g:airline_symbols.whitespace = 'Ξ'
