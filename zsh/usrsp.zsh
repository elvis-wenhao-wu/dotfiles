# Default user
DEFAULT_USER=$(whoami)

# Preferred editor for local and remote sessions
if [[ -n "$SSH_CONNECTION" ]]; then
    export EDITOR='/usr/local/bin/nvim'
else
    export EDITOR='/usr/local/bin/nvim'
fi

# Help directory for alias
HELPDIR=/usr/share/zsh/*/help/
# if [ -d /usr/share/zsh/*/help/ ]; then
#     HELPDIR=/usr/share/zsh/*/help/;
# else
#     HELPDIR=$(find /usr/share/zsh -type d -maxdepth 2 | grep 'help');
# fi

