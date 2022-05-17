#!/bin/bash
if [[ ! -f "$PATH/Skyscraper" ]]; then
echo 'First time setup'
echo 'Please grant Termux storage permissions in the next screen...'
sleep 3
echo 'Requesting Storage Permissions...'
termux-setup-storage
echo 'Upgrading packages...'
pkg upgrade -y
echo 'Installing required packages...'
pkg install x11-repo -y
pkg install git wget ffmpeg build-essential qt5-qtbase -y

echo 'Creating and moving into source folder "skysource"...'
mkdir -p ~/skysource && cd ~/skysource || exit

echo 'Downloading source and compiling Skyscraper'
wget -q -O - https://raw.githubusercontent.com/muldjord/skyscraper/master/update_skyscraper.sh | bash
else
cd ~/skysource || exit
echo 'Skyscraper binary detected. Updating and compiling...'
./update_skyscraper.sh
fi

echo 'Manually copying the Skyscraper binary to /usr/bin...'


cp Skyscraper "$PATH"/Skyscraper
echo 'Making the Skyscraper binary executable...'


chmod +x "$PATH"/Skyscraper

echo 'Done! Please run the Skyscraper command to make sure it works'

read -n 1 -r -s -p $'Press any key to continue...\n'
