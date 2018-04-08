" powerline
let g:airline_powerline_fonts = 1

" theme
let g:airline_theme = 'badwolf'

" cool tab bar
let g:airline#extensions#tabline#enabled = 1

" row, col
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

" vim-virtualenv extension. 
let g:airline#extensions#virtualenv#enabled = 1

" vim-gitgutter extension. Diff with git HEAD, display +/- 
let g:airline#extensions#hunks#enabled = 0

" ALE extension
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol = 'E:'
let g:airline#extensions#ale#warning_symbol = 'W:'

