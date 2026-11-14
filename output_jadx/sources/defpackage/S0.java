package defpackage;

/* loaded from: classes.dex */
public final class S0 {
    public final String a;
    public final String b;
    public final long c;
    public final String d;
    public final String e;

    public S0(String str, String str2, long j, String str3, String str4) {
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = str3;
        this.e = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof S0)) {
            return false;
        }
        S0 s0 = (S0) obj;
        return AbstractC0348nb.g(this.a, s0.a) && AbstractC0348nb.g(this.b, s0.b) && this.c == s0.c && AbstractC0348nb.g(this.d, s0.d) && AbstractC0348nb.g(this.e, s0.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + AbstractC0407pi.e(this.d, (Long.hashCode(this.c) + AbstractC0407pi.e(this.b, this.a.hashCode() * 31, 31)) * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LauncherUpdate(version=");
        sb.append(this.a);
        sb.append(", downloadUrl=");
        sb.append(this.b);
        sb.append(", fileSize=");
        sb.append(this.c);
        sb.append(", fileSizeHuman=");
        sb.append(this.d);
        sb.append(", changelog=");
        return AbstractC0407pi.k(sb, this.e, ')');
    }
}
