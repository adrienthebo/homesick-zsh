alias qotd="nc alpha.mike-r.com 17"
alias starwars="nc towel.blinkenlights.nl 23"
alias tree="tree -C"

alias terrorfarm="terraform"
alias tf="terraform"

maybe_alias() {
  local from_cmd to_cmd
  to_cmd="$1"
  from_cmd="$2"

  if command -v "$to_cmd" 2>&- 1>&-; then
    alias $from_cmd="$to_cmd"
  fi
}


maybe_alias colordiff diff
maybe_alias nvim vim
maybe_alias lsd ls
maybe_alias bat cat
maybe_alias btm htop
maybe_alias gsed sed

function cht() {
  curl https://cht.sh/$1 | $PAGER
}

# Laugh more, nitpick less. Y'all need to have more fun.
alias ":q"="echo \"Hey kid, I'm a computer! Stop all the downloadin'!\""
alias ":e"=":q"
alias "ty"="yw!"
alias "y"="echo n"

if command -v git 2>&- 1>&-; then
  git() {
    if [[ $(($RANDOM % 64)) -eq 0 ]]; then
      if ! command -v gti 2>&- 1>&-; then
        echo "Install gti you fun hating nerd"
      fi
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
