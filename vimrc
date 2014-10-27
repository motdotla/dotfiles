set nocompatible                  " be iMproved

syntax enable                     " Turn on syntax highlighting.

set title                         " Set the terminal's title

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set ruler                         " Show cursor position.

set visualbell                    " No beeping.


syntax on                      " https://github.com/gmarik/vundle/issues/210
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
" vim-scripts repos
" non github repos
" git repos on your local machine (ie. when working on your own plugin)
" http://wowkhmer.com/2012/04/08/keep-your-vimrc-concise-and-vundle-managing-dependencies/
Plugin 'jnwhiteh/vim-golang'
Plugin 'kien/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/nerdtree'
Plugin 'msanders/snipmate.vim'

filetype plugin indent on     " required!
"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"

" Tab width 2 soft
:set expandtab
:set tabstop=2
:set shiftwidth=2
" Mouse to resize windows
:set mouse=a
" NERDTree shortcut
map <F2> :NERDTreeToggle<CR>
filetype plugin indent on
" gofmt on save
au FileType go au BufWritePre <buffer> Fmt
" au FileType javascript setl tabstop=4 shiftwidth=4
