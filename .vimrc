syntax on
set number
set ai
set shiftwidth=4
set expandtab
set nohlsearch
set shell=bash\ --login
set tags=/var/www/ssmc/.git/tags
set foldmethod=syntax
set foldlevelstart=99
colorscheme elflord
let php_folding=1
let php_sql_query=1
let php_html_in_strings=1
au BufRead,BufNewFile *.html.twig set filetype=html
au BufRead,BufNewFile *.css.twig set filetype=css
au BufRead,BufNewFile *.less set filetype=css
au BufRead,BufNewFile *.js.twig set filetype=js
au BufRead,BufNewFile *.php.twig set filetype=php
