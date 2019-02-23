if command -v lsd 2>&- 1>&-; then
  # oh-my-zsh has an `alias la="ls -lAh" which doesn't work with lsd.
  alias la="ls -la"
fi
