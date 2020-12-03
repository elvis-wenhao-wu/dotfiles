" terminal split method
let g:neoterm_default_mod = 'belowright'

" terminal split size
let g:neoterm_size=10 

" Solve ipython copy paste issues: see the following issue
" https://github.com/kassio/neoterm/issues/295
" another option is to make neoterm_repl_enable_ipython_paste_magic=1
let g:neoterm_bracketed_paste=1
let g:neoterm_repl_python = ['clear', 'ipython']

" 3<leader>ts will set neoterm-3 as python REPL
" nnoremap tt :<c-u>exec 'TREPLSetTerm ' . v:count<cr>
" nnoremap tn :Tnew<cr>
" cnoreabbrev tt Tnew

" nnoremap tc :<c-u>exec v:count.'Tclear'<cr>
" nnoremap tc :Tclear<cr>
" vnoremap ts :TREPLSendSelection<cr>
" vnoremap ts :TREPLSendSelection<cr>'>j
" nnoremap tt :TREPLSendLine<cr>

" nnoremap tw :Tclose!<CR>
" nnoremap tg :Ttoggle<CR>
