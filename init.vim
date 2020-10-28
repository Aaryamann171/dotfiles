set nu
set belloff=all
set noruler
set nohlsearch
set ic
set autoindent
set smartindent
set nobackup 
set noundofile
set noswapfile 
set t_Co=256
set laststatus=2
set clipboard^=unnamed,unnamedplus

" Splits properly
set splitbelow
set splitright

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'mattn/emmet-vim'
Plug 'haishanh/night-owl.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
call plug#end()

set termguicolors
syntax enable
colorscheme nord

" Custom status line
hi StatusLine ctermbg=235 ctermfg=254 guibg=#3B4252 guifg=#ECEFF4

" emmet leader
let g:user_emmet_expandabbr_key = '<Tab>'
let g:user_emmet_install_global = 0

" enable spellcheck
map <F5> :setlocal spell! spelllang=en_us<CR>

" emmet for html,css
autocmd FileType html,css EmmetInstall

" Remove arrow keys in Command Mode
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>

" Remove arrow keys in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

" Remove arrow keys in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" Remove arrow keys in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

" moves the current line down by one line
map <C-j> :m+1<CR>

" moves the current line up by one line
map <C-k> :m-2<CR>

" escape insert mode using jj
:imap jj <Esc>
