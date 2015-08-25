if which keychain 2>/dev/null 1>/dev/null; then
  eval "$(keychain --eval --agents 'ssh,gpg')"
fi
