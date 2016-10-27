execute pathogen#infect()

set number
set incsearch hlsearch
filetype plugin indent on
syntax on

" Indentation
set tabstop=4 shiftwidth=4 expandtab
set smarttab
set smartindent
set ignorecase
" Indentation on FileType
autocmd BufRead,BufNewFile  *.c,*.h,*.cpp,*.java setlocal cindent noexpandtab
autocmd BufRead,BufNewFile  *.js,*.jsx,*.es6,*.html setlocal tabstop=2 shiftwidth=2

autocmd BufRead,BufNewFile  *.txt setlocal spell spelllang=en_gb

" colour scheme
highlight Search ctermbg=190 ctermfg=124
highlight Visual ctermbg=190 ctermfg=8
highlight SpellBad ctermbg=160 ctermfg=11
highlight SpellCap ctermbg=160 ctermfg=11
highlight SpellLocal ctermbg=160 ctermfg=11
highlight SpellRare ctermbg=160 ctermfg=11

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5
let g:syntastic_python_checkers = ['pyflakes']

" ctrlp, ctrlp-py-matcher
let g:ctrlp_custom_ignore = { 
    \ 'dir':  '\v[\/]\.(git)$',
    \ 'file': '\v\.(exe|so|dll|pyc)$',
    \ }

let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" status
set laststatus=2
set statusline+=%F
