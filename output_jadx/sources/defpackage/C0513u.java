package defpackage;

/* renamed from: u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0513u {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;

    public C0513u(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
        this.h = str8;
        this.i = str9;
        this.j = str10;
        this.k = str11;
        this.l = str12;
        this.m = str13;
        this.n = str14;
        this.o = str15;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0513u)) {
            return false;
        }
        C0513u c0513u = (C0513u) obj;
        return AbstractC0348nb.g(this.a, c0513u.a) && AbstractC0348nb.g(this.b, c0513u.b) && AbstractC0348nb.g(this.c, c0513u.c) && AbstractC0348nb.g(this.d, c0513u.d) && AbstractC0348nb.g(this.e, c0513u.e) && AbstractC0348nb.g(this.f, c0513u.f) && AbstractC0348nb.g(this.g, c0513u.g) && AbstractC0348nb.g(this.h, c0513u.h) && AbstractC0348nb.g(this.i, c0513u.i) && AbstractC0348nb.g(this.j, c0513u.j) && AbstractC0348nb.g(this.k, c0513u.k) && AbstractC0348nb.g(this.l, c0513u.l) && AbstractC0348nb.g(this.m, c0513u.m) && AbstractC0348nb.g(this.n, c0513u.n) && AbstractC0348nb.g(this.o, c0513u.o);
    }

    public final int hashCode() {
        return this.o.hashCode() + AbstractC0407pi.e(this.n, AbstractC0407pi.e(this.m, AbstractC0407pi.e(this.l, AbstractC0407pi.e(this.k, AbstractC0407pi.e(this.j, AbstractC0407pi.e(this.i, AbstractC0407pi.e(this.h, AbstractC0407pi.e(this.g, AbstractC0407pi.e(this.f, AbstractC0407pi.e(this.e, AbstractC0407pi.e(this.d, AbstractC0407pi.e(this.c, AbstractC0407pi.e(this.b, this.a.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AccessibilityErrorStrings(title=");
        sb.append(this.a);
        sb.append(", reasonNotInstalled=");
        sb.append(this.b);
        sb.append(", reasonNotEnabled=");
        sb.append(this.c);
        sb.append(", reasonNotBinding=");
        sb.append(this.d);
        sb.append(", reasonGaveUp=");
        sb.append(this.e);
        sb.append(", diagAttempts=");
        sb.append(this.f);
        sb.append(", diagInstalled=");
        sb.append(this.g);
        sb.append(", diagEnabled=");
        sb.append(this.h);
        sb.append(", diagBootTime=");
        sb.append(this.i);
        sb.append(", diagYes=");
        sb.append(this.j);
        sb.append(", diagNo=");
        sb.append(this.k);
        sb.append(", secondsSuffix=");
        sb.append(this.l);
        sb.append(", btnRetry=");
        sb.append(this.m);
        sb.append(", btnSettings=");
        sb.append(this.n);
        sb.append(", btnRestart=");
        return AbstractC0407pi.k(sb, this.o, ')');
    }
}
