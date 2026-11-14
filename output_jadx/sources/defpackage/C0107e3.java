package defpackage;

import android.window.BackEvent;

/* renamed from: e3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0107e3 {
    public final float a;
    public final float b;
    public final float c;
    public final int d;

    public C0107e3(BackEvent backEvent) {
        AbstractC0348nb.r(backEvent, "backEvent");
        P0 p0 = P0.a;
        float d = p0.d(backEvent);
        float e = p0.e(backEvent);
        float b = p0.b(backEvent);
        int c = p0.c(backEvent);
        this.a = d;
        this.b = e;
        this.c = b;
        this.d = c;
    }

    public final String toString() {
        return "BackEventCompat{touchX=" + this.a + ", touchY=" + this.b + ", progress=" + this.c + ", swipeEdge=" + this.d + '}';
    }
}
