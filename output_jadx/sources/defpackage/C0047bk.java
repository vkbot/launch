package defpackage;

/* renamed from: bk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0047bk {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;

    public C0047bk(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = i6;
        this.g = i7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0047bk)) {
            return false;
        }
        C0047bk c0047bk = (C0047bk) obj;
        return this.a == c0047bk.a && this.b == c0047bk.b && this.c == c0047bk.c && this.d == c0047bk.d && this.e == c0047bk.e && this.f == c0047bk.f && this.g == c0047bk.g;
    }

    public final int hashCode() {
        return Integer.hashCode(this.g) + AbstractC0407pi.d(this.f, AbstractC0407pi.d(this.e, AbstractC0407pi.d(this.d, AbstractC0407pi.d(this.c, AbstractC0407pi.d(this.b, Integer.hashCode(this.a) * 31, 31), 31), 31), 31), 31);
    }

    public final String toString() {
        return "ThemeSize(titleLarge=" + this.a + ", titleMedium=" + this.b + ", title=" + this.c + ", body=" + this.d + ", bodySmall=" + this.e + ", caption=" + this.f + ", clock=" + this.g + ')';
    }
}
