" ptzz/lf.vim
" open lf when vim open a directory
let g:lf_replace_netrw = 1 
" set key mapping to none
let g:lf_map_keys = 0

" thezeroalpha/vim-lf
nnoremap <C-n> :LF %:p edit<CR>
