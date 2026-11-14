package defpackage;

/* renamed from: a9, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0010a9 {
    public int a;
    public C0394p5 d;
    public C0394p5 e;
    public C0394p5 f;
    public C0394p5 g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int q;
    public final /* synthetic */ C0036b9 r;
    public D5 b = null;
    public int c = 0;
    public int l = 0;
    public int m = 0;
    public int n = 0;
    public int o = 0;
    public int p = 0;

    public C0010a9(C0036b9 c0036b9, int i, C0394p5 c0394p5, C0394p5 c0394p52, C0394p5 c0394p53, C0394p5 c0394p54, int i2) {
        this.r = c0036b9;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.k = 0;
        this.q = 0;
        this.a = i;
        this.d = c0394p5;
        this.e = c0394p52;
        this.f = c0394p53;
        this.g = c0394p54;
        this.h = c0036b9.w0;
        this.i = c0036b9.s0;
        this.j = c0036b9.x0;
        this.k = c0036b9.t0;
        this.q = i2;
    }

    public final void a(D5 d5) {
        int i = this.a;
        C0036b9 c0036b9 = this.r;
        if (i == 0) {
            int U = c0036b9.U(d5, this.q);
            if (d5.p0[0] == 3) {
                this.p++;
                U = 0;
            }
            this.l = U + (d5.g0 != 8 ? c0036b9.P0 : 0) + this.l;
            int T = c0036b9.T(d5, this.q);
            if (this.b == null || this.c < T) {
                this.b = d5;
                this.c = T;
                this.m = T;
            }
        } else {
            int U2 = c0036b9.U(d5, this.q);
            int T2 = c0036b9.T(d5, this.q);
            if (d5.p0[1] == 3) {
                this.p++;
                T2 = 0;
            }
            this.m = T2 + (d5.g0 != 8 ? c0036b9.Q0 : 0) + this.m;
            if (this.b == null || this.c < U2) {
                this.b = d5;
                this.c = U2;
                this.l = U2;
            }
        }
        this.o++;
    }

    public final void b(int i, boolean z, boolean z2) {
        C0036b9 c0036b9;
        int i2;
        int i3;
        int i4;
        D5 d5;
        int i5;
        char c;
        int i6;
        float f;
        float f2;
        int i7;
        float f3;
        int i8;
        int i9 = this.o;
        int i10 = 0;
        while (true) {
            c0036b9 = this.r;
            if (i10 >= i9 || (i8 = this.n + i10) >= c0036b9.b1) {
                break;
            }
            D5 d52 = c0036b9.a1[i8];
            if (d52 != null) {
                d52.D();
            }
            i10++;
        }
        if (i9 == 0 || this.b == null) {
            return;
        }
        boolean z3 = z2 && i == 0;
        int i11 = -1;
        int i12 = -1;
        for (int i13 = 0; i13 < i9; i13++) {
            int i14 = this.n + (z ? (i9 - 1) - i13 : i13);
            if (i14 >= c0036b9.b1) {
                break;
            }
            D5 d53 = c0036b9.a1[i14];
            if (d53 != null && d53.g0 == 0) {
                if (i11 == -1) {
                    i11 = i13;
                }
                i12 = i13;
            }
        }
        if (this.a != 0) {
            D5 d54 = this.b;
            d54.i0 = c0036b9.D0;
            int i15 = this.h;
            if (i > 0) {
                i15 += c0036b9.P0;
            }
            C0394p5 c0394p5 = d54.I;
            C0394p5 c0394p52 = d54.K;
            if (z) {
                c0394p52.a(this.f, i15);
                if (z2) {
                    c0394p5.a(this.d, this.j);
                }
                if (i > 0) {
                    this.f.d.I.a(c0394p52, 0);
                }
            } else {
                c0394p5.a(this.d, i15);
                if (z2) {
                    c0394p52.a(this.f, this.j);
                }
                if (i > 0) {
                    this.d.d.K.a(c0394p5, 0);
                }
            }
            D5 d55 = null;
            for (int i16 = 0; i16 < i9; i16++) {
                int i17 = this.n + i16;
                if (i17 >= c0036b9.b1) {
                    return;
                }
                D5 d56 = c0036b9.a1[i17];
                if (d56 != null) {
                    C0394p5 c0394p53 = d56.J;
                    if (i16 == 0) {
                        d56.f(c0394p53, this.e, this.i);
                        int i18 = c0036b9.E0;
                        float f4 = c0036b9.K0;
                        if (this.n == 0) {
                            i4 = c0036b9.G0;
                            i2 = i18;
                            i3 = -1;
                            if (i4 != -1) {
                                f4 = c0036b9.M0;
                                d56.j0 = i4;
                                d56.e0 = f4;
                            }
                        } else {
                            i2 = i18;
                            i3 = -1;
                        }
                        if (!z2 || (i4 = c0036b9.I0) == i3) {
                            i4 = i2;
                        } else {
                            f4 = c0036b9.O0;
                        }
                        d56.j0 = i4;
                        d56.e0 = f4;
                    }
                    if (i16 == i9 - 1) {
                        d56.f(d56.L, this.g, this.k);
                    }
                    if (d55 != null) {
                        int i19 = c0036b9.Q0;
                        C0394p5 c0394p54 = d55.L;
                        c0394p53.a(c0394p54, i19);
                        if (i16 == i11) {
                            int i20 = this.i;
                            if (c0394p53.h()) {
                                c0394p53.h = i20;
                            }
                        }
                        c0394p54.a(c0394p53, 0);
                        if (i16 == i12 + 1) {
                            int i21 = this.k;
                            if (c0394p54.h()) {
                                c0394p54.h = i21;
                            }
                        }
                    }
                    if (d56 != d54) {
                        C0394p5 c0394p55 = d56.K;
                        C0394p5 c0394p56 = d56.I;
                        if (z) {
                            int i22 = c0036b9.R0;
                            if (i22 == 0) {
                                c0394p55.a(c0394p52, 0);
                            } else if (i22 == 1) {
                                c0394p56.a(c0394p5, 0);
                            } else if (i22 == 2) {
                                c0394p56.a(c0394p5, 0);
                                c0394p55.a(c0394p52, 0);
                            }
                        } else {
                            int i23 = c0036b9.R0;
                            if (i23 == 0) {
                                c0394p56.a(c0394p5, 0);
                            } else if (i23 == 1) {
                                c0394p55.a(c0394p52, 0);
                            } else if (i23 == 2) {
                                if (z3) {
                                    c0394p56.a(this.d, this.h);
                                    c0394p55.a(this.f, this.j);
                                } else {
                                    c0394p56.a(c0394p5, 0);
                                    c0394p55.a(c0394p52, 0);
                                }
                            }
                            d55 = d56;
                        }
                    }
                    d55 = d56;
                }
            }
            return;
        }
        D5 d57 = this.b;
        d57.j0 = c0036b9.E0;
        int i24 = this.i;
        if (i > 0) {
            i24 += c0036b9.Q0;
        }
        C0394p5 c0394p57 = this.e;
        C0394p5 c0394p58 = d57.J;
        c0394p58.a(c0394p57, i24);
        C0394p5 c0394p59 = d57.L;
        if (z2) {
            c0394p59.a(this.g, this.k);
        }
        if (i > 0) {
            this.e.d.L.a(c0394p58, 0);
        }
        if (c0036b9.S0 == 3 && !d57.E) {
            for (int i25 = 0; i25 < i9; i25++) {
                int i26 = this.n + (z ? (i9 - 1) - i25 : i25);
                if (i26 >= c0036b9.b1) {
                    break;
                }
                d5 = c0036b9.a1[i26];
                if (d5.E) {
                    break;
                }
            }
        }
        d5 = d57;
        int i27 = 0;
        D5 d58 = null;
        while (i27 < i9) {
            int i28 = z ? (i9 - 1) - i27 : i27;
            int i29 = this.n + i28;
            if (i29 >= c0036b9.b1) {
                return;
            }
            D5 d59 = c0036b9.a1[i29];
            if (d59 == null) {
                i5 = i9;
                c = 3;
            } else {
                C0394p5 c0394p510 = d59.I;
                if (i27 == 0) {
                    d59.f(c0394p510, this.d, this.h);
                }
                if (i28 == 0) {
                    int i30 = c0036b9.D0;
                    if (z) {
                        i6 = i30;
                        f = 1.0f - c0036b9.J0;
                    } else {
                        i6 = i30;
                        f = c0036b9.J0;
                    }
                    if (this.n == 0) {
                        int i31 = c0036b9.F0;
                        f2 = f;
                        if (i31 != -1) {
                            f3 = z ? 1.0f - c0036b9.L0 : c0036b9.L0;
                            i7 = i31;
                            d59.i0 = i7;
                            d59.d0 = f3;
                        }
                    } else {
                        f2 = f;
                    }
                    if (!z2 || (i7 = c0036b9.H0) == -1) {
                        i7 = i6;
                        f3 = f2;
                    } else {
                        f3 = z ? 1.0f - c0036b9.N0 : c0036b9.N0;
                    }
                    d59.i0 = i7;
                    d59.d0 = f3;
                }
                if (i27 == i9 - 1) {
                    i5 = i9;
                    d59.f(d59.K, this.f, this.j);
                } else {
                    i5 = i9;
                }
                if (d58 != null) {
                    int i32 = c0036b9.P0;
                    C0394p5 c0394p511 = d58.K;
                    c0394p510.a(c0394p511, i32);
                    if (i27 == i11) {
                        int i33 = this.h;
                        if (c0394p510.h()) {
                            c0394p510.h = i33;
                        }
                    }
                    c0394p511.a(c0394p510, 0);
                    if (i27 == i12 + 1) {
                        int i34 = this.j;
                        if (c0394p511.h()) {
                            c0394p511.h = i34;
                        }
                    }
                }
                if (d59 != d57) {
                    int i35 = c0036b9.S0;
                    c = 3;
                    if (i35 == 3 && d5.E && d59 != d5 && d59.E) {
                        d59.M.a(d5.M, 0);
                    } else {
                        C0394p5 c0394p512 = d59.J;
                        if (i35 != 0) {
                            C0394p5 c0394p513 = d59.L;
                            if (i35 == 1) {
                                c0394p513.a(c0394p59, 0);
                            } else if (z3) {
                                c0394p512.a(this.e, this.i);
                                c0394p513.a(this.g, this.k);
                            } else {
                                c0394p512.a(c0394p58, 0);
                                c0394p513.a(c0394p59, 0);
                            }
                        } else {
                            c0394p512.a(c0394p58, 0);
                        }
                    }
                } else {
                    c = 3;
                }
                d58 = d59;
            }
            i27++;
            i9 = i5;
        }
    }

    public final int c() {
        return this.a == 1 ? this.m - this.r.Q0 : this.m;
    }

    public final int d() {
        return this.a == 0 ? this.l - this.r.P0 : this.l;
    }

    public final void e(int i) {
        C0036b9 c0036b9;
        int i2;
        int i3 = this.p;
        if (i3 == 0) {
            return;
        }
        int i4 = this.o;
        int i5 = i / i3;
        int i6 = 0;
        while (true) {
            c0036b9 = this.r;
            if (i6 >= i4 || (i2 = this.n + i6) >= c0036b9.b1) {
                break;
            }
            D5 d5 = c0036b9.a1[i2];
            if (this.a == 0) {
                if (d5 != null) {
                    int[] iArr = d5.p0;
                    if (iArr[0] == 3 && d5.r == 0) {
                        c0036b9.V(1, i5, iArr[1], d5.k(), d5);
                    }
                }
            } else if (d5 != null) {
                int[] iArr2 = d5.p0;
                if (iArr2[1] == 3 && d5.s == 0) {
                    c0036b9.V(iArr2[0], d5.q(), 1, i5, d5);
                }
            }
            i6++;
        }
        this.l = 0;
        this.m = 0;
        this.b = null;
        this.c = 0;
        int i7 = this.o;
        for (int i8 = 0; i8 < i7; i8++) {
            int i9 = this.n + i8;
            if (i9 >= c0036b9.b1) {
                return;
            }
            D5 d52 = c0036b9.a1[i9];
            if (this.a == 0) {
                int q = d52.q();
                int i10 = c0036b9.P0;
                if (d52.g0 == 8) {
                    i10 = 0;
                }
                this.l = q + i10 + this.l;
                int T = c0036b9.T(d52, this.q);
                if (this.b == null || this.c < T) {
                    this.b = d52;
                    this.c = T;
                    this.m = T;
                }
            } else {
                int U = c0036b9.U(d52, this.q);
                int T2 = c0036b9.T(d52, this.q);
                int i11 = c0036b9.Q0;
                if (d52.g0 == 8) {
                    i11 = 0;
                }
                this.m = T2 + i11 + this.m;
                if (this.b == null || this.c < U) {
                    this.b = d52;
                    this.c = U;
                    this.l = U;
                }
            }
        }
    }

    public final void f(int i, C0394p5 c0394p5, C0394p5 c0394p52, C0394p5 c0394p53, C0394p5 c0394p54, int i2, int i3, int i4, int i5, int i6) {
        this.a = i;
        this.d = c0394p5;
        this.e = c0394p52;
        this.f = c0394p53;
        this.g = c0394p54;
        this.h = i2;
        this.i = i3;
        this.j = i4;
        this.k = i5;
        this.q = i6;
    }
}
