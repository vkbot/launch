package defpackage;

/* renamed from: d3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0082d3 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;

    public C0082d3(String str, String str2, String str3, String str4, String str5) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0082d3)) {
            return false;
        }
        C0082d3 c0082d3 = (C0082d3) obj;
        return AbstractC0348nb.g(this.a, c0082d3.a) && AbstractC0348nb.g(this.b, c0082d3.b) && AbstractC0348nb.g(this.c, c0082d3.c) && AbstractC0348nb.g(this.d, c0082d3.d) && AbstractC0348nb.g(this.e, c0082d3.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + AbstractC0407pi.e(this.d, AbstractC0407pi.e(this.c, AbstractC0407pi.e(this.b, this.a.hashCode() * 31, 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AutostartStrings(last=");
        sb.append(this.a);
        sb.append(", presets=");
        sb.append(this.b);
        sb.append(", nothing=");
        sb.append(this.c);
        sb.append(", apps=");
        sb.append(this.d);
        sb.append(", navi=");
        return AbstractC0407pi.k(sb, this.e, ')');
    }
}
