**FPV Drone** is an Openplanet plugin for Trackmania 2020 that simulates acrobatic FPV drone physics, replacing the standard cam 7.

## Requirements

* **Gamepad**: A controller is mandatory to pilot the drone (for now).
* **Camera 7**: The physics engine activates automatically when switching to camera 7.

## Controls

The plugin uses the standard configuration by default:
* **Left Stick**: Throttle (Y-axis) and Yaw (X-axis).
* **Right Stick**: Pitch (Y-axis) and Roll (X-axis).

*Note: All axes can be inverted and deadzones adjusted in the plugin settings.*

## Key Features

### Advanced Physics Engine
The simulation includes adjustable parameters for motor thrust, gravity, linear drag and more.

### Practice & Recovery Tools
* **Record & Rewind**: Record your flight in real-time. Hold the Rewind key to go back in time. You can maintain stick inputs during the rewind to seamlessly resume your trajectory upon release.
* **Checkpoint System**: Save your current position with a press and return to it with another press. A long press clears the checkpoint.
* **Respawn**: Instantly reset the drone to its starting position.

### CSV Export for Rendering

1. Record a flight and stop the recording.
2. Click the **"Export recording to CSV"** button in the HUD.
3. The file is saved to `users/name/OpenplanetNext/PluginStorage/FPVDrone/trajectory.csv`.
4. Use [FPV Clip](https://utils.tmtas.exchange/fpvclip.html) to convert the data for use in MediaTracker.
5. Move the downloaded `.clip` file to your Replays folder, then open the Replay Editor, select an existing replay on the map, and click **Import a Clip** at the bottom.

## Configuration

Access all settings via the Openplanet menu (`F3`)- > "Openplanet" button -> "Settings" button -> "FPV Drone Camera" tab:
* **Physics**: Adjust flight behavior
* **Axes**: Invert axes and set stick deadzone
* **Overlay**: Toggle and customize the stick movement display
* **Help**: General info and guide to recording and rendering FPV flights.

## To Do List
- quaternion slerp
- presets
- support for true fpv controllers binding, as well as keyboard/mouse
- LB/RB for camera angle adjustment
- non-linear curves