if command -v lsd 2>&- 1>&-; then
  alias l="lsd"
  alias ls="lsd -l"
  # oh-my-zsh has an `alias la="ls -lAh" which doesn't work with lsd.
  alias la="lsd -la"

  # Seriously folks, you really don't need to make aliaes for every single command invocation.
  unalias lsa
fi
