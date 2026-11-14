package defpackage;

/* loaded from: classes.dex */
public final class Df {
    public final String a;
    public final String b;
    public final String c;

    public Df(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Df)) {
            return false;
        }
        Df df = (Df) obj;
        return AbstractC0348nb.g(this.a, df.a) && AbstractC0348nb.g(this.b, df.b) && AbstractC0348nb.g(this.c, df.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + AbstractC0407pi.e(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PresetSizeStrings(small=");
        sb.append(this.a);
        sb.append(", medium=");
        sb.append(this.b);
        sb.append(", large=");
        return AbstractC0407pi.k(sb, this.c, ')');
    }
}
