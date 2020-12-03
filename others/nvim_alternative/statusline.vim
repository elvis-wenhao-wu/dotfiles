" statusline settings
let g:currentmode={
       \ 'n'  : 'NORMAL ',
       \ 'v'  : 'VISUAL ',
       \ 'V'  : 'V·Line ',
       \ '' : 'V·Block ',
       \ 'i'  : 'INSERT ',
       \ 'R'  : 'R ',
       \ 'Rv' : 'V·Replace ',
       \ 'c'  : 'Command ',
       \}

set statusline=
set statusline+=%1*
" Show current mode
set statusline+=\ %{toupper(g:currentmode[mode()])}
set statusline+=%{&spell?'[SPELL]':''}

set statusline+=%#Warnings#
set statusline+=%{&paste?'[PASTE]':''}

set statusline+=%2*
" File path, as typed or relative to current directory
set statusline+=\ %F

set statusline+=%{&modified?'\ [+]':''}
set statusline+=%{&readonly?'\ []':''}

" Truncate line here
set statusline+=%<

" Separation point between left and right aligned items.
set statusline+=%=

set statusline+=%{&filetype!=#''?&filetype.'\ ':'none\ '}

" Encoding & Fileformat
set statusline+=%#Warnings#
" set statusline+=%{&fileencoding!='utf-8'?'['.&fileencoding.']':''}

" set statusline+=%2*
" set statusline+=%-7([%{&fileformat}]%)

" Warning about byte order
set statusline+=%#Warnings#
set statusline+=%{&bomb?'[BOM]':''}

set statusline+=%1*

" Show percentage of files
set statusline+=\ %p  
set statusline+=%%

" Location of cursor line
set statusline+=\ ☰ 
set statusline+=\ %l/%L 
set statusline+=\ col:
set statusline+=%2c
