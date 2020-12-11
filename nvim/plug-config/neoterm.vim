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

" Which key
nnoremap <leader>tc :Tclear<cr>
nnoremap <leader>tf :TREPLSendFile<cr>
nnoremap <leader>tg :Ttoggle<cr>
nnoremap <leader>tl :TREPLSendLine<cr>
vnoremap <leader>tl :TREPLSendLine<cr>
nnoremap <leader>tn :Tnew<cr>
nnoremap <leader>tv :vertical Topen resize=40<cr>
vnoremap <leader>ts :TREPLSendSelection<cr>'>j"
nnoremap <leader>tt :TREPLSendLine<cr>
vnoremap <leader>tt :TREPLSendLine<cr>
nnoremap <leader>tw :Tclose!<cr>
vnoremap <leader>tw :Tclose!<cr>
