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
Plug 'arcticicestudio/nord-vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'dikiaap/minimalist'
call plug#end()

colorscheme nord
set termguicolors

" custom status line
" nord status line
hi StatusLine ctermbg=235 ctermfg=254 guibg=#3B4252 guifg=#ECEFF4

" minimalist status line
" hi StatusLine ctermbg=235 ctermfg=254 guibg=#262626 guifg=#ECEFF4

" emmet leader
let g:user_emmet_expandabbr_key = '<Tab>'
let g:user_emmet_install_global = 0

" enable spellcheck
map <Leader>l :setlocal spell! spelllang=en_us<CR>

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

" remaps jj to esc
" :imap jj <Esc>

" NERDTree toggle
nmap <silent> <Leader>n :NERDTreeToggle<CR>

" start NERDTree in minimal UI mode (No help lines)
let NERDTreeMinimalUI=1

" hides ^G from view
let g:NERDTreeNodeDelimiter = "\u00a0"

" moving between tabs sequentially
 nnoremap <C-k> gt<CR> 
 nnoremap <C-j> gT<CR>

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

" maps jj to esc
imap jj <esc>
