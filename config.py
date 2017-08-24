# hotspot-game 0.9 configuration file

# Display Settings
window_on = True       # Set to True displays opencv windows (GUI desktop reqd)
WINDOW_BIGGER = 1.5    # resize multiplier if window_on=True then makes opencv window bigger
debug = True           # Set to False for no data display

# Game Settings
hi_score_path = "hotspot_hi_score"

# Game Timers
target_timer = 4    # seconds to show target rectangle on screen before moving it

# Game Settings
hotspot_skill = 150  # starting size of rectangle in pixels
hotspot_max_levels = 10   # default=10 Number of game levels lasting hotspot_level_timer 
hotspot_level_timer = 10  # seconds of time on each level
hotspot_min_size = int( hotspot_skill / 8 )

# Camera Settings
# ---------------
WEBCAM = False        # default = False False=PiCamera True=USB WebCamera

# Web Camera Settings
WEBCAM_SRC = 0        # default = 0   USB opencv connection number
WEBCAM_WIDTH = 640    # default = 320 USB Webcam Image width
WEBCAM_HEIGHT = 480   # default = 240 USB Webcam Image height
WEBCAM_HFLIP = True   # default = False USB Webcam flip image horizontally
WEBCAM_VFLIP = False  # default = False USB Webcam flip image vertically

# Pi Camera Settings
# ------------------
CAMERA_WIDTH = 640     # Image stream width for opencv motion scanning default=320
CAMERA_HEIGHT = 480    # Image stream height for opencv motion scanning  default=240
CAMERA_FRAMERATE = 45  # Default = 25 Frame rate for video stream V2 picam can be higher
CAMERA_ROTATION = 0    # Rotate camera image valid values are 0, 90, 180, 270
CAMERA_VFLIP = False   # Flip the camera image vertically if required
CAMERA_HFLIP = False   # Flip the camera image horizontally if required

# Menu Settings
MENU_COUNTER = 12     # number of motions inside menu for selection
MENU_WIDTH = 200
MENU_HEIGHT = 75
MENU_LINE_WIDTH = 2

# OpenCV Settings
THRESHOLD_SENSITIVITY = 25
BLUR_SIZE = 10
MIN_AREA = 600      # excludes all contours less than or equal to this Area
CIRCLE_SIZE = 8      # diameter of circle to show motion location in window
CIRCLE_LINE = 3      # thickness of line for circle
FONT_SCALE = .5      # OpenCV window text font size scaling factor default=.5 (lower is smaller)
LINE_THICKNESS = 2   # thickness of bounding line in pixels
big_w = int(CAMERA_WIDTH * WINDOW_BIGGER)
big_h = int(CAMERA_HEIGHT * WINDOW_BIGGER)
