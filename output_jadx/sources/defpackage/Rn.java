package defpackage;

/* loaded from: classes.dex */
public final class Rn extends Un {
    public final String a;
    public final int b;

    public Rn(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Rn)) {
            return false;
        }
        Rn rn = (Rn) obj;
        return AbstractC0348nb.g(this.a, rn.a) && this.b == rn.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Minimize(pkg=" + this.a + ", taskId=" + this.b + ')';
    }
}
