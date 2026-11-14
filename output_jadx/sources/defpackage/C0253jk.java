package defpackage;

/* renamed from: jk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0253jk {
    public final long a;
    public final long b;

    public C0253jk(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0253jk)) {
            return false;
        }
        C0253jk c0253jk = (C0253jk) obj;
        return this.a == c0253jk.a && this.b == c0253jk.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "Anchor(utc=" + this.a + ", elapsed=" + this.b + ')';
    }
}
