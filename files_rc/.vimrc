set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on

"colorscheme darkblue

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set nu
set rnu
set mouse=a

set smartcase
set smarttab
set hlsearch
set incsearch

set wildignore=*.swp,*.bak,*.pyc,*.class

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set pastetoggle=<F2>

set autoread

set magic

set showmatch
set laststatus=2
set tabpagemax=100

match Error /\%81v.\+/

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

func! WordProcessorMode()
    setlocal textwidth=80
    setlocal smartindent
    setlocal spell spelllang=en_us
    setlocal noexpandtab
endfu
com! WP call WordProcessorMode()

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

let g:airline#extensions#tabline#enabled = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'


"set statusline=
"set statusline+=%1*\ %<%F
"set statusline+=\ %y
"set statusline+=\ %=\ %l/%L\ (%03p%%)
"set statusline+=\ col:%03c
"set statusline+=\ \ %m%r%w\ %P\

