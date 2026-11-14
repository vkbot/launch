package defpackage;

/* renamed from: qm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0437qm {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;

    public C0437qm(String str, String str2, String str3, String str4, String str5) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0437qm)) {
            return false;
        }
        C0437qm c0437qm = (C0437qm) obj;
        return AbstractC0348nb.g(this.a, c0437qm.a) && AbstractC0348nb.g(this.b, c0437qm.b) && AbstractC0348nb.g(this.c, c0437qm.c) && AbstractC0348nb.g(this.d, c0437qm.d) && AbstractC0348nb.g(this.e, c0437qm.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + AbstractC0407pi.e(this.d, AbstractC0407pi.e(this.c, AbstractC0407pi.e(this.b, this.a.hashCode() * 31, 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UnifiedModeStrings(off=");
        sb.append(this.a);
        sb.append(", on=");
        sb.append(this.b);
        sb.append(", androidAuto=");
        sb.append(this.c);
        sb.append(", carPlay=");
        sb.append(this.d);
        sb.append(", both=");
        return AbstractC0407pi.k(sb, this.e, ')');
    }
}
