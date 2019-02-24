# .zshrc

# Drag in shell agnostic settings.
[ -f ~/.profile ] && source ~/.profile

################################################################################
# Source all zsh fragments
################################################################################
#
sourcedir "${HOME}/.zshrc.d/before"
sourcedir "${HOME}/.zshrc.local.d/before"

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

echo "Peace comes from within."
