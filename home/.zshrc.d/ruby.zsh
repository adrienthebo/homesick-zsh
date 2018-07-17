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

for bindir in $HOME/.gem/ruby/*/bin ; do
  pathmunge "$bindir" after
done
