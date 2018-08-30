plugins=(docker cargo rust httpie terraform)

# {{{ Required variables for oh-my-zsh
ZSH=~/.oh-my-zsh
ZSH_THEME=fox
# }}}

if [[ -f ~/.oh-my-zsh/oh-my-zsh.sh ]]; then
  source ~/.oh-my-zsh/oh-my-zsh.sh
fi

setopt HIST_IGNORE_ALL_DUPS

# These need to be set after oh-my-zsh is loaded to override them
unsetopt histverify
unsetopt correct_all
