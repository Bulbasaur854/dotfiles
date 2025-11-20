# My Aliases
alias n="nvim"
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
alias ffn='fzf -m --preview="bat --color=always {}" --bind "enter:become(nvim {+})"'
alias gg="lazygit"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Setup starhip
eval "$(starship init bash)"

# Setup zoxide
eval "$(zoxide init --cmd cd bash)"

# Apply theme to new terminals
(cat ~/.cache/wal/sequences &)
