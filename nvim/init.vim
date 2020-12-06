" BASICS
" let g:syntax_cmd="skip"
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/vim-which-key.vim

" COC
source $HOME/.config/nvim/plug-config/coc.vim

" FILE EXPLORE 
source $HOME/.config/nvim/plug-config/lf.vim
" source $HOME/.config/nvim/plug-config/netrw.vim
" source $HOME/.config/nvim/plug-config/nerdtree.vim
" source $HOME/.config/nvim/plug-config/cocexplorer.vim
" source $HOME/.config/nvim/plug-config/fixcursorhold.vim
" source $HOME/.config/nvim/plug-config/netrw_disable.vim
" source $HOME/.config/nvim/plug-config/undotree.vim
" source $HOME/.config/nvim/plug-config/fern.vim
" source $HOME/.config/nvim/plug-config/netrw.vim
" source $HOME/.config/nvim/plug-config/nvim-tree.vim

" FIND & SEARCH
" Better find and replace
source $HOME/.config/nvim/plug-config/ripgrep.vim
source $HOME/.config/nvim/plug-config/far.vim
" DiffChanges
" source $HOME/.config/nvim/plug-config/vim-diffchanges.vim

" TEXT PROCESSING
" vim-commentary
source $HOME/.config/nvim/plug-config/commentary.vim
" vim-surround
source $HOME/.config/nvim/plug-config/surround.vim
" quick-scope 
source $HOME/.config/nvim/plug-config/quick-scope.vim

" WEB
" auto-pairs
source $HOME/.config/nvim/plug-config/auto-pairs.vim
" close tags
source $HOME/.config/nvim/plug-config/closetag.vim
" Autocomplete html tags
source $HOME/.config/nvim/plug-config/tagalong.vim
" Bracey
" source $HOME/.config/nvim/plug-config/bracey.vim

" FZF
source $HOME/.config/nvim/plug-config/fzf.vim

" EXTERNALS
" vim & tmux movements
source $HOME/.config/nvim/plug-config/vim-tmux-navigator.vim
source $HOME/.config/nvim/plug-config/zoomwintab.vim
" Terminal
source $HOME/.config/nvim/plug-config/neoterm.vim

" STATUSLINE & TABLINE
" Buftabline
source $HOME/.config/nvim/plug-config/buftabline.vim
" Statusline
source $HOME/.config/nvim/plug-config/statusline.vim
" source $HOME/.config/nvim/themes/lightline.vim
" source $HOME/.config/nvim/themes/airline.vim
" source $HOME/.config/nvim/themes/statusline.vim
" source $HOME/.config/nvim/themes/crystalline.vim
" If use crystalline, remember to modify the following codes 
" (above -> modified, below -> original)
" let l:name =  fnamemodify(bufname(a:buf), ':p:t') 
" let l:name = pathshorten(bufname(a:buf))
" (delete the contents within quotes)
" let l:tabline = '%#CrystallineTabType# BUFFERS '

" THEMES (DONT FUCKING SOURCE A COLORSCHEME)
" SEE THIS: https://github.com/neovim/neovim/issues/8279
colorscheme gruvbox
" colorscheme base16-default-dark
" source $HOME/.config/nvim/themes/nord.vim
" lua require('colorbuddy').colorscheme('gruvbuddy')
