" === CONTROL KEY ===
" <Leader> key
" https://www.reddit.com/r/vim/comments/2d2za5/question_about_having_spacebar_as_leader/
" https://gist.github.com/benawad/b768f5a5bbd92c8baabd363b7e79786f
let g:mapleader = "\<Space>"
nnoremap <Space> <Nop>
" <Escape> key
" tnoremap <Esc> jk
inoremap jk <Esc>

" === NAVIGATION ===
" H, J, K, L for stronger movement of their lowercase counterpart
" refer to recursive/non-recursive mapping concept in the link below
" https://stackoverflow.com/questions/3776117/what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping
" nnoremap J L
" nnoremap K H
" nnoremap H ^
" nnoremap L g_
" vnoremap J L
" vnoremap K H
" vnoremap H ^
" vnoremap L g_
" Shift focus between windows
imap <C-h> <C-w>h
imap <C-j> <C-w>j
imap <C-k> <C-w>k
imap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Shift focus between buffers
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>
" Shift focus between tabs
" nnoremap <silent> <leader>n :tabnext<CR>
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

" === FILE MANIPULATION ===
" Open file in current directory
" cnoreabbrev ee e %:h
" Save file
nnoremap <silent> <C-s> :w<CR>
vnoremap <silent> <C-s> <ESC>:w<CR>
inoremap <silent> <C-s> <ESC>:w<CR>
" Close buffer: CTRL-SHIFT-W
nnoremap <silent> <C-q> :bdelete!<CR>
" Change window layout 
nnoremap <silent> <leader>T <C-w>T
nnoremap <silent> <leader>V <C-w>L
nnoremap <silent> <leader>H <C-w>J
" Resize window: <leader> -+ 
" nnoremap <silent> <leader>- :resize -2<CR>
" nnoremap <silent> <leader>+ :resize +2<CR>
" nnoremap <silent> <leader>< :vertical resize -2<CR>
" nnoremap <silent> <leader>> :vertical resize +2<CR>

" === TEXT PROCESSING ===
" Select all texts
nnoremap <silent> <C-a> ggVG
vnoremap <silent> <C-a> <ESC>ggVG
inoremap <silent> <C-a> <ESC>ggVG
" Indentation
vnoremap < <gv
vnoremap > >gv
" Uppercase
" https://vi.stackexchange.com/questions/5750/is-there-a-way-to-reselect-the-last-visual-shape-rather-than-the-last-actual-se
" inoremap <leader>u <esc>gUiw`]a
vnoremap <leader>u gUgV `[v`]
nnoremap <leader>u gUiw

" === EXTERNAL APPLICATIONS ===
" Python3
let g:loaded_python_provider = 0
let g:python3_host_prog = '/Users/wwu/.conda/envs/util/bin/python'
" Uncomment the followings for linux
" let g:python3_host_prog = "$HOME/.conda/envs/util/bin/python"
" Node
let g:node_host_prog = '/opt/homebrew/bin/neovim-node-host'
" Perl
let g:loaded_perl_provider = 0
" Ruby
let g:loaded_ruby_provider = 0

" === OTHERS ===
" copy path, leader key, esc key and clipboard
" nnoremap <silent> cpp :let @" = expand("%")<CR>
