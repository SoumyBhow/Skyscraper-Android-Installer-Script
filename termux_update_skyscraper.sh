#!/bin/bash
termux-setup-storage
pkg upgrade -y
pkg install x11-repo -y
pkg install git wget ffmpeg build-essential binutils qt5-qtbase whiptail ninja liblz4 libuv -y
mkdir -p ~/SkyscraperAndroid && cd ~/SkyscraperAndroid || exit
curl -O https://raw.githubusercontent.com/SoumyBhow/skyscraper/scripted/update_skyscraper.sh
curl -O https://raw.githubusercontent.com/SoumyBhow/CHDMAN-and-Maxcso-Android-Installer/scripted/Compressor.sh
curl -O https://raw.githubusercontent.com/SoumyBhow/Skyscraper-Lazy-Script/master/SkyscraperLazy.sh
bash ~/SkyscraperAndroid/update_skyscraper.sh
bash ~/SkyscraperAndroid/Compressor.sh
cp SkyscraperLazy.sh $PATH/Lazy && chmod +x $PATH/Lazy
exit
