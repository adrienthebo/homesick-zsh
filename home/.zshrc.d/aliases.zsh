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

alias y="echo n"

alias qotd="nc alpha.mike-r.com 17"
alias starwars="nc towel.blinkenlights.nl 23"

alias terrorfarm="terraform"
alias tf="terraform"

if command -v rg 1>&-; then
  alias ag="rg"
fi
