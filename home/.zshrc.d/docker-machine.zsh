if [[ $(uname) = 'Darwin' ]]; then
  function docker() {
    command docker info 2>&- 1>&-
    if [[ $? -eq 1 ]]; then
      echo "-- Loading docker configuration - this may take a few seconds..."
      eval $(docker-machine env default)
    fi
    command docker $@
  }
fi
