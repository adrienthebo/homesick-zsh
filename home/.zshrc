# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# .zshrc

# Drag in shell agnostic settings.
[ -f ~/.profile ] && source ~/.profile

################################################################################
# Zplugin initialization
################################################################################

# Zplugin installation:
# `sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"`

if [[ -f "$HOME/.zinit/bin/zinit.zsh" ]]; then
  source "$HOME/.zinit/bin/zinit.zsh"
  autoload -Uz _zinit
  (( ${+_comps} )) && _comps[zinit]=_zinit

  zinit ice atclone'./install --xdg --no-update-rc --completion --key-bindings' atpull'%atclone'; zinit load junegunn/fzf

  # REVIEW: randomly added plugin, figure out what it does
  zinit light zsh-users/zsh-autosuggestions
  # REVIEW: randomly added plugin, figure out what it does
  zinit light zdharma/fast-syntax-highlighting

  # Plugin history-search-multi-word loaded with tracking.
  # REVIEW: randomly added plugin, figure out what it does
  zinit load zdharma/history-search-multi-word
else
  echo "zinit not available, cannot load zsh plugins."
fi

#export FZF_BASE="$HOME/.zinit/plugins/junegunn---fzf-bin"
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

# added by travis gem
[ -f /home/adrien/.travis/travis.sh ] && source /home/adrien/.travis/travis.sh
### End of Zinit's installer chunk

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[[ -d ~/.asdf ]] && source ~/.asdf/asdf.sh
