# LF 
# script for change directory 
LFCD="${HOME}/.config/lf/lfcd.sh"    #  pre-built binary, make sure to use absolute path
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi
bindkey -s '^n' 'lfcd\n'

# FZF
# shortcuts
source /usr/local/opt/fzf/shell/key-bindings.zsh
source /usr/local/opt/fzf/shell/completion.zsh
export FZF_DEFAULT_OPTS="
--no-mouse --height 50% -1 --reverse --multi --inline-info 
--preview='[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file \
|| (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' 
--preview-window='right:hidden:wrap'
--bind='f3:execute(bat --style=numbers {} || less -f {}),f2:toggle-preview,ctrl-y:execute-silent(echo {+} | pbcopy)'"
export FZF_DEFAULT_COMMAND="fd --type f --type l --follow --exclude .git --exclude node_modules"
export FZF_CTRL_T_COMMAND='git ls-files "$(git rev-parse --show-toplevel)"'
export BAT_PAGER="less -R"

# TMUX 
# color (gruvbox working fine after creating a new window)
export TERM=xterm-256color
# just refer to this post: # http://www.economyofeffort.com/2014/07/04/zsh/ 
[ -n "$TMUX" ] && export TERM=screen-256color 

# BYOBU 
# export BYOBU_PREFIX=/usr/local
