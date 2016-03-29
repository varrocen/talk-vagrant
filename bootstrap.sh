#!/usr/bin/env bash

# Install Apache and Git
apt-get update
apt-get install -y apache2 git
if ! [ -L /var/www/html ]; then
  rm -rf /var/www/html
  ln -fs /vagrant /var/www/html
fi

# Install Asciidoctor
gem install asciidoctor slim thread_safe tilt

# Install Asciidoctor backend and reveal.js
cd /vagrant
git clone https://github.com/asciidoctor/asciidoctor-reveal.js.git
git clone https://github.com/hakimel/reveal.js.git

# Build Vagrant talk
asciidoctor -T asciidoctor-reveal.js/templates/slim vagrant.adoc

exit 0
