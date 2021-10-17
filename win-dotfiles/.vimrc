set nocompatible
set nu
set noruler
set belloff=all
set t_vb=
set nohlsearch
set nobackup 
set noundofile
set noswapfile
set ic
set ai
set smartindent
set clipboard^=unnamed,unnamedplus
set tabstop=4 shiftwidth=4 expandtab
set laststatus=0
set background=dark

" map jj to escape  
imap jj <esc>

" plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'preservim/nerdtree'
call plug#end()

" maps leader to SPACE
map <Space> <Leader>

" enable spellcheck
map <Leader>l :setlocal spell! spelllang=en_us<CR>

" splits properly
set splitbelow
set splitright

" moving between tabs sequentially
nnoremap <C-k> gt<CR>
nnoremap <C-j> gT<CR>

" open new file
nnoremap <C-n> :tabedit<CR>

" change cursor to block in normal mode
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

if has("gui_running")
  set guifont=Consolas:h14:cANSI
  colorscheme darkblue
  set guioptions-=m  "menu bar
  set guioptions-=T  "toolbar
  set guioptions-=r  "scrollbar set background=dark
endif

