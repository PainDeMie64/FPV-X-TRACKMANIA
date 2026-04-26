string ffloat(float value, int decimals = 6) {
    return Text::Format("%." + decimals + "f", value);
}

string ExportReplayCsv(bool &out error) {
    if (replay.samples.Length < 2) {
        error = true;
        return "Error: no recorded trajectory";
    }

    int total = int(replay.samples.Length);
    string csv = "";
    for (int i = 0; i < total; i++) {
        auto sample = replay.samples[i];
        csv += string::Join({ffloat(replay.sampleTimes[i]), ffloat(sample.pos.x), ffloat(sample.pos.y), ffloat(sample.pos.z), ffloat(sample.view.pitch), ffloat(sample.view.yaw), ffloat(sample.view.roll)}, ",") + "\n";
    }

    IO::File f(IO::FromStorageFolder("trajectory.csv"), IO::FileMode::Write);
    f.Write(csv);
    f.Close();

    error = false;
    return "CSV exported — " + total + " rows -> PluginStorage/FPVDrone/trajectory.csv";
}
