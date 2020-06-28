#!/bin/sh

set -e

git clone https://github.com/riywo/anyenv ~/.anyenv
cat <<-EOF >> ~/.bashrc
if [ -d ~/.anyenv ]; then
    export PATH="~/.anyenv/bin:$PATH"
    eval "\$(anyenv init -)"
fi
EOF
yes | ~/.anyenv/bin/anyenv install --init
~/.anyenv/bin/anyenv install pyenv
~/.anyenv/bin/anyenv install rbenv
~/.anyenv/bin/anyenv install nodenv

