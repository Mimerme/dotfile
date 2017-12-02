set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

"Functional Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'

"Costmetic Plugins
"Molokai Color Scheme
Plugin 'tomasr/molokai'
"General additional syntax highlighting
Plugin 'sheerun/vim-polyglot'
Plugin 'terryma/vim-multiple-cursors'

"Language Support Packs
"Go-lang support
Plugin 'fatih/vim-go'
"Markdown support
"NOTE: You need to run npm install -g livedown for this to work
Plugin 'shime/vim-livedown'

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

"Turn on syntax highlighting
syntax on
set number

colorscheme molokai

"Binds - all keybinds go here
map <F2> :NERDTreeToggle <Enter>

" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

"Turn on syntax highlighting
set hlsearch

"Navigate splits with Ctrl+<key>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"Toggle between hybrid line numbers
noremap <C-i> :set relativenumber! <Enter>

"Turn off search highlighting after a search
noremap <Space> :noh <Enter>

"Navigate tabs with Shift+<key>
noremap <S-j> :tabprevious <Enter>
noremap <S-k> :tabnext <Enter>

"NERDTree Config
"Make NERDTree open from the right
let NERDTreeWinPos=1
let NERDTreeDirArrows = 1
let NERDTreeMinimalUI = 1
let NERDTreeAutoDeleteBuffer = 1

"More acccurate molokai color scheme 256 color terminals
let g:rehash256 = 1

"Write with root privs
noremap <C-w> :w !sudo tee %
