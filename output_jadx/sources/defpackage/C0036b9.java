package defpackage;

import java.util.ArrayList;

/* renamed from: b9, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0036b9 extends Ga {
    public int A0;
    public C0392p3 B0;
    public C0519u5 C0;
    public int D0;
    public int E0;
    public int F0;
    public int G0;
    public int H0;
    public int I0;
    public float J0;
    public float K0;
    public float L0;
    public float M0;
    public float N0;
    public float O0;
    public int P0;
    public int Q0;
    public int R0;
    public int S0;
    public int T0;
    public int U0;
    public int V0;
    public ArrayList W0;
    public D5[] X0;
    public D5[] Y0;
    public int[] Z0;
    public D5[] a1;
    public int b1;
    public int s0;
    public int t0;
    public int u0;
    public int v0;
    public int w0;
    public int x0;
    public boolean y0;
    public int z0;

    @Override // defpackage.Ga
    public final void S() {
        for (int i = 0; i < this.r0; i++) {
            D5 d5 = this.q0[i];
            if (d5 != null) {
                d5.F = true;
            }
        }
    }

    public final int T(D5 d5, int i) {
        if (d5 == null) {
            return 0;
        }
        int[] iArr = d5.p0;
        if (iArr[1] == 3) {
            int i2 = d5.s;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (d5.z * i);
                if (i3 != d5.k()) {
                    d5.g = true;
                    V(iArr[0], d5.q(), 1, i3, d5);
                }
                return i3;
            }
            if (i2 == 1) {
                return d5.k();
            }
            if (i2 == 3) {
                return (int) ((d5.q() * d5.W) + 0.5f);
            }
        }
        return d5.k();
    }

    public final int U(D5 d5, int i) {
        if (d5 == null) {
            return 0;
        }
        int[] iArr = d5.p0;
        if (iArr[0] == 3) {
            int i2 = d5.r;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (d5.w * i);
                if (i3 != d5.q()) {
                    d5.g = true;
                    V(1, i3, iArr[1], d5.k(), d5);
                }
                return i3;
            }
            if (i2 == 1) {
                return d5.q();
            }
            if (i2 == 3) {
                return (int) ((d5.k() * d5.W) + 0.5f);
            }
        }
        return d5.q();
    }

    public final void V(int i, int i2, int i3, int i4, D5 d5) {
        C0519u5 c0519u5;
        D5 d52;
        while (true) {
            c0519u5 = this.C0;
            if (c0519u5 != null || (d52 = this.T) == null) {
                break;
            } else {
                this.C0 = ((E5) d52).u0;
            }
        }
        C0392p3 c0392p3 = this.B0;
        c0392p3.a = i;
        c0392p3.b = i3;
        c0392p3.c = i2;
        c0392p3.d = i4;
        c0519u5.b(d5, c0392p3);
        d5.O(c0392p3.e);
        d5.L(c0392p3.f);
        d5.E = c0392p3.h;
        d5.I(c0392p3.g);
    }

    @Override // defpackage.D5
    public final void b(C0349nc c0349nc, boolean z) {
        D5 d5;
        float f;
        int i;
        super.b(c0349nc, z);
        D5 d52 = this.T;
        boolean z2 = d52 != null && ((E5) d52).v0;
        int i2 = this.T0;
        ArrayList arrayList = this.W0;
        if (i2 != 0) {
            if (i2 == 1) {
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    ((C0010a9) arrayList.get(i3)).b(i3, z2, i3 == size + (-1));
                    i3++;
                }
            } else if (i2 != 2) {
                if (i2 == 3) {
                    int size2 = arrayList.size();
                    int i4 = 0;
                    while (i4 < size2) {
                        ((C0010a9) arrayList.get(i4)).b(i4, z2, i4 == size2 + (-1));
                        i4++;
                    }
                }
            } else if (this.Z0 != null && this.Y0 != null && this.X0 != null) {
                for (int i5 = 0; i5 < this.b1; i5++) {
                    this.a1[i5].D();
                }
                int[] iArr = this.Z0;
                int i6 = iArr[0];
                int i7 = iArr[1];
                float f2 = this.J0;
                D5 d53 = null;
                int i8 = 0;
                while (i8 < i6) {
                    if (z2) {
                        i = (i6 - i8) - 1;
                        f = 1.0f - this.J0;
                    } else {
                        f = f2;
                        i = i8;
                    }
                    D5 d54 = this.Y0[i];
                    if (d54 != null && d54.g0 != 8) {
                        C0394p5 c0394p5 = d54.I;
                        if (i8 == 0) {
                            d54.f(c0394p5, this.I, this.w0);
                            d54.i0 = this.D0;
                            d54.d0 = f;
                        }
                        if (i8 == i6 - 1) {
                            d54.f(d54.K, this.K, this.x0);
                        }
                        if (i8 > 0 && d53 != null) {
                            int i9 = this.P0;
                            C0394p5 c0394p52 = d53.K;
                            d54.f(c0394p5, c0394p52, i9);
                            d53.f(c0394p52, c0394p5, 0);
                        }
                        d53 = d54;
                    }
                    i8++;
                    f2 = f;
                }
                for (int i10 = 0; i10 < i7; i10++) {
                    D5 d55 = this.X0[i10];
                    if (d55 != null && d55.g0 != 8) {
                        C0394p5 c0394p53 = d55.J;
                        if (i10 == 0) {
                            d55.f(c0394p53, this.J, this.s0);
                            d55.j0 = this.E0;
                            d55.e0 = this.K0;
                        }
                        if (i10 == i7 - 1) {
                            d55.f(d55.L, this.L, this.t0);
                        }
                        if (i10 > 0 && d53 != null) {
                            int i11 = this.Q0;
                            C0394p5 c0394p54 = d53.L;
                            d55.f(c0394p53, c0394p54, i11);
                            d53.f(c0394p54, c0394p53, 0);
                        }
                        d53 = d55;
                    }
                }
                for (int i12 = 0; i12 < i6; i12++) {
                    for (int i13 = 0; i13 < i7; i13++) {
                        int i14 = (i13 * i6) + i12;
                        if (this.V0 == 1) {
                            i14 = (i12 * i7) + i13;
                        }
                        D5[] d5Arr = this.a1;
                        if (i14 < d5Arr.length && (d5 = d5Arr[i14]) != null && d5.g0 != 8) {
                            D5 d56 = this.Y0[i12];
                            D5 d57 = this.X0[i13];
                            if (d5 != d56) {
                                d5.f(d5.I, d56.I, 0);
                                d5.f(d5.K, d56.K, 0);
                            }
                            if (d5 != d57) {
                                d5.f(d5.J, d57.J, 0);
                                d5.f(d5.L, d57.L, 0);
                            }
                        }
                    }
                }
            }
        } else if (arrayList.size() > 0) {
            ((C0010a9) arrayList.get(0)).b(0, z2, true);
        }
        this.y0 = false;
    }
}
