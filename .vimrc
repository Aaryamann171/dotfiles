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
set tabstop=4
set shiftwidth=4
set expandtab

" maps leader to SPACE
map <Space> <Leader>

" plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
call plug#end()

colorscheme default
set background=dark

" enable spellcheck
map <Leader>l :setlocal spell! spelllang=en_us<CR>

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
map <silent> <C-A-j> :m+1<CR>

" moves the current line up by one line
map <silent> <C-A-k> :m-2<CR>

" splits properly
set splitbelow
set splitright

" remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" friendly split resize
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" NERDTree toggle
nmap <silent> <Leader>n :NERDTreeToggle<CR>

" Start NERDTree in minimal UI mode (No help lines)
let NERDTreeMinimalUI=1

" hides ^G from view
let g:NERDTreeNodeDelimiter = "\u00a0"

" installs vim plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
