package defpackage;

/* renamed from: ak, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0021ak {
    public final String a;
    public final int b;

    public C0021ak(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0021ak)) {
            return false;
        }
        C0021ak c0021ak = (C0021ak) obj;
        return AbstractC0348nb.g(this.a, c0021ak.a) && this.b == c0021ak.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "ThemeNav(bgName=" + this.a + ", btnOffsetX=" + this.b + ')';
    }
}
