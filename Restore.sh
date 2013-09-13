#!/bin/bash
# Restore.sh

#call to secondary script
echo "initiating restore process"
read -p "WARNING: This restore needs you to have your files at ~/Dropbox/Dotfiles. Please make shure that Dropbox is installed and all files synced. This restore also assumes that you have sublime text 2 installed. Are you sure you want to proceed? (y/n) " -n 1
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo 'Starting OSX configuration'
  sh osx.sh
  echo "Starting brew configuration"
  sh brew.sh
  #echo "sync sublime prefs"
  sh setup-sync-sublime-over-dropbox.sh
fi


echo "Congratulations, all done! Please restart Terminal. Enjoy."