alias arch='${HOME}/QEMU/runArchLinuxHeadless.sh'
alias arc='${HOME}/QEMU/runArchLinux.sh'
alias draft="cd '/Users/wenhaowu/Library/Mobile Documents/com~apple~CloudDocs/Draft' && nvim draft"
alias hidden="cd '/Users/wenhaowu/Library/Mobile Documents/com~apple~CloudDocs/Draft' && nvim hidden"

# ref: https://postgresqlstan.github.io/cli/zsh-run-help/#:~:text=The%20run%2Dhelp%20function%20can,command%20(without%20pressing%20return).
unalias run-help 2>/dev/null
autoload run-help
alias help=run-help
[[ -x "/usr/local/opt/curl/bin/curl" ]] && alias curl=/usr/local/opt/curl/bin/curl
