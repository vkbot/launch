package defpackage;

/* renamed from: x0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0589x0 {
    public int a;
    public int b;
    public Object c;
    public int d;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0589x0)) {
            return false;
        }
        C0589x0 c0589x0 = (C0589x0) obj;
        int i = this.a;
        if (i != c0589x0.a) {
            return false;
        }
        if (i == 8 && Math.abs(this.d - this.b) == 1 && this.d == c0589x0.b && this.b == c0589x0.d) {
            return true;
        }
        if (this.d != c0589x0.d || this.b != c0589x0.b) {
            return false;
        }
        Object obj2 = this.c;
        if (obj2 != null) {
            if (!obj2.equals(c0589x0.c)) {
                return false;
            }
        } else if (c0589x0.c != null) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (((this.a * 31) + this.b) * 31) + this.d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[");
        int i = this.a;
        sb.append(i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add");
        sb.append(",s:");
        sb.append(this.b);
        sb.append("c:");
        sb.append(this.d);
        sb.append(",p:");
        sb.append(this.c);
        sb.append("]");
        return sb.toString();
    }
}
