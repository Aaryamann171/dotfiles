set nu
set belloff=all
set noruler
set ic
set autoindent
set smartindent
set nobackup 
set noundofile
set noswapfile 
set clipboard^=unnamed,unnamedplus
set tabstop=4
set shiftwidth=4
set expandtab
setf dosini
set t_Co=256
set t_ut=
set termguicolors
set laststatus=2
set autoread
set background=dark

" plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'wojciechkepka/vim-github-dark'
Plug 'itchyny/lightline.vim'
call plug#end()

" colorscheme
let g:gh_color = "soft"
colorscheme ghdark

" lightline
let g:lightline = {
      \ 'colorscheme': 'ghdark',
      \ }

" maps jj to esc
imap jj <esc>

" disable `
map ` <Nop>

" maps leader to SPACE
map <Space> <Leader>

" change cursor to block in normal mode
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" NERDTree toggle
nmap <silent> <Leader>n :NERDTreeToggle<CR>

" start NERDTree in minimal UI mode (No help lines)
let NERDTreeMinimalUI=1

" hides ^G from view
let g:NERDTreeNodeDelimiter = "\u00a0"

" moves the current line down by one line
map <silent> <C-A-j> :m+1<CR>

" moves the current line up by one line
map <silent> <C-A-k> :m-2<CR>

" copy all lines to the clipboard
map <silent> <Leader>ca ggVGyy

" new template
map <silent> <Leader>nt :%d<CR>:.!cat template.cpp<CR>9ggo

" splits properly
set splitbelow
set splitright

" friendly split resize
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" remap splits navigation to just leader + hjkl
noremap <leader>h <C-w>h
noremap <leader>l <C-w>l
noremap <leader>k <C-w>k
noremap <leader>j <C-w>j

" changing split orientation
nnoremap <C-h> <C-w>H
nnoremap <C-j> <C-w>J
nnoremap <C-k> <C-w>K
nnoremap <C-l> <C-w>L

" go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" enable spellcheck
map <F5> :setlocal spell! spelllang=en_us<CR>

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

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif

" compile and run cpp program
autocmd FileType cpp map <F9> :wa<CR>:exec '!g++ -std=c++17 % -O2 -Wall -Wextra -Wno-sign-conversion -Wshadow -DLOCAL && timeout 4s ./a.out<inp.txt>out.txt' shellescape(@%, 1)<CR>

" splits layout for cp
autocmd VimEnter a.cpp :vsp inp.txt |vertical resize 55| split out.txt
