#!/bin/bash

set -x
set -e

# update packages
sudo apt-get -qq update

# essential
sudo apt-get -y install xvfb unzip wget

# install browsers
./firefox.sh
./chrome.sh
./phantomjs.sh

exit 0
