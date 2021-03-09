{
  homedir_pyenv="$HOME/.pyenv"
  homedir_python="/Users/athebo/Library/Python/3.8/bin"

  if [[ -f $homedir_pyenv ]] && [[ -d "${homedir_pyenv}/bin" ]]; then
    export PYENV_ROOT=$HOMEDIR_PYENV
    pathmunge "$HOME/.pyenv/bin"
    eval "$($HOME/.pyenv/bin/pyenv init -)"

  elif command -v pyenv 1>&- 2>&-; then
    eval "$(pyenv init -)"

  elif [[ -d $homedir_python ]]; then
    pathmunge "$homedir_python"
  fi
}
