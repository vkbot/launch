package defpackage;

/* loaded from: classes.dex */
public final class Xj {
    public final String a;
    public final String b;

    public Xj(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Xj)) {
            return false;
        }
        Xj xj = (Xj) obj;
        return AbstractC0348nb.g(this.a, xj.a) && AbstractC0348nb.g(this.b, xj.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ThemeCover(bgName=");
        sb.append(this.a);
        sb.append(", plainName=");
        return AbstractC0407pi.k(sb, this.b, ')');
    }
}
