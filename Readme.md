# hotspot-game.py - MOTION TRACKING GAME
### A Raspberry Pi Camera Motion Tracking Game using Video Stream, OpenCV2 and Python2

#### Quick Install
For easy hotspot-game install onto a Raspberry Pi with latest raspbian. 

    curl -L https://raw.github.com/pageauc/hotspot-game/master/install.sh | bash

From a computer logged into the RPI via ssh(Putty) session use mouse to highlight command above, right click, copy.  
Then select ssh(Putty) window, mouse right click, paste.  The command should 
download and execute the github install.sh script for hotspot-game

#### or Manual install

    cd ~
    wget https://raw.github.com/pageauc/hotspot-game/master/install.sh
    chmod +x install.sh

#### Reference Information
* hotspot-game YouTube video here https://youtu.be/xFl3lmbEO9Y
* RPI Forum post here https://www.raspberrypi.org/forums/viewtopic.php?p=1026124#p1026124
* motion-track YouTube video here using RPI B2 https://youtu.be/09JS7twPBsQ
* github repo here https://github.com/pageauc/hotspot-game

#### Program Description
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

#### Credits
Some of this code is based on a YouTube tutorial by
Kyle Hounslow using C here https://www.youtube.com/watch?v=X6rPdRZzgjg

Thanks to Adrian Rosebrock jrosebr1 at http://www.pyimagesearch.com 
for the PiVideoStream Class code available on github at
https://github.com/jrosebr1/imutils/blob/master/imutils/video/pivideostream.py

#### How to Run Program    
To launch program make sure camera and video display are connected. You must
be in a RPI desktop GUI session.  Open a desktop terminal session, File Manger.
or Menu Programming, Python2 (IDLE). Navigate to the hotspot-game folder and
execute 

    ./hotspot-game.py or

or
    
    python ./hotspot-game.py
    
### Settings

Variable values are stored in the hotspot-game.py file. Use the nano editor to
modify these settings per the comments.  Most settings should be OK and should
not need to be changed. Others may need to be fine tuned. The openCV settings most
likely won't need to be changed unless you are familiar with them.

Have Fun

Claude Pageau

YouTube Channel https://www.youtube.com/user/pageaucp  
GitHub https://github.com/pageauc
