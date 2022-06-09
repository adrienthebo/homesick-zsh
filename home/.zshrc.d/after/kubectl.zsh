# For some reason kubectl completions aren't loading as expected.

if command -v kubectl 2>&- 1>&-; then
  source <(kubectl completion zsh)
fi
