if strlen(finddir('~/.vim/bundle/Vundle.vim')) > 0
    set nocompatible              " be iMproved, required
    filetype off                  " required

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'rizzatti/dash.vim'

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
endif

syntax on
set number
set ai
set shiftwidth=4
set expandtab
set nohlsearch
set shell=bash\ --login
set foldmethod=syntax
set foldlevelstart=99
colorscheme elflord
au BufRead,BufNewFile *.html.twig set filetype=html
au BufRead,BufNewFile *.css.twig set filetype=css
au BufRead,BufNewFile *.less set filetype=css
au BufRead,BufNewFile *.js.twig set filetype=js
au BufRead,BufNewFile *.php.twig set filetype=php
au BufRead,BufNewFile Vagrantfile set filetype=ruby

au BufNewFile *.php silent 0r ~/.vim/skeleton.php
au BufNewFile *.js silent 0r ~/.vim/skeleton.js

if strlen(findfile('.vimrc.local', $HOME)) > 0
    source $HOME/.vimrc.local
endif
