pathmunge "${HOME}/.cargo/bin" after

if which sccache 2>/dev/null 1>/dev/null; then
  export RUSTC_WRAPPER="sccache"
fi
