namespace FPVMath {
    float VDot(vec3 a, vec3 b) { return a.x*b.x + a.y*b.y + a.z*b.z; }

    vec3 VCross(vec3 a, vec3 b) {
        return vec3(a.y*b.z - a.z*b.y,
                    a.z*b.x - a.x*b.z,
                    a.x*b.y - a.y*b.x);
    }

    vec3 VNorm(vec3 v) {
        float len = Math::Sqrt(v.x*v.x + v.y*v.y + v.z*v.z);
        if (len < epsilon) return vec3(0, 1, 0);
        return vec3(v.x/len, v.y/len, v.z/len);
    }
    
    vec3 RotAround(vec3 v, vec3 axis, float angle) {
        float c = Math::Cos(angle), s = Math::Sin(angle);
        float d = VDot(axis, v);
        vec3  cv = VCross(axis, v);
        return vec3(v.x*c + cv.x*s + axis.x*d*(1.0f-c),
                    v.y*c + cv.y*s + axis.y*d*(1.0f-c),
                    v.z*c + cv.z*s + axis.z*d*(1.0f-c));
    }
}
