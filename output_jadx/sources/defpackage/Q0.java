package defpackage;

/* loaded from: classes.dex */
public final class Q0 {
    public final boolean a;
    public final String b;
    public final String c;

    public Q0(boolean z, String str, String str2) {
        this.a = z;
        this.b = str;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Q0)) {
            return false;
        }
        Q0 q0 = (Q0) obj;
        return this.a == q0.a && AbstractC0348nb.g(this.b, q0.b) && AbstractC0348nb.g(this.c, q0.c);
    }

    public final int hashCode() {
        int e = AbstractC0407pi.e(this.b, Boolean.hashCode(this.a) * 31, 31);
        String str = this.c;
        return e + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ActivateResult(activated=");
        sb.append(this.a);
        sb.append(", status=");
        sb.append(this.b);
        sb.append(", licenseKey=");
        return AbstractC0407pi.k(sb, this.c, ')');
    }
}
