package defpackage;

/* loaded from: classes.dex */
public final class Zj {
    public final String a;
    public final String b;

    public Zj(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Zj)) {
            return false;
        }
        Zj zj = (Zj) obj;
        return AbstractC0348nb.g(this.a, zj.a) && AbstractC0348nb.g(this.b, zj.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ThemeIndicator(normalName=");
        sb.append(this.a);
        sb.append(", selectedName=");
        return AbstractC0407pi.k(sb, this.b, ')');
    }
}
