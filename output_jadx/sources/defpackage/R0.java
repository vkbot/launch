package defpackage;

/* loaded from: classes.dex */
public final class R0 {
    public final boolean a;
    public final boolean b;

    public R0(boolean z, boolean z2) {
        this.a = z;
        this.b = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof R0)) {
            return false;
        }
        R0 r0 = (R0) obj;
        return this.a == r0.a && this.b == r0.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Boolean.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "AntifraudResult(active=" + this.a + ", deactivate=" + this.b + ')';
    }
}
