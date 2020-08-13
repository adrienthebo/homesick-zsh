if [[ -f $HOME/.cargo/env ]]; then
  source $HOME/.cargo/env
fi

if command -v sccache 2>&- 1>&-; then
  export RUSTC_WRAPPER="sccache"
fi

if command -v rustup 2>&- 1>&-; then
  eval $(rustup completions zsh)
fi
