# .zshrc

# Drag in shell agnostic settings.
[ -f ~/.profile ] && source ~/.profile

################################################################################
# Source all zsh fragments
################################################################################

sourcedir "${HOME}/.zshrc.d"
sourcedir "${HOME}/.zshrc.local.d"

################################################################################
# zsh general options
################################################################################

# Permits functions to be run inside the prompt
setopt PROMPT_SUBST
# THE SYSTEM BEEP IS THE WORST THING EVER
setopt NO_BEEP
# If given a directory, cd into it
setopt AUTO_CD

# Update title
chpwd() {
  [[ -t 1 ]] || return
  case $TERM in
    (sun-cmd)
      print -Pn "\e]l%~\e\\"
      ;;
    (*xterm*|rxvt|(dt|k|E)term)
      print -Pn "\e]2;%~\a"
      ;;
# This updates the wrong field in tmux
#    screen)
#      print -Pn "\033k%~\033\\"
#      ;;
  esac
}

################################################################################
# zsh history options
################################################################################

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

################################################################################
# crazy zle options
################################################################################

# Use vi keybindings, but leave in some normal readline magic.
bindkey -v
bindkey -v '^k' kill-whole-line
bindkey -v '^r' history-incremental-search-backward

# Now this is just straight up black magic
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

autoload -Uz compinit && compinit
autoload -U zed
