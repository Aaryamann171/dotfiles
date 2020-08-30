set nu
set noruler
set belloff=all
set nohlsearch
set autoindent
set smartindent
set nobackup 
set noundofile
set noswapfile 
set t_Co=256
set laststatus=2
set clipboard^=unnamed,unnamedplus
" Plugins
call plug#begin('~/.vim/plugged')
" Plug 'jiangmiao/auto-pairs'
Plug 'arcticicestudio/nord-vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'dikiaap/minimalist'
Plug 'bluz71/vim-nightfly-guicolors'
call plug#end()

set termguicolors
syntax enable
colorscheme nord

" Custom status line
hi StatusLine ctermbg=235 ctermfg=254 guibg=#3B4252 guifg=#e4e4e4
"emmet leader
let g:user_emmet_expandabbr_key = '<Tab>'
let g:user_emmet_install_global = 0
"moves the current line down by one line
map <C-j> :m+1<CR>
" moves the current line up by one line
map <C-k> :m-2<CR>
map <F5> :setlocal spell! spelllang=en_us<CR>
" copies to system clipboard
autocmd FileType html,css EmmetInstall
