
call plug#begin('~/.config/nvim/plugged')
" Plugins will go here in the middle. "
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set number
set relativenumber

" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-n> :NERDTreeToggle<CR>

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

"tnoremap <C-S-h> <C-\> :res+1
"tnoremap <C-S-k> <C-\> :res-1
noremap <A-k> :res-1<CR>
noremap <A-j> :res+1<CR>
"inoremap <C-S-h> <Esc> :res+1
"inoremap <C-S-k> <Esc> :res-1

