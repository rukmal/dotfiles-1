call pathogen#infect() 

syntax enable
set backspace=2
set backspace=indent,eol,start
set nu
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set guifont=Source\ Code\ Pro:h12
set background=dark
colorscheme base16-ocean

" Mac OS X / Linux
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
" let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux

" Windows
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" rainbow parantheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
