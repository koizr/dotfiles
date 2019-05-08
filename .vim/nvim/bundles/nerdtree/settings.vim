let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '☒',
            \ "Unknown"   : "?"
            \ }
" show hidden file
let NERDTreeShowHidden = 1
" ignore
let g:NERDTreeIgnore=['\.DS_Store$', '\.git$', '\.svn$', '\~$']

" open & close
map <silent><C-q> :NERDTreeToggle<CR>

