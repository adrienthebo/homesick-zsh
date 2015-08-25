export MARKPATH=$HOME/.config/marks
function jump {
    cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
}
function mark {
    echo "Adding mark ${1} with path $(pwd)"
    mkdir -p $MARKPATH; ln -s $(pwd) $MARKPATH/$1
}
function unmark {
    echo "Removing mark ${1}"
    rm -if $MARKPATH/$1
}
function marks {
    ls -l $MARKPATH | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}

function _marks {
  reply=($(ls $MARKPATH))
}
compctl -K _marks jump
compctl -K _marks unmark
