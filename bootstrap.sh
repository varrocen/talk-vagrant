#!/usr/bin/env bash

# Install Apache and Git
apt-get update
apt-get install -y apache2 git ruby-full
if ! [ -L /var/www/html ]; then
  rm -rf /var/www/html
  ln -fs /vagrant /var/www/html
fi

# Install bundler
gem install concurrent-ruby bundler

# Install the gems into the project
cd /vagrant
bundle config --local github.https true
bundle --path=.bundle/gems --binstubs=.bundle/.bin
if ! [ -d reveal.js ]; then
  git clone -b 3.6.0 --depth 1 https://github.com/hakimel/reveal.js.git
fi

# Build Vagrant talk
bundle exec asciidoctor-revealjs vagrant.adoc

exit 0
