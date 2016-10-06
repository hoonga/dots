"default
set backspace=indent,eol,start
set nu
set breakindent
set et
set ts=4
set sw=4
set sts=4
set list
set listchars=tab:>>
set bg=dark
syntax enable

call plug#begin('~/.vim/plugged')
    Plug 'zjhmale/coquille'
call plug#end()
set laststatus=2
set t_Co=256

au FileType coq CoqLaunch|call coquille#CoqideMapping()

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
