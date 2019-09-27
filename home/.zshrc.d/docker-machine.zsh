
if command -v docker-machine 2>&- 1>&-; then
  autoload -Uz add-zsh-hook

  preexec_dockermachine() {
    if [[ $3 =~ "docker" ]] && [[ -z "$DOCKER_HOST" ]]; then
      echo "-- preexec: configuring docker, this may take a few seconds..."
      eval "$(docker-machine env default)"
    fi
  }

  add-zsh-hook preexec preexec_dockermachine
fi
