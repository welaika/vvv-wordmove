#!/bin/bash
# VVV Install script

# Install ruby 2.7
if [ $(command -v gem) ]; then
    echo "gem installed"
else
    echo "ruby-dev & gem package installing..."
    apt remove ruby* -y
    snap install ruby --classic
    gem install rubygems-update
fi

# wordmove install
if ! gem spec wordmove > /dev/null 2>&1; then
    noroot gem install wordmove
else
    noroot gem update wordmove
fi

wordmove_path="$(gem which wordmove | sed -s 's/.rb/\/deployer\/base.rb/')"
if [  "$(grep yaml $wordmove_path)" ]; then
    echo "can require yaml"
else
    echo "set require yaml"
    sed -i "7i require\ \'yaml\'" $wordmove_path
    echo "can require yaml"
fi
