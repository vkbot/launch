package defpackage;

/* loaded from: classes.dex */
public final class Fe {
    public final long a;
    public final String b;

    public Fe(long j, String str) {
        AbstractC0348nb.r(str, "source");
        this.a = j;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Fe)) {
            return false;
        }
        Fe fe = (Fe) obj;
        return this.a == fe.a && AbstractC0348nb.g(this.b, fe.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Result(utcMillis=");
        sb.append(this.a);
        sb.append(", source=");
        return AbstractC0407pi.k(sb, this.b, ')');
    }
}
