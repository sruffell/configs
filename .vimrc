set syntax=on
set hidden
set modeline
map <F6> :bn
map <F5> :bp
map <F4> :set filetype=python
map <F3> :setlocal spell spelllang=en_us
imap kj <C-[>
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
set tags=tags,/home/sruffell/linux/tags
set termencoding=utf-8
set textwidth=80
set viminfo='20,\"50
set window=34
set incsearch
set nowrap
set exrc
set background=dark

" This overlength script isn't needed with vim 7.3+ which now include
" the 'colorcolumn' setting. Keeping it here for use on systems with older
" versions of vim installed.
"
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"autocmd FileType c match OverLength /\%81v.\+/
set colorcolumn=81

autocmd FileType python setlocal tags=tags ts=4 sw=4 nocindent expandtab
autocmd FileType javascript setlocal tags=tags ts=4 sw=4 nocindent expandtab
" autocmd FileType c map g<C-\> :cs find s <C-R>=expand("<cword>")<CR><CR>

set grepprg=ag
iabbrev date- <c-r>=strftime("%Y/%m/%d %H:%M:%S")<cr><cr>
