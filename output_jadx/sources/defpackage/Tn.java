package defpackage;

import android.graphics.Rect;

/* loaded from: classes.dex */
public final class Tn extends Un {
    public final String a;
    public final int b;
    public final Rect c;

    public Tn(String str, int i, Rect rect) {
        AbstractC0348nb.r(str, "pkg");
        AbstractC0348nb.r(rect, "newBounds");
        this.a = str;
        this.b = i;
        this.c = rect;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Tn)) {
            return false;
        }
        Tn tn = (Tn) obj;
        return AbstractC0348nb.g(this.a, tn.a) && this.b == tn.b && AbstractC0348nb.g(this.c, tn.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + AbstractC0407pi.d(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "Resize(pkg=" + this.a + ", taskId=" + this.b + ", newBounds=" + this.c + ')';
    }
}
