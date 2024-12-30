#!/bin/bash

# Install Ruby via rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if ! command -v rbenv &> /dev/null; then
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv
  git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
  ~/.rbenv/bin/rbenv init
  ~/.rbenv/bin/rbenv install 3.1.2 # Replace with the required Ruby version
  ~/.rbenv/bin/rbenv global 3.1.2
fi

# Install Bundler and Jekyll
gem install bundler
gem install jekyll