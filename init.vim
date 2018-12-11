let mapleader = ','

call plug#begin('~/.config/nvim/plugged')
" Plugins will go here in the middle. "
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'numkil/ag.nvim'

Plug 'sheerun/vim-polyglot', { 'do': './build' }

Plug 'Valloric/YouCompleteMe'

call plug#end()

let g:airline_powerline_fonts=1

let g:ag_working_path_mode="r"

set mouse=a

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number
set relativenumber

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

noremap <A-k> :res-1<CR>
noremap <A-j> :res+1<CR>
