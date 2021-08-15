if [[ ! -f "$PREFIX/bin/Skyscraper" ]]; then
echo 'First time setup'
echo 'Please grant Termux storage permissions in the next screen...'
sleep 3
echo 'Requesting Storage Permissions...'
termux-setup-storage
echo 'Installing required packages...'
pkg install x11-repo -y >> /dev/null 2>&1
pkg install git wget make clang qt5-qtbase -y >> /dev/null 2>&1

echo 'Creating and moving into source folder "skysource"...'
mkdir -p ~/SkyscraperAndroid/skysource && cd ~/SkyscraperAndroid/skysource >> /dev/null 2>&1

echo 'Downloading source and compiling Skyscraper'
wget -q -O - https://raw.githubusercontent.com/muldjord/skyscraper/master/update_skyscraper.sh | bash >> /dev/null 2>&1
else
cd ~/SkyscraperAndroid/skysource
echo 'Skyscraper binary detected. Updating and compiling...'
./update_skyscraper.sh >> /dev/null 2>&1
fi

echo 'Manually copying the Skyscraper binary to /usr/bin...'


cp Skyscraper $PREFIX/bin/Skyscraper
echo 'Making the Skyscraper binary executable...'


chmod +x $PREFIX/bin/Skyscraper

echo 'Done! Please run the Skyscraper command to make sure it works'

read -n 1 -r -s -p $'Press any key to continue...\n'
