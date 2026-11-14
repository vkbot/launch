package defpackage;

/* loaded from: classes.dex */
public final class M2 {
    public final long a;
    public final long b;
    public final long c;

    public M2(long j, long j2, long j3) {
        this.a = j;
        this.b = j2;
        this.c = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof M2)) {
            return false;
        }
        M2 m2 = (M2) obj;
        return this.a == m2.a && this.b == m2.b && this.c == m2.c;
    }

    public final int hashCode() {
        return Long.hashCode(this.c) + ((Long.hashCode(this.b) + (Long.hashCode(this.a) * 31)) * 31);
    }

    public final String toString() {
        return "Sizes(appBytes=" + this.a + ", dataBytes=" + this.b + ", cacheBytes=" + this.c + ')';
    }
}
