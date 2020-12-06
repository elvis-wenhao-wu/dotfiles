" start the plugin enabled
" let g:qs_enable=1
" reduce the slowdown caused by vanilla highlight mode in large terminals
" let g:qs_lazy_highlight = 1

" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['t', 'T', 'f', 'F']

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#eF5F70' gui=underline ctermfg=81 cterm=underline

" Maximum plugin valid range (match with synmaxcol in settings.vim)
let g:qs_max_chars=120

