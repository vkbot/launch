package defpackage;

/* renamed from: rm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0461rm {
    public final String a;
    public final String b;
    public final String c;

    public C0461rm(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0461rm)) {
            return false;
        }
        C0461rm c0461rm = (C0461rm) obj;
        return AbstractC0348nb.g(this.a, c0461rm.a) && AbstractC0348nb.g(this.b, c0461rm.b) && AbstractC0348nb.g(this.c, c0461rm.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + AbstractC0407pi.e(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UninstallStrings(confirmTitle=");
        sb.append(this.a);
        sb.append(", uninstalled=");
        sb.append(this.b);
        sb.append(", replaceConfirm=");
        return AbstractC0407pi.k(sb, this.c, ')');
    }
}
