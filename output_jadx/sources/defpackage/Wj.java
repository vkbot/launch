package defpackage;

/* loaded from: classes.dex */
public final class Wj {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final int j;
    public final int k;
    public final int l;
    public final int m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;
    public final int r;

    public Wj(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = i6;
        this.g = i7;
        this.h = i8;
        this.i = i9;
        this.j = i10;
        this.k = i11;
        this.l = i12;
        this.m = i13;
        this.n = i14;
        this.o = i15;
        this.p = i16;
        this.q = i17;
        this.r = i18;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Wj)) {
            return false;
        }
        Wj wj = (Wj) obj;
        return this.a == wj.a && this.b == wj.b && this.c == wj.c && this.d == wj.d && this.e == wj.e && this.f == wj.f && this.g == wj.g && this.h == wj.h && this.i == wj.i && this.j == wj.j && this.k == wj.k && this.l == wj.l && this.m == wj.m && this.n == wj.n && this.o == wj.o && this.p == wj.p && this.q == wj.q && this.r == wj.r;
    }

    public final int hashCode() {
        return Integer.hashCode(this.r) + AbstractC0407pi.d(this.q, AbstractC0407pi.d(this.p, AbstractC0407pi.d(this.o, AbstractC0407pi.d(this.n, AbstractC0407pi.d(this.m, AbstractC0407pi.d(this.l, AbstractC0407pi.d(this.k, AbstractC0407pi.d(this.j, AbstractC0407pi.d(this.i, AbstractC0407pi.d(this.h, AbstractC0407pi.d(this.g, AbstractC0407pi.d(this.f, AbstractC0407pi.d(this.e, AbstractC0407pi.d(this.d, AbstractC0407pi.d(this.c, AbstractC0407pi.d(this.b, Integer.hashCode(this.a) * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        return "ThemeColor(icon=" + this.a + ", iconDim=" + this.b + ", iconAccent=" + this.c + ", secondaryText=" + this.d + ", toggleAccent=" + this.e + ", appLabel=" + this.f + ", textOnAccent=" + this.g + ", accent=" + this.h + ", accentDim=" + this.i + ", error=" + this.j + ", surface=" + this.k + ", surfaceAlt=" + this.l + ", divider=" + this.m + ", scrim=" + this.n + ", btnBorder=" + this.o + ", btnBackground=" + this.p + ", btnActiveLight=" + this.q + ", btnActiveDim=" + this.r + ')';
    }
}
