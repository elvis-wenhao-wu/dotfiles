# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# zle_highlight=('paste:none')

# Which plugins would you like to load?
plugins=(
  zsh-autosuggestions
)

# THEME
ZSH_THEME="gruvbox"
SOLARIZED_THEME='dark'

# Initialisation
export ZSH="${HOME}/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# export
# export TF_FORCE_GPU_ALLOW_GROWTH=true

# Default user
DEFAULT_USER=$(whoami)
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='/usr/local/bin/nvim'
else
    export EDITOR='/usr/local/bin/nvim'
fi

# Prompt set up with spacing between prompts
precmd() {
    precmd() {
        echo
    }
}
