package defpackage;

/* loaded from: classes.dex */
public final class Hd {
    public final long a;
    public final long b;

    public Hd(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Hd)) {
            return false;
        }
        Hd hd = (Hd) obj;
        return this.a == hd.a && this.b == hd.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "Device(total=" + this.a + ", available=" + this.b + ')';
    }
}
