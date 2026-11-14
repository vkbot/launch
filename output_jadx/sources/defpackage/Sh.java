package defpackage;

/* loaded from: classes.dex */
public final class Sh {
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
    public final String p;
    public final String q;
    public final String r;
    public final String s;
    public final String t;

    public Sh(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20) {
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
        this.p = str16;
        this.q = str17;
        this.r = str18;
        this.s = str19;
        this.t = str20;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Sh)) {
            return false;
        }
        Sh sh = (Sh) obj;
        return AbstractC0348nb.g(this.a, sh.a) && AbstractC0348nb.g(this.b, sh.b) && AbstractC0348nb.g(this.c, sh.c) && AbstractC0348nb.g(this.d, sh.d) && AbstractC0348nb.g(this.e, sh.e) && AbstractC0348nb.g(this.f, sh.f) && AbstractC0348nb.g(this.g, sh.g) && AbstractC0348nb.g(this.h, sh.h) && AbstractC0348nb.g(this.i, sh.i) && AbstractC0348nb.g(this.j, sh.j) && AbstractC0348nb.g(this.k, sh.k) && AbstractC0348nb.g(this.l, sh.l) && AbstractC0348nb.g(this.m, sh.m) && AbstractC0348nb.g(this.n, sh.n) && AbstractC0348nb.g(this.o, sh.o) && AbstractC0348nb.g(this.p, sh.p) && AbstractC0348nb.g(this.q, sh.q) && AbstractC0348nb.g(this.r, sh.r) && AbstractC0348nb.g(this.s, sh.s) && AbstractC0348nb.g(this.t, sh.t);
    }

    public final int hashCode() {
        return this.t.hashCode() + AbstractC0407pi.e(this.s, AbstractC0407pi.e(this.r, AbstractC0407pi.e(this.q, AbstractC0407pi.e(this.p, AbstractC0407pi.e(this.o, AbstractC0407pi.e(this.n, AbstractC0407pi.e(this.m, AbstractC0407pi.e(this.l, AbstractC0407pi.e(this.k, AbstractC0407pi.e(this.j, AbstractC0407pi.e(this.i, AbstractC0407pi.e(this.h, AbstractC0407pi.e(this.g, AbstractC0407pi.e(this.f, AbstractC0407pi.e(this.e, AbstractC0407pi.e(this.d, AbstractC0407pi.e(this.c, AbstractC0407pi.e(this.b, this.a.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SettingsStrings(title=");
        sb.append(this.a);
        sb.append(", unifiedLauncher=");
        sb.append(this.b);
        sb.append(", unifiedLauncherDesc=");
        sb.append(this.c);
        sb.append(", presetSize=");
        sb.append(this.d);
        sb.append(", presetSizeDesc=");
        sb.append(this.e);
        sb.append(", covers=");
        sb.append(this.f);
        sb.append(", coversDesc=");
        sb.append(this.g);
        sb.append(", hideBack=");
        sb.append(this.h);
        sb.append(", hideBackDesc=");
        sb.append(this.i);
        sb.append(", sportKey=");
        sb.append(this.j);
        sb.append(", sportKeyDesc=");
        sb.append(this.k);
        sb.append(", autostart=");
        sb.append(this.l);
        sb.append(", autostartDesc=");
        sb.append(this.m);
        sb.append(", timeZone=");
        sb.append(this.n);
        sb.append(", clockHourSuffix=");
        sb.append(this.o);
        sb.append(", language=");
        sb.append(this.p);
        sb.append(", languageDesc=");
        sb.append(this.q);
        sb.append(", updateLauncher=");
        sb.append(this.r);
        sb.append(", updateLauncherDesc=");
        sb.append(this.s);
        sb.append(", checkButton=");
        return AbstractC0407pi.k(sb, this.t, ')');
    }
}
