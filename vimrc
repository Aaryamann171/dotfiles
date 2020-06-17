if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

if has('syntax') && has('eval')
  packadd! matchit
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'arcticicestudio/nord-vim'
call plug#end()

" Works with both enabled and disabled option.
let g:nord_uniform_status_lines = 0
colorscheme nord
set background=dark
syntax enable
set t_Co=256
:map <C-n> :NERDTree
"moves the current line down by one line
:map <C-j> :m+1<CR>==
" moves the current line up by one line
:map <C-k> :m-2<CR>==
set rnu "relative numbering
set autoindent
set termguicolors
set nobackup 
set noswapfile 
set noundofile
