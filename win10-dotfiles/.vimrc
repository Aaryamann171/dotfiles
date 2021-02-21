set nocompatible
set nu
imap jj <esc>
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
colorscheme elflord
syntax on
highlight Comment ctermfg=green
highlight NonText ctermfg=245

" maps leader to SPACE
map <Space> <Leader>

" enable spellcheck
map <Leader>l :setlocal spell! spelllang=en_us<CR>

" splits properly
set splitbelow
set splitright

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
  set guifont=Consolas:h11:cANSI
  colorscheme slate
  set guioptions-=m  "menu bar
  set guioptions-=T  "toolbar
  set guioptions-=r  "scrollbar set background=dark
endif

