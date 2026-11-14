package defpackage;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

/* loaded from: classes.dex */
public abstract class O0 {
    public static final LinearInterpolator a = new LinearInterpolator();
    public static final V8 b = new Rc(V8.d);
    public static final V8 c = new V8();
    public static final V8 d = new Rc(V8.e);

    /* JADX WARN: Type inference failed for: r0v1, types: [Rc, V8] */
    /* JADX WARN: Type inference failed for: r0v3, types: [Rc, V8] */
    static {
        new DecelerateInterpolator();
    }

    public static float a(float f, float f2, float f3) {
        return ((f2 - f) * f3) + f;
    }

    public static float b(float f, float f2, float f3, float f4, float f5) {
        return f5 <= f3 ? f : f5 >= f4 ? f2 : a(f, f2, (f5 - f3) / (f4 - f3));
    }

    public static int c(int i, int i2, float f) {
        return Math.round(f * (i2 - i)) + i;
    }
}
