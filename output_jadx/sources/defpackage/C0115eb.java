package defpackage;

/* renamed from: eb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0115eb {
    public final int a;
    public final String b;
    public final String c;

    public C0115eb(int i, String str, String str2) {
        this.a = i;
        this.b = str;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0115eb)) {
            return false;
        }
        C0115eb c0115eb = (C0115eb) obj;
        return this.a == c0115eb.a && AbstractC0348nb.g(this.b, c0115eb.b) && AbstractC0348nb.g(this.c, c0115eb.c);
    }

    public final int hashCode() {
        int e = AbstractC0407pi.e(this.b, Integer.hashCode(this.a) * 31, 31);
        String str = this.c;
        return e + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Entry(storeId=");
        sb.append(this.a);
        sb.append(", version=");
        sb.append(this.b);
        sb.append(", modVersion=");
        return AbstractC0407pi.k(sb, this.c, ')');
    }
}
