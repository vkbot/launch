package defpackage;

/* renamed from: q0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0415q0 {
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

    public C0415q0(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15) {
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
        if (!(obj instanceof C0415q0)) {
            return false;
        }
        C0415q0 c0415q0 = (C0415q0) obj;
        return AbstractC0348nb.g(this.a, c0415q0.a) && AbstractC0348nb.g(this.b, c0415q0.b) && AbstractC0348nb.g(this.c, c0415q0.c) && AbstractC0348nb.g(this.d, c0415q0.d) && AbstractC0348nb.g(this.e, c0415q0.e) && AbstractC0348nb.g(this.f, c0415q0.f) && AbstractC0348nb.g(this.g, c0415q0.g) && AbstractC0348nb.g(this.h, c0415q0.h) && AbstractC0348nb.g(this.i, c0415q0.i) && AbstractC0348nb.g(this.j, c0415q0.j) && AbstractC0348nb.g(this.k, c0415q0.k) && AbstractC0348nb.g(this.l, c0415q0.l) && AbstractC0348nb.g(this.m, c0415q0.m) && AbstractC0348nb.g(this.n, c0415q0.n) && AbstractC0348nb.g(this.o, c0415q0.o);
    }

    public final int hashCode() {
        return this.o.hashCode() + AbstractC0407pi.e(this.n, AbstractC0407pi.e(this.m, AbstractC0407pi.e(this.l, AbstractC0407pi.e(this.k, AbstractC0407pi.e(this.j, AbstractC0407pi.e(this.i, AbstractC0407pi.e(this.h, AbstractC0407pi.e(this.g, AbstractC0407pi.e(this.f, AbstractC0407pi.e(this.e, AbstractC0407pi.e(this.d, AbstractC0407pi.e(this.c, AbstractC0407pi.e(this.b, this.a.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ActivationStrings(title=");
        sb.append(this.a);
        sb.append(", deviceId=");
        sb.append(this.b);
        sb.append(", enterCode=");
        sb.append(this.c);
        sb.append(", wrongCode=");
        sb.append(this.d);
        sb.append(", emptyCode=");
        sb.append(this.e);
        sb.append(", site=");
        sb.append(this.f);
        sb.append(", later=");
        sb.append(this.g);
        sb.append(", laterRemaining=");
        sb.append(this.h);
        sb.append(", launchOne=");
        sb.append(this.i);
        sb.append(", launchFew=");
        sb.append(this.j);
        sb.append(", launchMany=");
        sb.append(this.k);
        sb.append(", activate=");
        sb.append(this.l);
        sb.append(", delete=");
        sb.append(this.m);
        sb.append(", activateOnline=");
        sb.append(this.n);
        sb.append(", onlineFailed=");
        return AbstractC0407pi.k(sb, this.o, ')');
    }
}
