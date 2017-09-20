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
colorscheme default
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
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_python_checkers = ['pyflakes']

" ctrlp, ctrlp-py-matcher/ctrlp-cmatcher
" let g:ctrlp_custom_ignore = { 
"     \ 'dir':  '\v[\/]\.(git)$',
"     \ 'file': '\v\.(exe|so|dll|pyc)$',
"     \ }
" 
" let g:ctrlp_match_func = { 'match': 'matcher#cmatch' }

" CommandT
let g:CommandTFileScanner = "watchman"
let g:CommandTSuppressMaxFilesWarning = 1
let g:CommandTMaxHeight = 30
let g:CommandTMaxFiles = 500000
let g:CommandTInputDebounce = 50
let g:CommandTMaxCachedDirectories = 10
let g:CommandTWildIgnore = &wildignore . ",*.pyc"
 

" status, better with vim-airline
set laststatus=2
set statusline+=%F

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1 
let g:indent_guides_auto_colors = 0 
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=wheat1 ctermbg=228
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=khakil ctermbg=229
