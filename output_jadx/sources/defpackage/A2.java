package defpackage;

/* loaded from: classes.dex */
public final class A2 {
    public final String a;
    public final String b;
    public final String c;

    public A2(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof A2)) {
            return false;
        }
        A2 a2 = (A2) obj;
        return AbstractC0348nb.g(this.a, a2.a) && AbstractC0348nb.g(this.b, a2.b) && AbstractC0348nb.g(this.c, a2.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + AbstractC0407pi.e(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AppListStrings(title=");
        sb.append(this.a);
        sb.append(", deleteHint=");
        sb.append(this.b);
        sb.append(", reorderHint=");
        return AbstractC0407pi.k(sb, this.c, ')');
    }
}
