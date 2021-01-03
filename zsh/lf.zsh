# LF 
# script for change directory 
LFCD="${HOME}/.config/lf/lfcd.sh"                                #  pre-built binary, make sure to use absolute path
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi
bindkey -s '^n' 'lfcd\n'

