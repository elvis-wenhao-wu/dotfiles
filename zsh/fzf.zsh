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

