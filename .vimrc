set nocompatible              " be iMproved, required
let mapleader=","
let g:solarized_termcolors=256
colorscheme solarized
syntax enable
"filetype off                  " required
filetype plugin on

" Auto trim "
autocmd BufWritePre *.py :%s/\s\+$//e

nmap <silent> <C-D> :NERDTreeToggle<CR>

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

set foldnestmax=2

" Searching in a file"
set hls        " <hlsearch>   Highlight search strings
set ignorecase " <ignorecase> Ignore case when searching
set scs        " <smartcase>  Don't ignore case when capitals are present"

" Movement control and visual pleasantries"
set cul        " <cursorline>  Highlight the current line
set nu         " <number>      Show line numbers in gutter
set nuw=2      " <numberwidth> Default width of gutter
set sm         " <showmatch>   Show matching brackets and stuff
set sc         " <showcmd>     Show command in the last line of the screen
set vb t_vb=   " <visualbell>  Turns default to on.
set ve=block   " <virtualedit> Allows for selecting empty spaces.
set list       " <list>        Turn list on and set characters below
set lcs=nbsp:¬,eol:ϟ,tab:--,extends:»,precedes:«,trail:•

" Use ctrl-[hjkl] to select the active split!"
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" move config - use ctrl instead of alt "
let g:move_key_modifier = 'C'

" git gutter config"
let g:gitgutter_realtime=1
let g:gitgutter_eager=1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Bundle 'Raimondi/delimitMate'
"Bundle 'scrooloose/nerdcommenter'
Bundle 'tomtom/tcomment_vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'ervandew/supertab'
Plugin 'flazz/vim-colorschemes'
Bundle 'tpope/vim-fugitive'
Bundle 'ciaranm/detectindent'
Bundle 'matze/vim-move'
Bundle 'mileszs/ack.vim'
Bundle 'wesQ3/vim-windowswap'
Bundle 'kchmck/vim-coffee-script'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


