package defpackage;

import android.graphics.Rect;

/* loaded from: classes.dex */
public final class Qn extends Un {
    public final String a;
    public final Rect b;
    public final Jo c;

    public Qn(String str, Rect rect, Jo jo) {
        AbstractC0348nb.r(str, "pkg");
        AbstractC0348nb.r(rect, "bounds");
        AbstractC0348nb.r(jo, "position");
        this.a = str;
        this.b = rect;
        this.c = jo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Qn)) {
            return false;
        }
        Qn qn = (Qn) obj;
        return AbstractC0348nb.g(this.a, qn.a) && AbstractC0348nb.g(this.b, qn.b) && this.c == qn.c;
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "Launch(pkg=" + this.a + ", bounds=" + this.b + ", position=" + this.c + ')';
    }
}
