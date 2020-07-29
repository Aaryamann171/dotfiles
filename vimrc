set nu
set belloff=all
set nohlsearch
set autoindent
set smartindent
set termguicolors
set nobackup 
set noundofile
set noswapfile 
set t_Co=256
set mouse=n
set laststatus=2
set background=dark
syntax enable

" Custom status line
hi StatusLine ctermbg=235 ctermfg=254 guibg=#262626 guifg=#e4e4e4

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'dikiaap/minimalist'
call plug#end()

colorscheme minimalist

"emmet settings
let g:user_emmet_expandabbr_key = '<Tab>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
"tree explorer plugin
map <C-n> :NERDTree!<CR>
"moves the current line down by one line
map <C-j> :m+1<CR>
" moves the current line up by one line
map <C-k> :m-2<CR>
"enable spellchecking
map <F5> :setlocal spell! spelllang=en_us<CR>
"copy to system clipboard
vnoremap <C-S-c> "+y
"paste from system clipboard
map <C-S-p> "+P
