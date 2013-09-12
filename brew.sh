#!/bin/bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install wget with IRI support
brew install wget --enable-iri

#git
brew install git
brew install git-flow


#imagemagic
brew install jpeg
brew install imagemagick


#web development stack
brew tap josegonzalez/php
brew tap homebrew/dupes

#php
brew install php54 --with-fpm  --with-imap  --without-apache --with-debug
brew install php54-xdebug
brew install php54-yaml
brew install php54-intl

#nginx
brew install nginx

#mysql
brew install mysql --enable-debug

# Remove outdated versions from the cellar
brew cleanup