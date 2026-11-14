package defpackage;

/* loaded from: classes.dex */
public final class R2 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;

    public R2(String str, String str2, String str3, String str4, String str5) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
    }

    public final String a() {
        return this.b;
    }

    public final String b() {
        return this.c;
    }

    public final String c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof R2)) {
            return false;
        }
        R2 r2 = (R2) obj;
        return AbstractC0348nb.g(this.a, r2.a) && AbstractC0348nb.g(this.b, r2.b) && AbstractC0348nb.g(this.c, r2.c) && AbstractC0348nb.g(this.d, r2.d) && AbstractC0348nb.g(this.e, r2.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + AbstractC0407pi.e(this.d, AbstractC0407pi.e(this.c, AbstractC0407pi.e(this.b, this.a.hashCode() * 31, 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AppStorageStrings(onDisk=");
        sb.append(this.a);
        sb.append(", cache=");
        sb.append(this.b);
        sb.append(", data=");
        sb.append(this.c);
        sb.append(", clear=");
        sb.append(this.d);
        sb.append(", clearDataConfirm=");
        return AbstractC0407pi.k(sb, this.e, ')');
    }
}
