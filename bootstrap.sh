#!/bin/bash

cd
mkdir -p git
cd git
git clone https://github.com/Vampouille/dot-files.git
cd dot-files
git submodule update --init --recursive --force
./install.sh
