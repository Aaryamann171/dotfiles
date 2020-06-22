set relativenumber
set nohlsearch
set autoindent
set termguicolors
set nobackup 
set noswapfile 
set noundofile
set t_Co=256

syntax enable
" Plugins
call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
call plug#end()
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

" Works with both enabled and disabled option.
let g:nord_uniform_status_lines = 0
colorscheme nord

:map <C-n> :NERDTree
"moves the current line down by one line
:map <C-j> :m+1<CR>==
" moves the current line up by one line
:map <C-k> :m-2<CR>==
:map <C-n> :set nornu
:map <C-l> :setlocal spell spelllang=en_us
