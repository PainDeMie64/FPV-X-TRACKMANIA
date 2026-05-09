namespace FPVMath {
    vec3 VNorm(vec3 v) {
        if (v.Length() < epsilon) return vec3(0, 1, 0);
        return v.Normalized();
    }
    
    vec3 RotAround(vec3 v, vec3 axis, float angle) {
        float c = Math::Cos(angle), s = Math::Sin(angle);
        float d = Math::Dot(axis, v);
        vec3  cv = Math::Cross(axis, v);
        return vec3(v.x*c + cv.x*s + axis.x*d*(1.0f-c),
                    v.y*c + cv.y*s + axis.y*d*(1.0f-c),
                    v.z*c + cv.z*s + axis.z*d*(1.0f-c));
    }
}
