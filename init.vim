let mapleader = ','

call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'numkil/ag.nvim'
Plug 'sheerun/vim-polyglot', { 'do': './build' }
Plug 'Valloric/YouCompleteMe'

call plug#end()

" themes
"
set background=dark
"set background=light
let g:gruvbox_italic=1
let g:gruvbox_invert_signs=0
let g:gruvbox_improved_strings=0
let g:gruvbox_improved_warnings=1
let g:gruvbox_undercurl=1
let g:gruvbox_contrast_dark="soft"
colorscheme gruvbox

" end themes

let g:airline_powerline_fonts=1

let g:ag_working_path_mode="r"

set mouse=a

set cursorline
hi CursorLine term=bold cterm=bold

set nohlsearch

" filetype indent off

set lcs=trail:·,tab:»·
set list

set completeopt-=preview

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number
set relativenumber
set guicursor=

" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-n> :NERDTreeToggle<CR>

set <F12>=<C-v><F12>
nnoremap <F12> :YcmCompleter GoToDefinition<CR>

nnoremap <leader>ff :Files<CR>
nnoremap <leader>fs :Ag<space>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fw :Windows<CR>
nnoremap <leader>fm :Marks<CR>
nnoremap <leader>ft :Filetypes<CR>

nnoremap <leader>cc :make<CR>

nnoremap <leader>/ :vsp<CR>
nnoremap <leader>- :sp<CR>

tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
inoremap <C-h> <Esc><C-w>h
inoremap <C-j> <Esc><C-w>j
inoremap <C-k> <Esc><C-w>k
inoremap <C-l> <Esc><C-w>l

noremap <C>s :w!<CR>
noremap <C-S> :wa!<CR>

"tnoremap <C-S-h> <C-\> :res+1
"tnoremap <C-S-k> <C-\> :res-1
noremap <A-k> :res-1<CR>
noremap <A-j> :res+1<CR>
"inoremap <C-S-h> <Esc> :res+1
"inoremap <C-S-k> <Esc> :res-1

