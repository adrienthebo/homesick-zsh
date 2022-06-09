plugins=(
  asdf
  cargo
  docker
  helm
  history
  httpie
  kitchen
  kubectl
  pip
  rsync
  rust
  rustup
  terraform
  tmux
  zsh-syntax-highlighting
)

autoload -U compinit && compinit

ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$HOME/.oh-my-zsh.custom"
ZSH_THEME="powerlevel10k/powerlevel10k"
#zsh_theme="fox"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vi_mode dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs time)

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"

POWERLEVEL9K_VCS_GIT_HOOKS=()
POWERLEVEL9K_VCS_SHOW_SUBMODULE_DIRTY=false
POWERLEVEL9K_VCS_SHORTEN_LENGTH=24
POWERLEVEL9K_VCS_SHORTEN_LENGTH=12
POWERLEVEL9K_VCS_SHORTEN_STRATEGY="truncate_middle"

if [[ -f ~/.oh-my-zsh/oh-my-zsh.sh ]]; then
  source ~/.oh-my-zsh/oh-my-zsh.sh
fi

setopt HIST_IGNORE_ALL_DUPS

# These need to be set after oh-my-zsh is loaded to override them
unsetopt histverify
unsetopt correct_all
