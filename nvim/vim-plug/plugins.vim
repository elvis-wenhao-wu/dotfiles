" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/autoload/plugged')

    " === NEOVIM STATUSLINE AND TABLINE ===
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

    " === FILE MANIPULATION ===
    " Buffer deletion made easy
    Plug 'rbgrouleff/bclose.vim'
    " Lf integration (lf.vim dependency: bclose)
    Plug 'thezeroalpha/vim-lf'
    " Rename
    Plug 'danro/rename.vim'
    " Session
    Plug 'tpope/vim-obsession'
    " Plug 'ptzz/lf.vim'
    " Plug 'haorenW1025/floatLf-nvim'
    " Plug 'voldikss/vim-floaterm'
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
    
    " === TEXT PROCESSING ===
    " Better Comments
    Plug 'tpope/vim-commentary'    
    " Repeat stuff
    Plug 'tpope/vim-repeat'
    " Text Navigation
    Plug 'unblevable/quick-scope'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Surround
    " Plug 'tpope/vim-surround'
    " FZF
    " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    " Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
    " Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release/rpc' }
    " Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }
    " Plug 'junegunn/fzf.vim'
    " Find and Replace
    " Plug 'ChristianChiarulli/far.vim'
    " Plug 'brooth/far.vim'
    " Plug 'jremmen/vim-ripgrep'
    " Diff
    " Plug 'jmcantrell/vim-diffchanges'

    " === WEB ===
    " Closetags
    Plug 'alvan/vim-closetag'
    " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'
    " Live server
    Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

    " === INTELLISENSE ===
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!', 'WhichKeyVisual', 'WhichKeyVisual!'] }   
    " Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    " Plug 'neovim/nvim-lspconfig'
    " Plug 'nvim-lua/completion-nvim'
    " Plug 'nvim-lua/diagnostic-nvim'

    " === COLOR SCHEME ===
    Plug 'gruvbox-community/gruvbox'
    " Plug 'chriskempson/base16-vim'
    " Plug 'morhetz/gruvbox' 
    " Plug 'lifepillar/vim-gruvbox8'
    " Plug 'npxbr/gruvbox.nvim'
    " Plug 'tjdevries/colorbuddy.vim'
    " Plug 'tjdevries/gruvbuddy.nvim'
    " Plug 'christianchiarulli/nvcode-color-schemes.vim'

    " === EXTERNAL APPLICATIONS ===
    " Tmux & Vim movements
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'troydm/zoomwintab.vim'
    " Terminal
    " Plug 'kassio/neoterm' " Currently disable it for the matter of speed 
    " Plug 'voldikss/vim-floaterm'

    " === OTHERS ===
    " Auto set indent settings
    " Plug 'tpope/vim-sleuth'
    " Colorizer
    " Plug 'norcalli/nvim-colorizer.lua'
    " Debugging
    " Plug 'puremourning/vimspector'

call plug#end()
