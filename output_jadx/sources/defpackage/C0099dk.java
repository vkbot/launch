package defpackage;

/* renamed from: dk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0099dk {
    public final String a;
    public final String b;

    public C0099dk(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0099dk)) {
            return false;
        }
        C0099dk c0099dk = (C0099dk) obj;
        return AbstractC0348nb.g(this.a, c0099dk.a) && AbstractC0348nb.g(this.b, c0099dk.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ThemeToggle(trackName=");
        sb.append(this.a);
        sb.append(", thumbName=");
        return AbstractC0407pi.k(sb, this.b, ')');
    }
}
