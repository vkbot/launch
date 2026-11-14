package defpackage;

import android.graphics.Rect;

/* loaded from: classes.dex */
public final class Eo {
    public final String a;
    public final int b;
    public final Rect c;

    public Eo(String str, int i, Rect rect) {
        this.a = str;
        this.b = i;
        this.c = rect;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Eo)) {
            return false;
        }
        Eo eo = (Eo) obj;
        return AbstractC0348nb.g(this.a, eo.a) && this.b == eo.b && AbstractC0348nb.g(this.c, eo.c);
    }

    public final int hashCode() {
        int d = AbstractC0407pi.d(this.b, this.a.hashCode() * 31, 31);
        Rect rect = this.c;
        return d + (rect == null ? 0 : rect.hashCode());
    }

    public final String toString() {
        return "RunningTask(packageName=" + this.a + ", taskId=" + this.b + ", bounds=" + this.c + ')';
    }
}
