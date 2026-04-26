void DrawStickWidget(float x, float y, float sx, float sy) { // just the cool input overlay, largely copied over
    float sz = cfgOverlaySize;
    float cx = x + sz * 0.5f;
    float cy = y + sz * 0.5f;
    float r = sz * 0.42f;

    nvg::BeginPath();
    nvg::Rect(x, y, sz, sz);
    nvg::FillColor(vec4(0, 0, 0, cfgOverlayBgAlpha));
    nvg::Fill();

    nvg::BeginPath();
    nvg::Rect(x, y, sz, sz);
    nvg::StrokeColor(vec4(1, 1, 1, cfgOverlayBorderAlpha));
    nvg::StrokeWidth(1.0f);
    nvg::Stroke();

    nvg::BeginPath();
    nvg::MoveTo(vec2(cx, y + 3));
    nvg::LineTo(vec2(cx, y + sz - 3));
    nvg::StrokeColor(vec4(1, 1, 1, cfgOverlayCrossAlpha));
    nvg::StrokeWidth(1.0f);
    nvg::Stroke();

    nvg::BeginPath();
    nvg::MoveTo(vec2(x + 3, cy));
    nvg::LineTo(vec2(x + sz - 3, cy));
    nvg::Stroke();

    nvg::BeginPath();
    nvg::Circle(vec2(cx + sx * r, cy + sy * r), cfgOverlayDotSize);
    nvg::FillColor(vec4(cfgOverlayDotR, cfgOverlayDotG, cfgOverlayDotB, 1.0f));
    nvg::Fill();
}
