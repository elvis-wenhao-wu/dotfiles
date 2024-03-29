" The below setting comes from https://github.com/ChristianChiarulli/nvim/blob/master/general/settings.vim
set iskeyword+=-                        " Treat dash separated words as a word text object
set formatoptions-=cro                  " Stop newline continution of comments

" syntax off                            " Avoid syncolor.vim sourced multiple times
set hidden                              " Required to keep multiple buffers open multiple buffers
set wrap                                " Display long lines as just one line
set whichwrap+=<,>,[,],h,l
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time (has been set by default)
set cmdheight=2                         " More space for displaying messages
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 2 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number                              " Line numbers
set relativenumber
" set cursorline                        " Enable highlighting of the current line
set background=dark                     " Tell vim what the background color looks like
" set termguicolors                     " To display web icon for lua tree
set showtabline=1                       " 2: Always show tabs, 1: Show tabs when more than 1 tab
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
" set showcmd                           " has been set by default
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set noswapfile
set shortmess+=c                        " Don't pass messages to ins-completion-menu
" set signcolumn=yes                    " Always show the signcolumn, otherwise it would shift the text each time
set signcolumn=no                       " Always not show the signcolumn, it would shift the text each time
set synmaxcol=120                       " only syntax highlighting for 120 characters width
set regexpengine=1                      " 1 for old engine, and default 0 for either 1 or 2 NFA
set updatetime=300                      " Faster completion
set timeoutlen=100                      " By default timeoutlen is 1000 ms
" set ttimeoutlen=50                    " By default ttimeoutlen is 50ms. Similar to timeoutlen
set clipboard=unnamedplus               " Copy paste between vim and everything else
set incsearch
set hlsearch
set foldmethod=manual                   " Set folding method
set smartcase
set ignorecase
" speed
" set nolazyredraw
" set visualbell

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:syntastic_check_on_open = 0
syntax enable                           " Enables syntax highlighing

" Make the terminal transparent
autocmd ColorScheme * highlight Normal ctermbg=none guibg=none  
autocmd ColorScheme * highlight BufTabLineFill ctermbg=none guibg=none  
autocmd ColorScheme * highlight CursorLineNr ctermbg=none guibg=none  

" I have forgot what this line did
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

