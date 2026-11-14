package defpackage;

import android.graphics.Rect;

/* loaded from: classes.dex */
public final class Do {
    public final String a;
    public final int b;
    public final Rect c;
    public final boolean d;

    public Do(String str, int i, Rect rect, boolean z) {
        AbstractC0348nb.r(str, "packageName");
        this.a = str;
        this.b = i;
        this.c = rect;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Do)) {
            return false;
        }
        Do r5 = (Do) obj;
        return AbstractC0348nb.g(this.a, r5.a) && this.b == r5.b && AbstractC0348nb.g(this.c, r5.c) && this.d == r5.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + ((this.c.hashCode() + AbstractC0407pi.d(this.b, this.a.hashCode() * 31, 31)) * 31);
    }

    public final String toString() {
        return "PresetWindow(packageName=" + this.a + ", taskId=" + this.b + ", bounds=" + this.c + ", onScreen=" + this.d + ')';
    }
}
