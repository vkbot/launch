package defpackage;

/* loaded from: classes.dex */
public final class Sn extends Un {
    public final String a;
    public final int b;

    public Sn(String str, int i) {
        AbstractC0348nb.r(str, "pkg");
        this.a = str;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Sn)) {
            return false;
        }
        Sn sn = (Sn) obj;
        return AbstractC0348nb.g(this.a, sn.a) && this.b == sn.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Raise(pkg=" + this.a + ", taskId=" + this.b + ')';
    }
}
