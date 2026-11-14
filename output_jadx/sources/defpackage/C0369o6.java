package defpackage;

/* renamed from: o6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0369o6 {
    public final String a;
    public final String b;
    public final String c;

    public C0369o6(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0369o6)) {
            return false;
        }
        C0369o6 c0369o6 = (C0369o6) obj;
        return AbstractC0348nb.g(this.a, c0369o6.a) && AbstractC0348nb.g(this.b, c0369o6.b) && AbstractC0348nb.g(this.c, c0369o6.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + AbstractC0407pi.e(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CoversModeStrings(withBg=");
        sb.append(this.a);
        sb.append(", noBg=");
        sb.append(this.b);
        sb.append(", black=");
        return AbstractC0407pi.k(sb, this.c, ')');
    }
}
