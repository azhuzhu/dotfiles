set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
set laststatus=2
set noshowmode
set encoding=utf-8
set t_Co=256
let python_highlight_all=1
syntax on

set nocompatible              " be iMproved, required
filetype off                  " required

"  Vaudle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
" Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'mattn/emmet-vim'
Plugin 'honza/vim-snippets'
Plugin 'easymotion/vim-easymotion'
Plugin 'fs111/pydoc.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'nvie/vim-flake8'
Plugin 'kien/ctrlp.vim'

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
"

" NERDTree config
map <F10> :NERDTreeToggle<CR>
" Tagbar config
map <F8> :TagbarToggle<CR>

" YouCompleteMe config
let g:ycm_autoclose_preview_window_after_completion=1


" Tab and Blank config
set sw=4 sta et
if strlen($SSH_TTY) == 0
    set list lcs=tab:»· lcs+=trail:·
else
    set list lcs=tab:>- lcs+=trail:-
endif

" search config
nnoremap <leader><space> :noh<CR>
set incsearch
set showmatch
set hlsearch

" SimpylFold config
let g:SimpylFold_docstring_preview=1

" Key mapping
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Enable folding
set foldmethod=indent
nnoremap <space> za

