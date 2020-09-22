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
wordmove_install="$(gem list wordmove -i)"
if [ "$wordmove_install" = true ]; then
  echo "wordmove installed"
else
    echo "wordmove not installed"
    gem install wordmove

    wordmove_path="$(gem which wordmove | sed -s 's/.rb/\/deployer\/base.rb/')"
    if [  "$(grep yaml $wordmove_path)" ]; then
        echo "can require yaml"
    else
        echo "can't require yaml"
        echo "set require yaml"

        sed -i "7i require\ \'yaml\'" $wordmove_path

        echo "can require yaml"
    fi
fi
