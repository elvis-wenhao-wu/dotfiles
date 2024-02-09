" === BASICS ===
" let g:syntax_cmd="skip"
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/vim-which-key.vim

" === NEOVIM STATUSLINE OR TABLINE ===
source $HOME/.config/nvim/plug-config/buftabline.vim
source $HOME/.config/nvim/plug-config/statusline.vim
" source $HOME/.config/nvim/themes/lightline.vim
" source $HOME/.config/nvim/themes/airline.vim
" source $HOME/.config/nvim/themes/statusline.vim
" source $HOME/.config/nvim/themes/crystalline.vim

" === FILE MANIPULATION ===
source $HOME/.config/nvim/plug-config/lf.vim
" source $HOME/.config/nvim/plug-config/obsession.vim
" source $HOME/.config/nvim/plug-config/netrw.vim
" source $HOME/.config/nvim/plug-config/nerdtree.vim
" source $HOME/.config/nvim/plug-config/cocexplorer.vim
" source $HOME/.config/nvim/plug-config/fixcursorhold.vim
" source $HOME/.config/nvim/plug-config/netrw_disable.vim
" source $HOME/.config/nvim/plug-config/undotree.vim
" source $HOME/.config/nvim/plug-config/fern.vim
" source $HOME/.config/nvim/plug-config/netrw.vim
" source $HOME/.config/nvim/plug-config/nvim-tree.vim

" === TEXT PROCESSING ===
source $HOME/.config/nvim/plug-config/commentary.vim
source $HOME/.config/nvim/plug-config/quick-scope.vim
" source $HOME/.config/nvim/plug-config/surround.vim
" source $HOME/.config/nvim/plug-config/ripgrep.vim
" source $HOME/.config/nvim/plug-config/far.vim
" source $HOME/.config/nvim/plug-config/vim-diffchanges.vim

" === WEB ===
source $HOME/.config/nvim/plug-config/auto-pairs.vim
source $HOME/.config/nvim/plug-config/closetag.vim
source $HOME/.config/nvim/plug-config/tagalong.vim
source $HOME/.config/nvim/plug-config/bracey.vim

" === COLOR SCHEME (DONT FUCKING SOURCE A COLORSCHEME) ===
" https://github.com/neovim/neovim/issues/8279
colorscheme gruvbox
" colorscheme base16-default-dark
" source $HOME/.config/nvim/themes/nord.vim
" lua require('colorbuddy').colorscheme('gruvbuddy')

" === EXTERNAL APPLICATIONS ===
" Tmux & Vim movements
source $HOME/.config/nvim/plug-config/vim-tmux-navigator.vim
source $HOME/.config/nvim/plug-config/zoomwintab.vim
" Terminal
" source $HOME/.config/nvim/plug-config/neoterm.vim
" source $HOME/.config/nvim/plug-config/coc.vim
" source $HOME/.config/nvim/plug-config/fzf.vim
