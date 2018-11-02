################################################################################
# zsh history options
################################################################################

HIST_STAMPS="yyyy-mm-dd"

# Configure history
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_all_dups
# Ignore commands with a leading space
setopt hist_ignore_space
# New history lines are added to the $HISTFILE incrementally
# (as soon as they are entered)
setopt incappendhistory

