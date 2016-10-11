#!/bin/bash
# Convenient hotspot-game install.sh script written by Claude Pageau 1-Jul-2016
ver="1.0"
GAME_DIR='hotspot-game'  # Default folder install location
# Remember where this script was launched from
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "------------------------------------------------"
echo "      hotspot-game Install.sh script ver $ver"
echo "Install or Upgrade hotspot-game Object speed tracking"
echo "------------------------------------------------"
echo "Checking for hotspot-game folder"
cd ~
if [ -d "$GAME_DIR" ] ; then
  STATUS="Upgrade"
  echo "Upgrade hotspot-game files"
else  
  echo "New hotspot-game Install"
  STATUS="New Install"
  mkdir -p $GAME_DIR
  echo "$GAME_DIR Folder Created"
fi    
cd $GAME_DIR
INSTALL_PATH=$( pwd )
echo "------------------------------------------------"
echo "1 - Downloading GitHub Repo files to $INSTALL_PATH"
wget -O install.sh -q --show-progress https://raw.github.com/pageauc/hotspot-game/master/hotspot-install.sh
if [ $? -ne 0 ] ;  then
  wget -O install.sh https://raw.github.com/pageauc/hotspot-game/master/hotspot-install.sh
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
cd $DIR
# Check if install.sh was launched from hotspot-game folder
if [ "$DIR" = "$INSTALL_PATH" ]; then
  echo "Upgrade Complete"
else
  if [ -e 'hotspot-install.sh' ]; then
    echo "Install Complete - Cleanup hotspot-install.sh"
    rm hotspot-install.sh
  fi
fi
echo "-----------------------------------------------"
echo "6 - $STATUS Complete"
echo "-----------------------------------------------"
echo ""
echo "1. Reboot RPI if there are significant Raspbian system updates"
echo "2. Raspberry pi needs a monitor/TV attached to display game window"
echo "3. Run hotspot-game.py with the Raspbian Desktop GUI running"
echo "4. To start game open file manager or a Terminal session then change to" 
echo "   hotspot-game folder and launch per commands below"
echo ""
echo "   cd ~/hotspot-game"
echo "   ./hotspot-game.py"
echo ""
echo "-----------------------------------------------"
echo "See Readme.md for Further Details"
echo $0 $ver "Good Luck Claude ..."
echo "Bye"
echo ""