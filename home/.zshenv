# .zshenv

typeset -U path
################################################################################
# Functions we want everywhere.
################################################################################

function pathmunge () {

    # Ensure path actually exists
    if ! [[ -d $1 ]]; then
        return
    fi
    if [[ -z $PATH ]]; then
        PATH=$1
    elif ! echo $PATH | /bin/egrep "(^|:)$1($|:)" 2>&- 1>&-; then
        if [[ "$2" = "after" ]]; then
            PATH=$PATH:$1
        else
            PATH=$1:$PATH
        fi
    fi
    export PATH
    rehash
}

function manpathmunge () {
    if [[ -z "$MANPATH" ]]; then
        MANPATH=$1
    elif ! echo $MANPATH | /bin/egrep "(^|:)$1($|:)" 2>&- 1>&-; then
       if [[ "$2" = "after" ]] ; then
          MANPATH=$MANPATH:$1
       else
          MANPATH=$1:$MANPATH
       fi
    fi
    export MANPATH
}

function sourcedir() {
  local sourcepath=$1
    if [[ -d $sourcepath || -l $sourcepath ]]; then
        find -L $sourcepath -type f -name "*.zsh" | while read subconf; do
            source $subconf
        done
    fi
}

################################################################################
# Path munging
#
# Path munging needs to occur here in case we do things in a non-interactive
# shell, EG ssh foo@bar "frobnicate yerface", where frobnicate is in
# $HOME/local/bin
################################################################################

case `uname` in
    Linux)
        pathmunge /sbin after
        pathmunge /usr/sbin after
        pathmunge /usr/local/bin after
        pathmunge /usr/local/sbin after
    ;;
    SunOS)
        pathmunge /sbin after
        pathmunge /usr/sbin after
        pathmunge /usr/local/bin after
        pathmunge /usr/sfw/bin after
        pathmunge /opt/csw/bin after
        pathmunge /usr/openwin/bin after
        pathmunge /usr/X11/bin after
    ;;
    *)
    ;;
esac

pathmunge $HOME/local/bin
