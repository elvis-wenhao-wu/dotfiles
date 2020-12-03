" YCM additional setting in PlugInstall
function! BuildYCM(info)  
  " info is a dictionary with 3 fields  
  " - name:   name of the plugin  
  " - status: 'installed', 'updated', or 'unchanged'  
  " - force:  set on PlugInstall! or PlugUpdate!  
  if a:info.status == 'installed' || a:info.force  
    !./install.py  
  endif  
endfunction  

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'morhetz/gruvbox' 
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-sensible'
" Plug 'junegunn/seoul256.vim'
Plug 'preservim/nerdtree' 
Plug 'preservim/nerdcommenter'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'airblade/vim-gitgutter'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'ryanoasis/vim-devicons'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
" Plug 'bling/vim-bufferline'
" Plug 'myusuf3/numbers.vim'
" Plug 'leafgarland/typescript-vim'
Plug 'ycm-core/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'scrooloose/syntastic' 
Plug 'jiangmiao/auto-pairs'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Set up initial setting when first opening vim 
" autocmd vimenter * NERDTree
" autocmd vimenter * colorscheme gruvbox
colorscheme gruvbox
set background=dark

" Esc remapping
" map <C-l> <Esc>
" map! <C-l> <Esc>
inoremap jk <Esc>

" Vim basic settings
syntax on

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set smartcase
set hlsearch
set incsearch
set showcmd
set noswapfile
set undodir=~/.vim/undodir
set undofile
set relativenumber

" set colorcolumn=80
" highlight ColorColumn ctermbg=0 guibg=lightgrey
let mapleader = " "
" copy file name and path name
nnoremap cpp :let @" = expand("%")<CR>
set clipboard=unnamed

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
" NerdTree toggle shortcut keyboard
nmap <C-n> :NERDTreeToggle %:p:h<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25
" YouCompleteMe
nnoremap <silent> <leader>gd :YouCompleteMe GoTo<CR>
nnoremap <silent> <leader>gf :YouCompleteMe FixIt<CR>
" Undotree
let g:undotree_SetFocusWhenToggle = 1
" ripgrep  
if executable('rg') 
    let g:rg_derive_root='true'
endif
" Ctrlp, use Ctrl g to exit the buffer
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching = 0
" Airline
let g:airline_section_y = 0
let g:airline_section_warning = 0
let g:airline#extensions#bufferline#overwrite_variables = 0
" Bufferline
let g:airline#extensions#tabline#show_buffers = 0

" Python build
" map <F9> <Esc>:w<CR>:!clear;python3 %<CR>
" autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!clear; python3' shellescape(@%, 1)<CR>
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!clear; python3' shellescape(@%, 1)<CR>

