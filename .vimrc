set hidden
map <F6> :bn
map <F5> :bp
map <F4> :set filetype=python
map <F3> :setlocal spell spelllang=en_us
set autoindent
set backspace=indent,eol,start
set fileencodings=utf-8,latin1
set formatoptions=tcql
set guifont=Monospace\ 13
set helplang=en
set hidden
set history=50
set hlsearch
set ruler
set smartindent
set smarttab
set tags=tags,/home/sruffell/linux-2.6/tags
set termencoding=utf-8
set textwidth=78
set viminfo='20,\"50
set window=34
set incsearch
set nowrap
set exrc
highlight OverLength ctermbg=red ctermfg=white guibg=#592929

autocmd FileType python setlocal tags=tags ts=4 sw=4 nocindent expandtab
autocmd FileType c match OverLength /\%81v.\+/
autocmd FileType c map g<C-\> :cs find s <C-R>=expand("<cword>")<CR><CR>
