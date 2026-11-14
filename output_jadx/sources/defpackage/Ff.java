package defpackage;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class Ff extends X2 {
    public C0433qi[] f;
    public C0433qi[] g;
    public int h;
    public K1 i;

    @Override // defpackage.X2
    public final C0433qi d(boolean[] zArr) {
        int i = -1;
        for (int i2 = 0; i2 < this.h; i2++) {
            C0433qi[] c0433qiArr = this.f;
            C0433qi c0433qi = c0433qiArr[i2];
            if (!zArr[c0433qi.b]) {
                K1 k1 = this.i;
                k1.b = c0433qi;
                int i3 = 8;
                if (i == -1) {
                    while (i3 >= 0) {
                        float f = ((C0433qi) k1.b).h[i3];
                        if (f <= 0.0f) {
                            if (f < 0.0f) {
                                i = i2;
                                break;
                            }
                            i3--;
                        }
                    }
                } else {
                    C0433qi c0433qi2 = c0433qiArr[i];
                    while (true) {
                        if (i3 >= 0) {
                            float f2 = c0433qi2.h[i3];
                            float f3 = ((C0433qi) k1.b).h[i3];
                            if (f3 == f2) {
                                i3--;
                            } else if (f3 >= f2) {
                            }
                        }
                    }
                }
            }
        }
        if (i == -1) {
            return null;
        }
        return this.f[i];
    }

    @Override // defpackage.X2
    public final boolean e() {
        return this.h == 0;
    }

    @Override // defpackage.X2
    public final void i(C0349nc c0349nc, X2 x2, boolean z) {
        C0433qi c0433qi = x2.a;
        if (c0433qi == null) {
            return;
        }
        U2 u2 = x2.d;
        int d = u2.d();
        for (int i = 0; i < d; i++) {
            C0433qi e = u2.e(i);
            float f = u2.f(i);
            K1 k1 = this.i;
            k1.b = e;
            boolean z2 = e.a;
            float[] fArr = c0433qi.h;
            if (z2) {
                boolean z3 = true;
                for (int i2 = 0; i2 < 9; i2++) {
                    float[] fArr2 = ((C0433qi) k1.b).h;
                    float f2 = (fArr[i2] * f) + fArr2[i2];
                    fArr2[i2] = f2;
                    if (Math.abs(f2) < 1.0E-4f) {
                        ((C0433qi) k1.b).h[i2] = 0.0f;
                    } else {
                        z3 = false;
                    }
                }
                if (z3) {
                    ((Ff) k1.c).k((C0433qi) k1.b);
                }
            } else {
                for (int i3 = 0; i3 < 9; i3++) {
                    float f3 = fArr[i3];
                    if (f3 != 0.0f) {
                        float f4 = f3 * f;
                        if (Math.abs(f4) < 1.0E-4f) {
                            f4 = 0.0f;
                        }
                        ((C0433qi) k1.b).h[i3] = f4;
                    } else {
                        ((C0433qi) k1.b).h[i3] = 0.0f;
                    }
                }
                j(e);
            }
            this.b = (x2.b * f) + this.b;
        }
        k(c0433qi);
    }

    public final void j(C0433qi c0433qi) {
        int i;
        int i2 = this.h + 1;
        C0433qi[] c0433qiArr = this.f;
        if (i2 > c0433qiArr.length) {
            C0433qi[] c0433qiArr2 = (C0433qi[]) Arrays.copyOf(c0433qiArr, c0433qiArr.length * 2);
            this.f = c0433qiArr2;
            this.g = (C0433qi[]) Arrays.copyOf(c0433qiArr2, c0433qiArr2.length * 2);
        }
        C0433qi[] c0433qiArr3 = this.f;
        int i3 = this.h;
        c0433qiArr3[i3] = c0433qi;
        int i4 = i3 + 1;
        this.h = i4;
        if (i4 > 1 && c0433qiArr3[i3].b > c0433qi.b) {
            int i5 = 0;
            while (true) {
                i = this.h;
                if (i5 >= i) {
                    break;
                }
                this.g[i5] = this.f[i5];
                i5++;
            }
            Arrays.sort(this.g, 0, i, new G0(5));
            for (int i6 = 0; i6 < this.h; i6++) {
                this.f[i6] = this.g[i6];
            }
        }
        c0433qi.a = true;
        c0433qi.a(this);
    }

    public final void k(C0433qi c0433qi) {
        int i = 0;
        while (i < this.h) {
            if (this.f[i] == c0433qi) {
                while (true) {
                    int i2 = this.h;
                    if (i >= i2 - 1) {
                        this.h = i2 - 1;
                        c0433qi.a = false;
                        return;
                    } else {
                        C0433qi[] c0433qiArr = this.f;
                        int i3 = i + 1;
                        c0433qiArr[i] = c0433qiArr[i3];
                        i = i3;
                    }
                }
            } else {
                i++;
            }
        }
    }

    @Override // defpackage.X2
    public final String toString() {
        String str = " goal -> (" + this.b + ") : ";
        for (int i = 0; i < this.h; i++) {
            C0433qi c0433qi = this.f[i];
            K1 k1 = this.i;
            k1.b = c0433qi;
            str = str + k1 + " ";
        }
        return str;
    }
}
