" source $VIMRUNTIME/defaults.vim

" for training purposes only
" disable arrow keys in normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" disable arrow keys in insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" look and feel
set guifont=Menlo:h14
set background=dark

" general options
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set wrap
set linebreak
set autoindent
set smartindent
set number
set nocp 
set relativenumber
set nohlsearch
set autowrite
set copyindent
set linebreak
set laststatus=2
set noshowmode  " to get rid of the default mode line
set linebreak

" the lines below controls backup. write and delete backup after success etc
set writebackup
set backupcopy=auto
set undofile
set swapfile
set undodir=~/.vim/undo
set backupdir=~/.vim/backup
set directory=~/.vim/swap
" set nobackup

filetype plugin indent on

" remap the caps-lock to esc in mac settings
"
" move to the last line and center screen
map <Leader>] Gzz
" move the current line up or down
map <C-J> ddp
map <C-K> ddkkp
" cut and paste to the system clipboard
vnoremap <C-c> "+y
map <C-v> "+P
map <Leader><tab> :tabnew<enter>

" this saves on lost focus
"au FocusLost * :wa

" Initialize plugin system
call plug#begin('~/.vim/plugged')

" themes and colors
" Plug 'sickill/vim-monokai'
Plug 'morhetz/gruvbox'
" Plug 'nightsense/stellarized'

" utilities
Plug 'tpope/vim-surround' 
" Plug 'tpope/vim-obsession'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
Plug 'yegappan/mru'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'sjl/gundo.vim'
Plug 'davidoc/taskpaper.vim'
Plug 'junegunn/goyo.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'hsitz/VimOrganizer'
Plug 'chrisbra/NrrwRgn'

" Plug 'https://github.com/alok/notational-fzf-vim'
" Plug 'alok/notational-fzf-vim'
" Plug 'machakann/vim-highlightedyank'
" Plug 'mhinz/vim-startify'
" Plug 'tpope/vim-commentary'
" Plug 'kien/ctrlp.vim'
" Plug 'pangloss/vim-javascript'
" Plug 'sheerun/vim-polyglot'
" Plug 'vim-scripts/fountain.vim'
" Plug 'python-mode/python-mode'
" Plug 'kien/rainbow_parentheses.vim'

call plug#end()

" added below are plug-in configuration settings

"nerdTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 50

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'


" set up directory for fzf
set rtp+=~/.fzf
    
" MRU file spot
let MRU_file='~/.vim/swap'

" for vimorganizer
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
    au BufEnter *.org            call org#SetOrgFileType()

" toggle button for gundo - undo mapping
nnoremap <F5> :GundoToggle<CR>

" for notational velocity
let g:nv_search_paths = ['~/Documents/Notes', '~/.dotfiles', '~/Downloads', '~/Desktop']

" vim-markdown configuration
" let g:vim_markdown_folding_disabled = 1

let g:airline_powerline_fonts = 1
let g:airline_theme = 'molokai'

" save these for running on other, less supportive machines
" let g:airline_symbols_ascii = 1
" let g:airline_theme = 'base16_monokai'
" let g:airline_theme = 'powerlineish'

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

   
colorscheme gruvbox
