if command -v nvim 2>/dev/null 1>/dev/null; then
    export EDITOR=nvim
else
    export EDITOR=vim
fi
export VISUAL="$EDITOR"

if [ -d "$HOME/.cargo/bin" ]; then
  source "$HOME/.cargo/env"
fi
