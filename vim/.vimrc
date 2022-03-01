set number
set belloff=all
set noruler
set ignorecase
set autoindent smartindent
set nobackup noundofile noswapfile
set clipboard^=unnamed,unnamedplus
set tabstop=4 shiftwidth=4 expandtab
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

" copy all lines to the clipboard
map <silent> <Leader>ca ggVGyy

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

" enable spellcheck
map <F5> :setlocal spell! spelllang=en_us<CR>

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif

" === CPP - setup for CP ===
" compile and run cpp program

" new template
map <silent> <Leader>nt :%d<CR>:.!cat template.cpp<CR>9ggo

autocmd FileType cpp map <F9> :wa<CR>:exec '!g++ -std=c++17 % -O2 -Wall -Wextra -Wno-sign-conversion -Wshadow -DLOCAL && timeout 4s ./a.out<inp.txt>out.txt' shellescape(@%, 1)<CR>

" splits layout for Competetive Programming
autocmd VimEnter a.cpp :vsp inp.txt |vertical resize 55| split out.txt

" new template
map <silent> <Leader>nt :%d<CR>:.!cat template.cpp<CR>9ggo
