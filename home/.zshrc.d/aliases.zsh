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

function ag() {
    discipline "rg" 2 $@
}

function vim() {
    if command -v nvim 2>&- 1>&-; then
        discipline "nvim" 1 $@
    else
        command vim $@
    fi
}

function discipline() {
    local REPLACE DURATION
    REPLACE=$1
    shift
    DURATION=$1
    shift
    ARGS=$@

    echo "$fg_bold[red]Use ${REPLACE}.$fg[none]"
    sleep $DURATION
    command $REPLACE $@
    echo "$fg_bold[red]No, really, use ${REPLACE}.$fg[none]"
    sleep $DURATION
}
