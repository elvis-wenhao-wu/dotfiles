# LF 
# script for change directory 
LFCD="${HOME}/.config/lf/lfcd.sh"    #  pre-built binary, make sure to use absolute path
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi
bindkey -s '^n' 'lfcd\n'

# BAT
export BAT_PAGER="less -R"

# TMUX 
# color (gruvbox working fine after creating a new window)
export TERM=xterm-256color
# just refer to this post: # http://www.economyofeffort.com/2014/07/04/zsh/ 
[ -n "$TMUX" ] && export TERM=screen-256color 

# Curl
[[ -x "/opt/homebrew/opt/curl/bin/curl" ]] && alias curl=/opt/homebrew/opt/curl/bin/curl

