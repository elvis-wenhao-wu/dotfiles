" The active codes are for zoomwintab plugin: https://github.com/troydm/zoomwintab.vim
" Disable remap <C-w>o and <C-w><C-o> keys to ZoomWinTabToggle command
let g:zoomwintab_remap=0
" If enabled, don't hide the tab bar
let g:zoomwintab_hidetabbar=0
" Enable remap <leader>z to ZoomWinTabToggle command
" nnoremap <leader>z :ZoomWinTabToggle<CR>

" The following is for the simple solution given for sidestepping the original zoomwin command
" Note this is not the official zoom win plugin configuration
" This is a simple solution by https://stackoverflow.com/questions/13194428/is-better-way-to-zoom-windows-in-vim-than-zoomwin
" Zoom / Restore window.
"function! s:ZoomToggle() abort
  "if exists('t:zoomed') && t:zoomed
    "execute t:zoom_winrestcmd
    "let t:zoomed = 0
  "else
    "let t:zoom_winrestcmd = winrestcmd()
    "resize
    "vertical resize
    "let t:zoomed = 1
  "endif
"endfunction
"command! ZoomToggle call s:ZoomToggle()
"nnoremap <silent> <leader>z ZoomToggle<CR>
