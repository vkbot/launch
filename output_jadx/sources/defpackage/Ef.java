package defpackage;

/* loaded from: classes.dex */
public final class Ef {
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

    public Ef(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
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
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Ef)) {
            return false;
        }
        Ef ef = (Ef) obj;
        return this.a == ef.a && this.b == ef.b && this.c == ef.c && this.d == ef.d && this.e == ef.e && this.f == ef.f && this.g == ef.g && this.h == ef.h && this.i == ef.i && this.j == ef.j;
    }

    public final int hashCode() {
        return Integer.hashCode(this.j) + AbstractC0407pi.d(this.i, AbstractC0407pi.d(this.h, AbstractC0407pi.d(this.g, AbstractC0407pi.d(this.f, AbstractC0407pi.d(this.e, AbstractC0407pi.d(this.d, AbstractC0407pi.d(this.c, AbstractC0407pi.d(this.b, Integer.hashCode(this.a) * 31, 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        return "PresetSizes(itemSize=" + this.a + ", iconSize=" + this.b + ", containerSize=" + this.c + ", cardIconSize=" + this.d + ", marginV=" + this.e + ", sidebarWidth=" + this.f + ", maxFit=" + this.g + ", editBtnSize=" + this.h + ", editBtnPad=" + this.i + ", editBtnOffset=" + this.j + ')';
    }
}
