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

# Random stupid aliases that I find amusing

alias y="echo n"

alias qotd="nc alpha.mike-r.com 17"
alias starwars="nc towel.blinkenlights.nl 23"
