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
touch /Users/$USER/.ssh/known_hosts | echo "oi" >> /Users/$USER/.ssh/known_hosts | rm /Users/$USER/.ssh/known_hosts &&
sudo -S softwareupdate -i -a -R --agree-to-license --verbose 

