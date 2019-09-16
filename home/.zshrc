# .zshrc

# Drag in shell agnostic settings.
[ -f ~/.profile ] && source ~/.profile

################################################################################
# Zplugin initialization
################################################################################

# Zplugin installation:
# `sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"`

if [ -f "$HOME/.zplugin/bin/zplugin.zsh" ]; then
  source "$HOME/.zplugin/bin/zplugin.zsh"
  autoload -Uz _zplugin
  (( ${+_comps} )) && _comps[zplugin]=_zplugin

  zplugin ice atclone'./install --xdg --no-update-rc --completion --key-bindings' atpull'%atclone'; zplugin load junegunn/fzf

  # REVIEW: randomly added plugin, figure out what it does
  zplugin light zsh-users/zsh-autosuggestions
  # REVIEW: randomly added plugin, figure out what it does
  zplugin light zdharma/fast-syntax-highlighting

  # Plugin history-search-multi-word loaded with tracking.
  # REVIEW: randomly added plugin, figure out what it does
  zplugin load zdharma/history-search-multi-word

  # Relic build systems from a bygone era...
  # Disabled due to zplugin's sloppy PATH management.
  #zplugin ice as"program" atclone"./autogen.sh && ./configure" atpull="%atclone" make pick"NOPE"; zplugin load universal-ctags/ctags
else
  echo "zplugin not available, cannot load zsh plugins."
fi

#export FZF_BASE="$HOME/.zplugin/plugins/junegunn---fzf-bin"
################################################################################
# Source all zsh fragments
################################################################################

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

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh ] && source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh
