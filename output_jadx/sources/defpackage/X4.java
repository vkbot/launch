package defpackage;

/* loaded from: classes.dex */
public final class X4 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;

    public X4(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
    }

    public final String a() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof X4)) {
            return false;
        }
        X4 x4 = (X4) obj;
        return AbstractC0348nb.g(this.a, x4.a) && AbstractC0348nb.g(this.b, x4.b) && AbstractC0348nb.g(this.c, x4.c) && AbstractC0348nb.g(this.d, x4.d) && AbstractC0348nb.g(this.e, x4.e) && AbstractC0348nb.g(this.f, x4.f) && AbstractC0348nb.g(this.g, x4.g);
    }

    public final int hashCode() {
        return this.g.hashCode() + AbstractC0407pi.e(this.f, AbstractC0407pi.e(this.e, AbstractC0407pi.e(this.d, AbstractC0407pi.e(this.c, AbstractC0407pi.e(this.b, this.a.hashCode() * 31, 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CommonStrings(cancel=");
        sb.append(this.a);
        sb.append(", yes=");
        sb.append(this.b);
        sb.append(", ok=");
        sb.append(this.c);
        sb.append(", delete=");
        sb.append(this.d);
        sb.append(", install=");
        sb.append(this.e);
        sb.append(", update=");
        sb.append(this.f);
        sb.append(", loading=");
        return AbstractC0407pi.k(sb, this.g, ')');
    }
}
