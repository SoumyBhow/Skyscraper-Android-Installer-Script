#!/bin/bash
termux-setup-storage
pkg upgrade -y
pkg install x11-repo -y
pkg install git wget ffmpeg build-essential qt5-qtbase whiptail ninja liblz4 libuv -y

mkdir -p ~/SkyscraperAndroid && cd ~/SkyscraperAndroid || exit
wget -q -O - https://raw.githubusercontent.com/SoumyBhow/skyscraper/scripted/update_skyscraper.sh || bash
cd ~/SkyscraperAndroid || exit
wget -q -O - https://raw.githubusercontent.com/SoumyBhow/CHDMAN-and-Maxcso-Android-Installer/scripted/Compressor.sh || bash
cd ~/SkyscraperAndroid || exit
wget -q -O - https://raw.githubusercontent.com/SoumyBhow/Skyscraper-Lazy-Script/master/SkyscraperLazy.sh
cp SkyscraperLazy.sh $PATH/Lazy && chmod +x $PATH/Lazy
exit
