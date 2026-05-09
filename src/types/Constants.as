const float epsilon = 1e-6f;

const uint cpLongPressMs = 900; // hold duration that clears the cp

const int btnRecord = 6;  // default button for record
const int btnRespawn = 2;  // default button for relaunch
const int btnCp = 5;  // default button for marker set/restore
const int btnRewind = 3;  // default button for rewind (X on Xbox)

const float hudX = 16.0f;
const float hudY = 470.0f;
const float hudW = 360.0f;
const float hudH = 66.0f;

const float exportX = 16.0f;
const float exportYActive = 540.0f;
const float exportYIdle = 470.0f;
const float exportW = 400.0f;
const float exportH = 48.0f;

const uint16 offsetCameraMgrFromGameScene = 0x10; // offset from GameScene to the camera manager
const uint16 offsetCameraNodeInMgr = 0x80; // offset from the manager to the freecam node