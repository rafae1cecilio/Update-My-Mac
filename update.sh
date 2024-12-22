#!/bin/bash
sudo -S purge &&
sudo -u $USER brew update &&
sudo -u $USER brew upgrade &&
sudo -u $USER brew update &&
sudo -u $USER brew list | xargs brew install &&
sudo -u $USER brew cleanup --prune=all &&
sudo -u $USER brew tap --repair &&
sudo -u $USER brew autoremove &&
sudo -S dscacheutil -flushcache &&
sudo -S killall -HUP mDNSResponder &&
sudo -S purge && 
sudo -S softwareupdate -i -a -R --agree-to-license --verbose &&
sudo -S rm /Users/$USER/.ssh/known_hosts &&

