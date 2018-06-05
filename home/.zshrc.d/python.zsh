export PYENV_ROOT="$HOME/.pyenv"
if [ -d "$HOME/.pyenv/bin" ]; then
  pathmunge "$HOME/.pyenv/bin" 
  eval "$($HOME/.pyenv/bin/pyenv init -)"
elif which pyenv 1>&- 2>&-; then
  eval "$(pyenv init -)"
fi
