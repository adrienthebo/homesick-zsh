if command -v nvim 2>/dev/null 1>/dev/null; then
    export EDITOR=nvim
else
    export EDITOR=vim
fi
export VISUAL="$EDITOR"

if [ -d "$HOME/.cargo/bin" ]; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi
