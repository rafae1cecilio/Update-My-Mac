#!/bin/bash
sudo -S purge &&
sudo -S softwareupdate -i -a -R --agree-to-license --verbose &&
sudo -u rafael brew upgrade &&
sudo -u rafael brew update &&
sudo -u rafael brew list | xargs brew install &&
sudo -u rafael brew cleanup --prune=all &&
sudo -u rafael brew autoremove &&
sudo /usr/sbin/periodic daily weekly monthly &&
sudo -S purge