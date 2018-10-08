pathmunge "${HOME}/.cargo/bin" after

if command -v sccache 2>&- 1>&-; then
  export RUSTC_WRAPPER="sccache"
fi
