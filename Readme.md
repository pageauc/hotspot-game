# hotspot-game.py - MOTION TRACKING GAME
### A Raspberry Pi Camera Motion Tracking Game using Video Stream, OpenCV2 and Python2

### Reference Information
* hotspot-game YouTube video here https://youtu.be/xFl3lmbEO9Y
* RPI Forum post here https://www.raspberrypi.org/forums/viewtopic.php?p=1026124#p1026124
* motion-track YouTube video here using RPI B2 https://youtu.be/09JS7twPBsQ
* github repo here https://github.com/pageauc/hotspot-game

### Quick Install
For easy hotspot-game install onto a Raspberry Pi with latest raspbian. 

    curl -L https://raw.github.com/pageauc/hotspot-game/master/hotspot-install.sh | bash

From a computer logged into the RPI via ssh(Putty) session use mouse to highlight command above, right click, copy.  
Then select ssh(Putty) window, mouse right click, paste.  The command should 
download and execute the github hotspot-install.sh script for hotspot-game

### or Manual install

    cd ~
    wget https://raw.github.com/pageauc/hotspot-game/master/hotspot-install.sh
    chmod +x hotspot-install.sh
    ./hotspot-install.sh

This will install required files into a folder called ~/hotspot-game.
IMPORTANT - install.sh will perform a raspbian update and upgrade that  
            could take a while.  Reboot if there are significant changes.
            
See How to Run Program section below for details on running hotspot-game.py
    
### Program Description
This is a raspberry pi computer openCV2 motion tracking game.
It is written in python2 and uses openCV2 and a Raspbery Pi camera module running
in a threaded video stream to detect and track motion. Motion is tracked and
activates menu's and game play using body motion. Can be played by one or two
players and high score is saved. 

The game play involves using body motion to get as many hits as possible
inside shrinking boxes that randomly move around the screen. Position the camera
so you can see body motions either close or standing. Pretty simple
but I think kids would have fun with it and they just might take a look at the 
code to see how it works, change variables or game logic.

You will need the raspberry pi (RPI) computer with a pi camera module connected and working.
A computer monitor or HD Television needs to be connected via an HDMI cable (composite
video not tested) or a VGA adapter. The program is run from the RPI GUI desktop in an opencv window.
The default 640x480 window can be resized using the WINDOW_BIGGER resize multiplier variable.
Use nano to edit if desired.

### How to Run Program    
To launch program make sure camera and video display are connected. You must
be in a RPI desktop GUI session.  Open a desktop terminal session, File Manger.
or Menu Programming, Python2 (IDLE). Navigate to the hotspot-game folder and
execute 

    cd ~/hotspot-game
    ./hotspot-game.py

#### or
    
    cd ~/hotspot-game
    python ./hotspot-game.py
    
### Settings

Variable values are stored in the config.py file. Use the nano editor to
modify these settings per the comments.  Most settings should be OK and will
not need to be changed.  You may need to flip the camera image to suit your
camera module orientation. Others line game settings may need to be fine tuned.  
Most openCV settings will not need changing unless you are familiar with them.
Make a backup of the config.py file if you want to experiment.  This will
allow you to return to previous known good settings or just download
default config.py again using the hotspot-install.sh script 

### Credits
Some of this code is based on a YouTube tutorial by
Kyle Hounslow using C here https://www.youtube.com/watch?v=X6rPdRZzgjg

Thanks to Adrian Rosebrock jrosebr1 at http://www.pyimagesearch.com 
for the PiVideoStream Class code available on github at
https://github.com/jrosebr1/imutils/blob/master/imutils/video/pivideostream.py

Have Fun

Claude Pageau

YouTube Channel https://www.youtube.com/user/pageaucp  
GitHub https://github.com/pageauc
