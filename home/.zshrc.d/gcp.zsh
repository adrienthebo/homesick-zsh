if [[ -f /opt/google-cloud-sdk/completion.zsh.inc ]]; then
  source /opt/google-cloud-sdk/completion.zsh.inc
fi

if [[ -f /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc ]]; then
  source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
fi

function gorg() {
  gcloud organizations list --format='value(name)'
}
