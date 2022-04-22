# Skyscraper-Android-Installer-Script
An installer and updater script of [Muljord's Skyscraper](https://github.com/muldjord/skyscraper) program for Android users. Requires the use of the Termux terminal.

Useful for [Pegasus Frontend](https://github.com/mmatyas/pegasus-frontend) users on Android or other Emulation on Android users who don't want to use a PC to scrape their ROMs.

## Steps to install:
Download and Install the Termux app from its F-Droid source as the Google Play version is considered End of Life

Termux can be found right here: [F-Droid Download](https://f-droid.org/en/packages/com.termux/)

Open Termux and run the following commands:

```
pkg install wget -y

wget -q https://raw.githubusercontent.com/SoumyBhow/Skyscraper-Android-Installer-Script/master/termux_update_skyscraper.sh 

chmod +x termux_update_skyscraper.sh

./termux_update_skyscraper.sh

```
This script will download the Skyscraper source from the original repo along with other required packages needed to download and compile it. Then it will automatically move the compiled binary to Termux's usr/bin folder since the original install script is unable to.
Please give the script at least 3-5 minutes to run.

You will need to use an SAF compatible File Manager of choice to access Termux's files (select it from the storage options). This is how you can access Skyscraper's `.skyscraper` folder and place your [config.ini](https://github.com/muldjord/skyscraper/blob/master/docs/CONFIGINI.md) and [artwork.xml](https://github.com/muldjord/skyscraper/blob/master/docs/ARTWORK.md).

You can also update Skyscraper with this script by running it again:
```
$ cd ~/SkyscraperAndroid/

$ ./termux_update_skyscraper.sh
```
 Please see Skyscraper's [documents](https://github.com/muldjord/skyscraper/tree/master/docs) and [use instructions](https://github.com/muldjord/skyscraper#how-to-use-skyscraper) for details on how to configure it. 
 
 Credits:
 
 [Muljord](https://github.com/muldjord/) for Skyscraper
 
 [The Termux Team](https://github.com/termux) for Termux and its packages
