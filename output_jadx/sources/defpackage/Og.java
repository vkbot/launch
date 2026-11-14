package defpackage;

/* loaded from: classes.dex */
public final class Og {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;

    public Og(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
        this.h = str8;
        this.i = str9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Og)) {
            return false;
        }
        Og og = (Og) obj;
        return AbstractC0348nb.g(this.a, og.a) && AbstractC0348nb.g(this.b, og.b) && AbstractC0348nb.g(this.c, og.c) && AbstractC0348nb.g(this.d, og.d) && AbstractC0348nb.g(this.e, og.e) && AbstractC0348nb.g(this.f, og.f) && AbstractC0348nb.g(this.g, og.g) && AbstractC0348nb.g(this.h, og.h) && AbstractC0348nb.g(this.i, og.i);
    }

    public final int hashCode() {
        return this.i.hashCode() + AbstractC0407pi.e(this.h, AbstractC0407pi.e(this.g, AbstractC0407pi.e(this.f, AbstractC0407pi.e(this.e, AbstractC0407pi.e(this.d, AbstractC0407pi.e(this.c, AbstractC0407pi.e(this.b, this.a.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RemoteAppStrings(size=");
        sb.append(this.a);
        sb.append(", description=");
        sb.append(this.b);
        sb.append(", downloading=");
        sb.append(this.c);
        sb.append(", downloadingPercent=");
        sb.append(this.d);
        sb.append(", installing=");
        sb.append(this.e);
        sb.append(", installed=");
        sb.append(this.f);
        sb.append(", error=");
        sb.append(this.g);
        sb.append(", downloadError=");
        sb.append(this.h);
        sb.append(", networkError=");
        return AbstractC0407pi.k(sb, this.i, ')');
    }
}
