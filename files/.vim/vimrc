set number
syntax enable
set background=dark
colorscheme gruvbox
set mouse=a
set tabstop=4
set shiftwidth=0
set noexpandtab

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

nnoremap gb :ls<CR>:b<Space>

execute pathogen#infect()
syntax on
filetype plugin indent on

" Open NERDTree if no file is specifiled
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Toggle NERDTree with Ctrl-N
map <C-n> :NERDTreeToggle<CR>

" Close vim if NERDTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
