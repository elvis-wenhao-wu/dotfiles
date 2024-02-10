" Initialisation
" See this link: https://github.com/liuchengxu/vim-which-key/issues/53

" === BASICS ===
augroup whichkeygroup
    " Register leader key as a prefix with the description dictionary 
    autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')
    " Hide status line
    autocmd! FileType which_key
    autocmd  FileType which_key set laststatus=0 noshowmode noruler
      \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler
augroup END
" Set Leader key (<Space>) to invoke the WhichKey menu (associated with <Space>)
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
" Set timeout
let g:which_key_timeout = 100
" Set aesthetic look for non-printing characters
let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}
" Disable floating window
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0
" Create mapping to add keys to
let g:which_key_map = {}
" Define a separator
let g:which_key_sep = '→'
" Sort all which-key items alphabetically in spite of their type.
let g:which_key_group_dicts = ''

" === MAPPINGS ===
" Principle: only add semantics here. Separate remaps sitting in plugins
" Examples: 
" let g:which_key_map['/'] = [ ':Commentary', 'comment' ]
" let g:which_key_map['o'] = [ '<Plug>LfEdit', 'Lf' ]
" let g:which_key_map.t = {
"       \ 'name' : '+terminal',
"       \ 'c' : 'clear',
"       \ 's' : [":TREPLSendSelection'>j"         , 'selection'],
"       \ }
" Single Keystroke Mapping:
let g:which_key_map.k = 'signature popup'
let g:which_key_map.u = 'uppercase'
let g:which_key_map.z = 'zoom vim'
let g:which_key_map.H = 'pivot horizontally'
let g:which_key_map.T = 'pivot tab'
let g:which_key_map.V = 'pivot vertically'
" Double Keystroke Mapping:
" a: actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'l' : [':Bracey'                 , 'start live server'],
      \ 'L' : [':BraceyStop'             , 'stop live server'],
      \ }
" b: buffers
let g:which_key_map.b = {
      \ 'name' : '+buffers' ,
      \ 'b' : [':buffers' , 'list buffers'],
      \ 'd' : [':Bclose'  , 'close current buffer'],
      \ 'f' : [':files'   , 'list files']
      \ }
" " f: find and replace
" let g:which_key_map.f = {
"       \ 'name' : '+find & replace' ,
"       \ 'B' : ['<Cmd>buffers<CR>'               , 'buffers'],
"       \ 'h' : ['<Cmd>history<CR>'               , 'history of files modified'],
"       \ }
" " S is for session
" let g:which_key_map.S = {
"       \ 'name' : '+sessions' ,
"       \ 'a' : 'add workspace',
"       \ 'd' : 'delete workspace', 
"       \ 'k' : 'configure neovim keys',
"       \ 'o' : 'open workspace',
"       \ 's' : 'stop/resume workspace',
"       \ 'S' : 'configure neovim settings',
"       \ }

