alias y="echo n"

alias qotd="nc alpha.mike-r.com 17"
alias starwars="nc towel.blinkenlights.nl 23"
alias tree="tree -C"

alias terrorfarm="terraform"
alias tf="terraform"
alias t="task"

if command -v colordiff 2>&- 1>&-; then
  alias diff="colordiff"
fi

if command -v nvim 2>&- 1>&-; then
  alias vim=nvim
fi

if command -v lsd 2>&- 1>&-; then
  alias ls=lsd
fi

if command -v bat 2>&- 1>&-; then
  alias cat=bat
fi

function cht() {
  curl https://cht.sh/$1 | less -SR
}

alias ":q"="echo \"Hey kid, I'm a terminal! Stop all the vimming!\""
