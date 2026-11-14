package defpackage;

import android.graphics.Rect;

/* renamed from: dd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0092dd {
    public final String a;
    public int b;
    public Rect c;
    public final Jo d;

    public C0092dd(String str, int i, Rect rect, Jo jo) {
        AbstractC0348nb.r(str, "packageName");
        AbstractC0348nb.r(rect, "bounds");
        AbstractC0348nb.r(jo, "position");
        this.a = str;
        this.b = i;
        this.c = rect;
        this.d = jo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0092dd)) {
            return false;
        }
        C0092dd c0092dd = (C0092dd) obj;
        return AbstractC0348nb.g(this.a, c0092dd.a) && this.b == c0092dd.b && AbstractC0348nb.g(this.c, c0092dd.c) && this.d == c0092dd.d;
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + AbstractC0407pi.d(this.b, this.a.hashCode() * 31, 31)) * 31);
    }

    public final String toString() {
        return "ManagedWindow(packageName=" + this.a + ", taskId=" + this.b + ", bounds=" + this.c + ", position=" + this.d + ')';
    }
}
