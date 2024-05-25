#!/bin/bash
sudo -S purge &&
sudo -S softwareupdate -i -a -R --agree-to-license --verbose &&
sudo -u $USER brew upgrade &&
sudo -u $USER brew update &&
sudo -u $USER brew list | xargs brew install &&
sudo -u $USER brew cleanup --prune=all &&
sudo -u $USER brew autoremove &&
sudo /usr/sbin/periodic daily weekly monthly &&
sudo -S purge