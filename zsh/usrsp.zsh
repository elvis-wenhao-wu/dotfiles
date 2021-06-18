# Default user
DEFAULT_USER=$(whoami)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='/usr/local/bin/nvim'
else
    export EDITOR='/usr/local/bin/nvim'
fi

