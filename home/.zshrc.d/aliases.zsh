################################################################################
# Aliases and functions
################################################################################

alias qotd="nc alpha.mike-r.com 17"
alias starwars="nc towel.blinkenlights.nl 23"

# platform specific stuff. Only linux has nice ls.
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
