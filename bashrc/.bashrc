# My Aliases
if command -v eza &> /dev/null; then
  alias ls='eza -lh --group-directories-first --icons=auto'
  alias lsa='ls -a'
  alias lt='eza --tree --level=2 --long --icons --git'
  alias lta='lt -a'
fi

if command -v zoxide &> /dev/null; then
  alias cd="zd"
  zd() {
    if [ $# -eq 0 ]; then
      builtin cd ~ && return
    elif [ -d "$1" ]; then
      builtin cd "$1"
    else
      z "$@" && printf "\U000F17A9 " && pwd || echo "Error: Directory not found"
    fi
  }
fi

alias n="nvim"
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
alias ffn='fzf -m --preview="bat --color=always {}" --bind "enter:become(nvim {+})"'
alias gg="lazygit"
alias yz="yazi"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
