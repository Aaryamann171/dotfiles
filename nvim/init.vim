set number
set belloff=all
set noruler
set ignorecase
set autoindent smartindent
set nobackup noundofile noswapfile
set tabstop=4 shiftwidth=4 expandtab
setf dosini
set t_Co=256
set t_ut=
set termguicolors
set laststatus=2
set autoread
set background=dark
set mouse=a
set wildmenu
set nohlsearch

" plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'arcticicestudio/nord-vim'
Plug 'wojciechkepka/vim-github-dark'
Plug 'itchyny/lightline.vim'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim'
call plug#end()

" colorscheme
colorscheme ghdark
let g:gh_color = "soft"

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

" Tagbar toggle
nmap <silent> <Leader>t :TagbarToggle<CR>

" NERDTree Settings
nmap <silent> <Leader>n :NERDTreeToggle<CR>
" start NERDTree in minimal UI mode (No help lines)
let NERDTreeMinimalUI=1
" hides ^G from view
let g:NERDTreeNodeDelimiter = "\u00a0"
" change default directory listing
let g:netrw_liststyle = 3 
" load file in seperate split
let g:netrw_browse_split = 4
" set winsize of netrw
let g:netrw_winsize = 20

" copy all lines to the clipboard
map <silent> <Leader>y :%y<CR>

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

" reopen last tab
nmap <c-s-t> :vs<bar>:b#<CR>

" Move visual selection
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" enable spellcheck
map <F5> :setlocal spell! spelllang=en_us<CR>

" Clipboard settings
let g:clipboard = {
    \ 'name': 'xsel',
    \ 'copy': {
    \     '+': 'xsel -ib',
    \     '*': 'xsel -ip'
    \ },
    \ 'paste': {
    \     '+': 'xsel -ob',
    \     '*': 'xsel -op'
    \ },
    \ 'cache_enabled': 1
    \ }

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
