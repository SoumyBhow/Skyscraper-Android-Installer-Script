# Skyscraper-Android-Installer-Script
A master installer and updater script of [Gemba's Skyscraper](https://github.com/gemba/skyscraper) (Original project by [Muldjord](https://github.com/muldjord/skyscraper)) program for Android users along with CHDMAN, Maxcso and a Skyscraper autmative script "Lazy". Requires the use of the Termux terminal.

Useful for [Pegasus Frontend](https://github.com/mmatyas/pegasus-frontend) users on Android or other Emulation on Android users who don't want to use a PC to scrape their ROMs.

## Steps to install:
Download and Install the Termux app from its F-Droid source as the Google Play version is considered End of Life

Termux can be found right here: [F-Droid Download](https://f-droid.org/en/packages/com.termux/)

Open Termux and run the following command:

```
curl -O -L -q https://raw.githubusercontent.com/SoumyBhow/Skyscraper-Android-Installer-Script/master/termux_update_skyscraper.sh && chmod +x termux_update_skyscraper.sh && bash termux_update_skyscraper.sh
```
This script will download the Skyscraper source [Gemba's](https://github.com/gemba/skyscraper) repo along with other required packages and modifications needed to download and compile it. It'll do the same for CHDMAN and Maxcso


You will need to use an SAF compatible File Manager of choice to access Termux's files (select it from the storage options). This is how you can access Skyscraper's `.skyscraper` folder and place your [config.ini](https://github.com/muldjord/skyscraper/blob/master/docs/CONFIGINI.md) and [artwork.xml](https://github.com/muldjord/skyscraper/blob/master/docs/ARTWORK.md).

You can also update Skyscraper and the other tools with this script by running it again:
```
bash termux_update_skyscraper.sh
```
 Please see Skyscraper's [documents](https://github.com/gemba/skyscraper/tree/master/docs) and [use instructions](https://github.com/gemba/skyscraper#how-to-use-skyscraper) for details on how to configure it. 
 
 You can use CHDMAN and Maxcso to compress your ROMs.

 Run ```Lazy``` in the terminal for a script to automate Skyscraper

 Credits:
 
 [Muljord](https://github.com/muldjord/) for Skyscraper

 [Gemba](https://github.com/gemba/skyscraper) for their Skyscraper fork

 [Detain](https://github.com/detain/skyscraper) for their Skyscraper fork (was originally part of this script)

 [The Termux Team](https://github.com/termux) for Termux and its packages

 [Charles Thobe & The M.A.M.E Team](https://github.com/CharlesThobe/chdman) for CHDMAN

 [UnknownBrackets](https://github.com/unknownbrackets/maxcso) for Maxcso
