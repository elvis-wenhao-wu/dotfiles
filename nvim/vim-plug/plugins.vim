" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/autoload/plugged')
    
    " TEXT PROCESSING
    " Better Comments
    Plug 'tpope/vim-commentary'    
    " Repeat stuff
    Plug 'tpope/vim-repeat'
    " Surround
    Plug 'tpope/vim-surround'
    " Text Navigation
    Plug 'unblevable/quick-scope'

    " WEB
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Closetags
    Plug 'alvan/vim-closetag'
    " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'
    " live server
    Plug 'turbio/bracey.vim'

    " INTELLISENSE
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!', 'WhichKeyVisual', 'WhichKeyVisual!'] }   
    " Plug 'neovim/nvim-lspconfig'
    " Plug 'nvim-lua/completion-nvim'
    " Plug 'nvim-lua/diagnostic-nvim'

    " FIND & SEARCH
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
    Plug 'junegunn/fzf.vim'
    " Find and replace
    Plug 'ChristianChiarulli/far.vim'
    Plug 'jremmen/vim-ripgrep'
    " Diff
    Plug 'jmcantrell/vim-diffchanges'

    " FILE EXPLORE
    " Lf integration (lf.vim dependency: bclose)
    Plug 'rbgrouleff/bclose.vim'
    Plug 'ptzz/lf.vim'
    Plug 'thezeroalpha/vim-lf'
    " Rename
    Plug 'danro/rename.vim'
    " Session
    Plug 'tpope/vim-obsession'
    " Plug 'haorenW1025/floatLf-nvim'
    " Plug 'preservim/nerdtree'
    " Plug 'kyazdani42/nvim-web-devicons'
    " Plug 'kyazdani42/nvim-tree.lua'
    " Plug 'antoinemadec/FixCursorHold.nvim'
    " Plug 'lambdalisue/fern.vim'   
    " Plug 'kyazdani42/nvim-web-devicons' " for file icons
    " Plug 'juanibiapina/vim-lighttree'
    " Plug 'justinmk/vim-dirvish' 
    " Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    " Plug 'kyazdani42/nvim-tree.lua'


    " COLOR SCHEME 
    Plug 'gruvbox-community/gruvbox'
    " Plug 'chriskempson/base16-vim'
    " Plug 'morhetz/gruvbox' 
    " Plug 'lifepillar/vim-gruvbox8'
    " Plug 'npxbr/gruvbox.nvim'
    " Plug 'tjdevries/colorbuddy.vim'
    " Plug 'tjdevries/gruvbuddy.nvim'
    " Plug 'christianchiarulli/nvcode-color-schemes.vim'
    " Plug 'nvim-treesitter/nvim-treesitter'

    " EXTERNALS
    " Tmux
    Plug 'christoomey/vim-tmux-navigator'
    " Vim window zoom
    Plug 'troydm/zoomwintab.vim'
    " TERMINAL
    Plug 'kassio/neoterm'
    " Plug 'voldikss/vim-floaterm'

    " STATUSLINE AND TABLINE
    Plug 'ap/vim-buftabline'
    " Plug 'itchyny/lightline.vim'
    " Plug 'mengelbrecht/lightline-bufferline'
    " Plug 'rbong/vim-crystalline'
    " Plug 'KaraMCC/vim-streamline'
    " Plug 'narajaon/onestatus'
    " Plug 'bling/vim-bufferline'
    " Plug 'fholgado/minibufexpl.vim'
    " Plug 'jeetsukumaran/vim-buffergator'
    " Plug 'humiaozuzu/TabBar'
    " Plug 'Shougo/tabpagebuffer.vim'
    " Plug 'pacha/vem-tabline'

    " OTHERS
    " Auto set indent settings
    " Plug 'tpope/vim-sleuth'
    " Colorizer
    " Plug 'norcalli/nvim-colorizer.lua'
    " Debugging
    " Plug 'puremourning/vimspector'

call plug#end()
