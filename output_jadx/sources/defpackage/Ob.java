package defpackage;

/* loaded from: classes.dex */
public final class Ob {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;

    public Ob(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
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
        if (!(obj instanceof Ob)) {
            return false;
        }
        Ob ob = (Ob) obj;
        return AbstractC0348nb.g(this.a, ob.a) && AbstractC0348nb.g(this.b, ob.b) && AbstractC0348nb.g(this.c, ob.c) && AbstractC0348nb.g(this.d, ob.d) && AbstractC0348nb.g(this.e, ob.e) && AbstractC0348nb.g(this.f, ob.f) && AbstractC0348nb.g(this.g, ob.g) && AbstractC0348nb.g(this.h, ob.h) && AbstractC0348nb.g(this.i, ob.i);
    }

    public final int hashCode() {
        return this.i.hashCode() + AbstractC0407pi.e(this.h, AbstractC0407pi.e(this.g, AbstractC0407pi.e(this.f, AbstractC0407pi.e(this.e, AbstractC0407pi.e(this.d, AbstractC0407pi.e(this.c, AbstractC0407pi.e(this.b, this.a.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LauncherUpdateStrings(title=");
        sb.append(this.a);
        sb.append(", latestVersion=");
        sb.append(this.b);
        sb.append(", currentVersion=");
        sb.append(this.c);
        sb.append(", checking=");
        sb.append(this.d);
        sb.append(", noUpdate=");
        sb.append(this.e);
        sb.append(", downloadFailed=");
        sb.append(this.f);
        sb.append(", installing=");
        sb.append(this.g);
        sb.append(", installSuccess=");
        sb.append(this.h);
        sb.append(", changes=");
        return AbstractC0407pi.k(sb, this.i, ')');
    }
}
