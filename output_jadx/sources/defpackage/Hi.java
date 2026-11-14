package defpackage;

/* loaded from: classes.dex */
public final class Hi {
    public final String a;
    public final String b;
    public final String c;

    public Hi(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Hi)) {
            return false;
        }
        Hi hi = (Hi) obj;
        return AbstractC0348nb.g(this.a, hi.a) && AbstractC0348nb.g(this.b, hi.b) && AbstractC0348nb.g(this.c, hi.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + AbstractC0407pi.e(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("StorageStrings(title=");
        sb.append(this.a);
        sb.append(", message=");
        sb.append(this.b);
        sb.append(", free=");
        return AbstractC0407pi.k(sb, this.c, ')');
    }
}
