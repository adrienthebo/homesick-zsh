# .zshrc

# Drag in shell agnostic settings.
[ -f ~/.profile ] && source ~/.profile

################################################################################
# Source all zsh fragments
################################################################################

sourcedir "${HOME}/.zshrc.d"
sourcedir "${HOME}/.zshrc.local.d"

sourcedir "${HOME}/.zshrc.d/after"
sourcedir "${HOME}/.zshrc.local.d/after"

################################################################################
# zsh general options
################################################################################

# Permits functions to be run inside the prompt
setopt PROMPT_SUBST
# THE SYSTEM BEEP IS THE WORST THING EVER
setopt NO_BEEP
# If given a directory, cd into it
setopt AUTO_CD

setopt NO_CDABLE_VARS

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
