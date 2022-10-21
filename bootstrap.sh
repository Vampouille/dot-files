#!/bin/bash

cd
mkdir -p git/github.com/vampouille
cd git/github.com/vampouille
git clone https://github.com/Vampouille/dot-files.git
cd dot-files
git submodule update --init --recursive --force
./install.sh
