alias binstall="bundle install --path .bundle --jobs=4"
alias bexec="bundle exec"
alias brake="bundle exec rake"
alias bspec="bundle exec rspec"
alias bpry="bundle exec pry"

alias b="bundle"
alias bi="bundle install --path .bundle --jobs=4"
alias bu="bundle update"
alias be="bundle exec"
alias br="bundle exec rspec"
alias bs="bundle exec rspec"


if [ -d "$HOME/.rbenv/bin" ]; then
  eval "$($HOME/.rbenv/bin/rbenv init -)"
elif which rbenv 1>&- 2>&-; then
  eval "$(rbenv init -)"
fi

{
  if which ruby 2>&- 1>&-; then
    local ruby_version bindir
    ruby_version="$(ruby -rrbconfig -e 'puts RbConfig::CONFIG["ruby_version"]')"
    bindir="$HOME/.gem/ruby/${ruby_version}/bin"
    pathmunge "$bindir" after
  fi
}
