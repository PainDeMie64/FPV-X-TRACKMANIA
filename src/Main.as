FlightState flightState; // Current state with all data and shit
FlightState launchState; // Where it started, usually next to the car since cam 1 -> cam 7 is at the car. Used for respawning
ReturnPoint returnPoint; // checkpoint to respawn (only one rn, could be multiple later)
ReplayBuffer replay; // Recorded states for rewind and export
SessionState session; // current mode like idle (casual flight)/recording (saving states to an array)/rewinding (like forza horizon rewind)

uint lastUpdateMs = 0; // last update tick

void Main() {
}

void Update(float dtMs) {
    if (!cfgEnabled) {
        ShutdownFlight(true);
        return;
    }

    auto cam = GetFreeCam();
    if (cam is null) { // if not in cam 7
        ShutdownFlight(false);
        return;
    }

    auto pad = GetPrimaryPad();
    if (pad is null) {
        ShutdownFlight(false);
        return;
    }

    float dt = dtMs * 0.001f; // we use seconds

    StepFlightModel(cam, pad, dt); // main physics and input handling

    session.active = true; //indicate we're now in cam 7 with fpv drone mode
}
