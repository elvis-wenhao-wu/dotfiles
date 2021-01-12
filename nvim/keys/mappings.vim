"  Basic Key Mappings
imap <C-h> <C-w>h
imap <C-j> <C-w>j
imap <C-k> <C-w>k
imap <C-l> <C-w>l

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
 
" Leader key
" SEE this: https://www.reddit.com/r/vim/comments/2d2za5/question_about_having_spacebar_as_leader/
let g:mapleader = "\<Space>"
nnoremap <Space> <Nop>

" File manipulation
" cnoreabbrev ee e %:h

" TEXT PROCESSING
" Indentation
vnoremap < <gv
vnoremap > >gv
" Uppercase
" SEE this: https://vi.stackexchange.com/questions/5750/is-there-a-way-to-reselect-the-last-visual-shape-rather-than-the-last-actual-se
" inoremap <leader>u <esc>gUiw`]a
vnoremap <leader>u gUgV `[v`]
nnoremap <leader>u gUiw

" ESCAPE
inoremap jk <Esc>
" tnoremap <Esc> jk

" <TAB>: completion.
" copied from https://gist.github.com/benawad/b768f5a5bbd92c8baabd363b7e79786f
inoremap <silent> <expr><TAB> 
  \ pumvisible() ? "\<C-n>" : 
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" NAVIGATION
" H, J, K, L for stronger movement of their lowercase counterpart
" refer to recursive/non-recursive mapping concept in the link below
" https://stackoverflow.com/questions/3776117/what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping
nnoremap J L
nnoremap K H
nnoremap H 0
nnoremap L $
vnoremap J L
vnoremap K H
vnoremap H 0
vnoremap L $

" TAB in general mode will move to next buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>
" CTRL-SHIFT-W will close the buffer
nnoremap <silent> <C-q> :bdelete!<CR>
" CTRL-S save file
nnoremap <silent> <C-s> :w<CR>
vnoremap <silent> <C-s> <ESC>:w<CR>
inoremap <silent> <C-s> <ESC>:w<CR>
" CTRL-A select all
nnoremap <silent> <C-a> ggVG
vnoremap <silent> <C-a> <ESC>ggVG
inoremap <silent> <C-a> <ESC>ggVG
" CTRL-TAB in general mode will move to next tab
" nnoremap <silent> <leader>n :tabnext<CR>
" CTRL-SHIFT-TAB will go back
" nnoremap <silent> <leader>N :tabNext<CR>

" Terminal window navigation
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
tnoremap <Esc> <C-\><C-n>
            
" Use <leader> -+ to resize windows
" nnoremap <silent> <leader>- :resize -2<CR>
" nnoremap <silent> <leader>+ :resize +2<CR>
" nnoremap <silent> <leader>< :vertical resize -2<CR>
" nnoremap <silent> <leader>> :vertical resize +2<CR>

" Better nav for omnicomplete
" inoremap <expr> <c-j> ("\<C-n>")
" inoremap <expr> <c-k> ("\<C-p>")

" copy path, leader key, esc key and clipboard
" nnoremap <silent> cpp :let @" = expand("%")<CR>

" Change current split window to another layout
" layout: tab
nnoremap <silent> <leader>T <C-w>T
" layout: vertical right
nnoremap <silent> <leader>V <C-w>L
" layout: horizontal below
nnoremap <silent> <leader>H <C-w>J

" python3 mapping
let g:loaded_python_provider = 0
let g:python3_host_prog = '/usr/local/Caskroom/miniconda/base/envs/primary/bin/python'

" node mapping
let g:node_host_prog = '/usr/local/bin/neovim-node-host'

" disable perl support
let g:loaded_perl_provider = 0

" disable ruby support
let g:loaded_ruby_provider = 0
