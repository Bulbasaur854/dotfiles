# Source omarchy defaults if available
if [ -f ~/.local/share/omarchy/default/bash/rc ]; then
  source ~/.local/share/omarchy/default/bash/rc
fi

# My Aliases
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
alias ffn='fzf -m --preview="bat --color=always {}" --bind "enter:become(nvim {+})"'
alias lg='lazygit'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
