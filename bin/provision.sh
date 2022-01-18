#!/bin/bash
# VVV Install script

# Install ruby 3.0
if [ $(command -v gem) ]; then
    echo "gem installed"
else
    echo "ruby-dev & gem package installing..."
    apt remove ruby* -y
    snap install ruby --classic --channel=3.0/stable
    gem install rubygems-update
fi

# wordmove install/update
if $(gem list wordmove -i); then
    echo "updating wordmove"
    noroot gem update wordmove
else
    echo "installing wordmove"
    noroot gem install wordmove
fi
