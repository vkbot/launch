package defpackage;

/* renamed from: le, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0299le {
    public final String a;
    public final String b;

    public C0299le(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0299le)) {
            return false;
        }
        C0299le c0299le = (C0299le) obj;
        return AbstractC0348nb.g(this.a, c0299le.a) && AbstractC0348nb.g(this.b, c0299le.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ModeSelectorStrings(fullscreen=");
        sb.append(this.a);
        sb.append(", split=");
        return AbstractC0407pi.k(sb, this.b, ')');
    }
}
