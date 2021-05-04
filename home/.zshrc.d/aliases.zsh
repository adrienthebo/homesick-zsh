alias qotd="nc alpha.mike-r.com 17"
alias starwars="nc towel.blinkenlights.nl 23"
alias tree="tree -C"

alias terrorfarm="terraform"
alias tf="terraform"

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
  alias less=bat
fi

if command -v ytop 2>&- 1>&-; then
  alias htop=ytop
fi

if command -v gsed 2>&- 1>&-; then
  alias sed=gsed
fi

function cht() {
  curl https://cht.sh/$1 | $PAGER
}

# Laugh more, nitpick less. Y'all need to have more fun.
alias ":q"="echo \"Hey kid, I'm a computer! Stop all the downloadin'!\""
alias ":e"=":q"
alias "ty"="yw!"
alias "y"="echo n"

if command -v gsed 2>&- 1>&-; then
  git() {
    if [[ $(($RANDOM % 64)) -eq 0 ]]; then
      gti "$@"
    else
      command git "$@"
    fi
  }
fi

if command -v task 2>&- 1>&-; then
  task() {
    if [[ $(($RANDOM % 64)) -eq 0 ]]; then
      echo "Go for a walk you banana shaped fuck."
      sleep 60
    fi
    command task "$@"
  }
fi
alias t="task"
