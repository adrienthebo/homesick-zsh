if [ -d "$HOME/.rbenv/bin" ]; then
  eval "$($HOME/.rbenv/bin/rbenv init -)"
elif which rbenv 1>&- 2>&-; then
  eval "$(rbenv init -)"
fi
