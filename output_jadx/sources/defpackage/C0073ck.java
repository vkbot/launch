package defpackage;

/* renamed from: ck, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0073ck {
    public final int a;
    public final int b;

    public C0073ck(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0073ck)) {
            return false;
        }
        C0073ck c0073ck = (C0073ck) obj;
        return this.a == c0073ck.a && this.b == c0073ck.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "ThemeStatusBar(textColor=" + this.a + ", plateColor=" + this.b + ')';
    }
}
