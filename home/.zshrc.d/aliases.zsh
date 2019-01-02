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
else
  case `uname` in
    Linux)
      alias ls="ls -F --color=auto"
      alias l="ls -F --color=auto"
      ;;
    *)
      alias ls="ls -F"
      alias l="ls -F"
      ;;
  esac
fi
