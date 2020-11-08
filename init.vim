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

" plugins
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

" custom status line
hi StatusLine ctermbg=235 ctermfg=254 guibg=#3B4252 guifg=#ECEFF4

" emmet leader
let g:user_emmet_expandabbr_key = '<Tab>'
let g:user_emmet_install_global = 0

" enable spellcheck
map <F5> :setlocal spell! spelllang=en_us<CR>

" emmet for html,css
autocmd FileType html,css EmmetInstall

" remove arrow keys in Command Mode
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>

" remove arrow keys in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

" remove arrow keys in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" remove arrow keys in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

" moves the current line down by one line
map <A-j> :m+1<CR>

" moves the current line up by one line
map <A-k> :m-2<CR>

" escape insert mode using jk
" :imap jk <Esc>

" splits properly
set splitbelow
set splitright

" remap splits navigation to jsut CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" friendly split resize
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>
