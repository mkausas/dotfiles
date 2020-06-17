
set nocompatible              " be iMproved, required
filetype off                  " required


syntax on
set relativenumber " self-explanatory
set nu " absolute line number for cursor

" indentation
set autoindent " copies indentation from previous line
set smartindent " special indents for different languages

set wildmenu " weak auto-completion
set colorcolumn=80 " keep the codes clean

set nowrap        " don't wrap lines
set tabstop=2     " a tab is 2 spaces
set backspace=indent,eol,start
          " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
"set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set tabstop=2 shiftwidth=2 expandtab


" disable UP DOWN LEFT RIGHT
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" faster navigation in split mode
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>



" reset leader key
:let mapleader = ","

" hack to make lightline work properly
set laststatus=2

" needed for tagbar
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
nmap <C-]> :TagbarToggle<CR>

noremap ; :FZF<CR>
noremap \ :Ag<SPACE>
"map <C-[> :NERDTreeToggle<CR>


" Langauge Specific Configs "

autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2


" vim plugin manager stuff below
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mhinz/vim-startify'
Plugin 'junegunn/fzf.vim' " file search
Plugin 'terryma/vim-multiple-cursors' " ctl-n
Plugin 'mhinz/vim-signify' " like gitgutter, but async
Plugin 'majutsushi/tagbar' " class definitions

Plugin 'morhetz/gruvbox' " theme
Plugin 'itchyny/lightline.vim' " bottom banner
Plugin 'scrooloose/syntastic'

call vundle#end()            " required
filetype plugin indent on    " required

" fzf
set rtp+=/usr/local/opt/fzf

colorscheme gruvbox
set pastetoggle=<F3>
set t_Co=256

