let g:lightline = {
    \ 'colorscheme': 'gruvbox',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'absolutepath', 'modified','readonly'] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'filetype' ] ] 
    \ },
    \ 'inactive': {
    \ 'left': [ [ 'filename' ] ],
    \ 'right': [ [ 'lineinfo' ],
    \            [ 'percent' ], 
    \            [ 'fileencoding'],
    \            [ 'fileformat' ] ] 
    \ },
    \ 'tabline': {
    \ 'left': [ [ 'buffers' ] ],
    \ 'right': [ [ '' ] ]
    \ },
    \ 'separator' : {
    \     'left': '', 
    \     'right': '' 
    \ },
    \ 'subseparator': {
    \     'left': '',
    \     'right': '',
    \ },
    \ 'component': {
    \     'modified': '[%M]',
    \     'readonly': '🔒',
    \ },
    \ 'component_expand': {
    \ 'buffers': 'lightline#bufferline#buffers'
    \ },
    \ 'component_type': {
    \ 'buffers': 'tabsel'
    \ },
    \ }
