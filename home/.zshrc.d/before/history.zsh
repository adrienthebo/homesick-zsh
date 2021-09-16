# Most of the history configuration is offloaded to oh-my-zh
#
# See also: https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/history.zsh

HISTFILE=~/.histfile
HIST_STAMPS="yyyy-mm-dd"
#HISTSIZE=10000000
#SAVEHIST=1000000

setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
