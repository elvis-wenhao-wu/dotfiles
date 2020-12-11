" Initialisation
" See this link: https://github.com/liuchengxu/vim-which-key/issues/53

" Basics 
" Register the description dictionary for the prefix first
augroup whichkeygroup
    autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')
    " Hide status line
    autocmd! FileType which_key
    autocmd  FileType which_key set laststatus=0 noshowmode noruler
      \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler
augroup END

" Leader Key Maps (I still don't figure what this line of code mean)
" let @s = 'veS"'

" Timeout
let g:which_key_timeout = 100
let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map = {}
" Define a separator
let g:which_key_sep = '→'

" Coc Search & refactor
" nnoremap <leader>? CocSearch <C-R>=expand("<cword>")<CR><CR>
" let g:which_key_map['?'] = 'search word'

" No floating window
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" " Hide status line
" autocmd! FileType which_key
" autocmd  FileType which_key set laststatus=0 noshowmode noruler
"   \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" MAPPING
" Principle: only add semantics here. Separate remaps sitting in plugins

" SINGLE mappings
let g:which_key_map.c = 'start coc'
let g:which_key_map.d = 'show diff'
let g:which_key_map.u = 'uppercase'
let g:which_key_map.H = 'pivot below'
let g:which_key_map.T = 'pivot in tab'
let g:which_key_map.V = 'pivot right'
let g:which_key_map.z = 'zoom vim'
let g:which_key_map['?'] = [ ':Commands', 'commands' ]
" let g:which_key_map['/'] = [ ':Commentary', 'comment' ]
" let g:which_key_map['o'] = [ '<Plug>LfEdit', 'Lf' ]
" Ignore single mappings
" let g:which_key_map['n'] = [ ':tabnext<CR>', 'which_key_ignore' ]
" let g:which_key_map['N'] = [ ':tabNext<CR>', 'which_key_ignore' ]
" let g:which_key_map['$'] = [ '<Plug>BufTabLine.Go(1)', 'which_key_ignore' ]
" let g:which_key_map['0'] = [ '<Plug>BufTabLine.Go(-1)', 'which_key_ignore' ]

" GROUP mappings
" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'l' : [':Bracey'                 , 'start live server'],
      \ 'L' : [':BraceyStop'             , 'stop live server'],
      \ }

" b is for bclose, as an dependency for other plugins
let g:which_key_map.b = {
      \ 'name' : '+bclose' ,
      \ 'd' : [':Bclose'  , 'close current buffer']
      \ }

" f is for find and replace
let g:which_key_map.f = {
      \ 'name' : '+find & replace' ,
      \ 'b' : [':BLines'                , 'find codes (%)'],
      \ 'B' : [':Buffers'               , 'find buffernames (all)'],
      \ 'c' : [':BCommits'              , 'commits (%)'],
      \ 'C' : [':Commits'               , 'commits (log)'],
      \ 'f' : [':Farf --source=vimgrep' , 'codes (%)'],
      \ 'F' : [':Files'                 , 'find filenames (pwd)'],
      \ 'g' : [':GFiles'                , 'git ls-files'],
      \ 'G' : [':GFiles?'               , 'git status'],
      \ 'h' : [':History'               , 'history of files modified'],
      \ 'H' : [':History:'              , 'history of commands'],
      \ 'l' : [':Lines'                 , 'find codes (pwd)'] ,
      \ 'L' : [':Lf'                    , 'LF'] ,
      \ 'm' : [':Maps'                  , 'key maps'] ,
      \ 'r' : [':Farr --source=rgnvim'  , 'replace codes (ripgrep)'],
      \ 'R' : [':Rg'                    , 'find codes (ripgrep)'],
      \ 't' : [':Filetypes'             , 'types (files)'],
      \ }

" F is for formatting
let g:which_key_map.F = {
      \ 'name' : '+formatting' ,
      \ 't' : [':Format'  , 'format codes'] ,
      \ 'o' : [':Fold'  , 'fold codes']
      \ }

" S is for session
nnoremap <leader>Sa :Obsession ~/.config/nvimSessions/
nnoremap <leader>Sd :Obsession!<CR>
nnoremap <leader>So :source ~/.config/nvimSessions/
nnoremap <leader>Ss :Obsession<CR>
nnoremap <leader>SS :source ~/.config/nvimSessions/nvimConfig.vim<CR>
nnoremap <leader>Sk :source ~/.config/nvimSessions/nvimKeys.vim<CR>
let g:which_key_map.S = {
      \ 'name' : '+sessions' ,
      \ 'a' : 'add workspace',
      \ 'd' : 'delete workspace', 
      \ 'k' : 'configure neovim keys',
      \ 'o' : 'open workspace',
      \ 's' : 'stop/resume workspace',
      \ 'S' : 'configure neovim settings',
      \ }

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ 'c' : 'clear',
      \ 'f' : 'file',
      \ 'g' : 'toggle',
      \ 'l' : 'line',
      \ 'n' : 'new (below)',
      \ 's' : 'selection',
      \ 't' : 'line',
      \ 'w' : 'close', 
      \ 'v' : 'new (vertical)'
      \ }
      " \ 's' : [":TREPLSendSelection'>j"         , 'selection'],

" let g:which_key_map.s = {
"       \ 'name' : '+surround' ,
"       \ 'a' : ["<Plug>Ysurround"                    , 'add'],
"       \ 'c' : ["<Plug>Csurround"                    , 'change'],
"       \ 'd' : ["<Plug>Dsurround"                    , 'delete']
"       \ }
  
" Mappings for vim surround only
autocmd! User vim-which-key call which_key#register('s', 'g:surround_key_map')
nmap s <Nop>
vmap s <Nop>
nnoremap <silent> s :silent <c-u> :silent WhichKey 's'<CR>
vnoremap <silent> s :silent <c-u> :silent WhichKeyVisual 's'<CR>
let g:surround_key_map = {}
let g:surround_key_map.a = 'add'
let g:surround_key_map.c = 'change'
let g:surround_key_map.d = 'delete'
let g:surround_key_map.s = 'block'
