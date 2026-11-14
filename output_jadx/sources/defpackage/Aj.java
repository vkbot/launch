package defpackage;

/* loaded from: classes.dex */
public final class Aj {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;

    public Aj(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
        this.h = str8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Aj)) {
            return false;
        }
        Aj aj = (Aj) obj;
        return AbstractC0348nb.g(this.a, aj.a) && AbstractC0348nb.g(this.b, aj.b) && AbstractC0348nb.g(this.c, aj.c) && AbstractC0348nb.g(this.d, aj.d) && AbstractC0348nb.g(this.e, aj.e) && AbstractC0348nb.g(this.f, aj.f) && AbstractC0348nb.g(this.g, aj.g) && AbstractC0348nb.g(this.h, aj.h);
    }

    public final int hashCode() {
        return this.h.hashCode() + AbstractC0407pi.e(this.g, AbstractC0407pi.e(this.f, AbstractC0407pi.e(this.e, AbstractC0407pi.e(this.d, AbstractC0407pi.e(this.c, AbstractC0407pi.e(this.b, this.a.hashCode() * 31, 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TaskManagerStrings(title=");
        sb.append(this.a);
        sb.append(", empty=");
        sb.append(this.b);
        sb.append(", swipeHint=");
        sb.append(this.c);
        sb.append(", memory=");
        sb.append(this.d);
        sb.append(", mb=");
        sb.append(this.e);
        sb.append(", gb=");
        sb.append(this.f);
        sb.append(", notInMemory=");
        sb.append(this.g);
        sb.append(", preset=");
        return AbstractC0407pi.k(sb, this.h, ')');
    }
}
