#!/bin/sh
# Convenient hotspot-game install.sh script written by Claude Pageau 1-Jul-2016
ver="1.9"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" # folder location of this script
GAMEPATH='~/hotspot-game'
echo "      hotspot-game Install.sh script ver $ver"
echo "Install or Upgrade hotspot-game Object speed tracking"
echo "-----------------------------------------------"
echo "Checking for hotspot-game folder"
cd ~
mkdir -p $GAMEPATH
cd $GAMEPATH
echo "Done Folder Create"
pwd
echo "1 - Downloading github repo files"
wget -O install.sh -q --show-progress https://raw.github.com/pageauc/hotspot-game/master/install.sh
if [ $? -ne 0 ] ;  then
  wget -O install.sh https://raw.github.com/pageauc/hotspot-game/master/install.sh
  wget -O hotspot-game.py https://raw.github.com/pageauc/hotspot-game/master/hotspot-game.py 
  wget -O Readme.md https://raw.github.com/pageauc/hotspot-game/master/Readme.md  
else
  wget -O hotspot-game.py -q --show-progress https://raw.github.com/pageauc/hotspot-game/master/hotspot-game.py
  wget -O Readme.md -q --show-progress  https://raw.github.com/pageauc/hotspot-game/master/Readme.md  
fi
echo "Done Download"
echo "2 - Make required Files Executable"
chmod +x hotspot-game.py
chmod +x install.sh
echo "Done Permissions"
echo "3 - Performing Raspbian System Update"
echo "    This Will Take Some Time ...."
echo ""
sudo apt-get -y update
echo "Done update"
echo "4 - Performing Raspbian System Upgrade"
echo "    This Will Take Some Time ...."
echo ""
sudo apt-get -y upgrade
echo "Done upgrade"
echo "5 - Installing hotspot-game Dependencies"
sudo apt-get install -y python-opencv python-picamera
sudo apt-get install -y fonts-freefont-ttf # Required for Jessie Lite Only
echo "Done Dependencies"
echo "6 - Installation Complete"
echo "-----------------------------------------------"
echo "See Readme.md for hotspot-game Program Requirements, Configuration and Calibration"
echo ""
echo "You should reboot RPI if there are significant Raspbian system file updates"
echo "You must run this game from the raspberry pi with monitor/TV attached"
echo "and the Raspbian Desktop GUI running"
echo "To start game open file manager or a Terminal session then change to" 
echo "hotspot-game folder and launch per command below"
echo ""
echo "cd ~/hotspot-game"
echo "./hotspot-game.py"
echo
echo "Good Luck Claude"
cd $DIR 
if [ -e 'install.sh' ]; then
  echo "Remove temporary install.sh"
  echo "Updated install.sh in ~/hotspot-game folder"
  rm 'install.sh'
fi








