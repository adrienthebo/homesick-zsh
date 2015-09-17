# .zshenv

typeset -U path

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

# We can't consistently set paths here; in certain scenarios (like running zsh inside of tmux)
# /etc/profile is sources after this file and may wipe out $PATH. For top level shells and
# non-interactive shells we need to source paths; for interactive shells that are nested we
# rely on .zprofile to pull in path information.
if [[ $SHLVL == 1 && ! -o LOGIN ]]; then
    source ~/.zpath
fi
