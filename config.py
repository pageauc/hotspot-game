# hotspot-game configuration file

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
CAMERA_WIDTH = 640
CAMERA_HEIGHT = 480
CAMERA_HFLIP = False
CAMERA_VFLIP = True
CAMERA_ROTATION = 0
CAMERA_FRAMERATE = 45

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
