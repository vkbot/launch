package defpackage;

/* renamed from: i3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0211i3 extends Ga {
    public int s0;
    public boolean t0;
    public int u0;
    public boolean v0;

    @Override // defpackage.D5
    public final boolean A() {
        return this.v0;
    }

    @Override // defpackage.D5
    public final boolean B() {
        return this.v0;
    }

    public final boolean T() {
        int i;
        int i2;
        int i3;
        boolean z = true;
        int i4 = 0;
        while (true) {
            i = this.r0;
            if (i4 >= i) {
                break;
            }
            D5 d5 = this.q0[i4];
            if ((this.t0 || d5.c()) && ((((i2 = this.s0) == 0 || i2 == 1) && !d5.A()) || (((i3 = this.s0) == 2 || i3 == 3) && !d5.B()))) {
                z = false;
            }
            i4++;
        }
        if (!z || i <= 0) {
            return false;
        }
        int i5 = 0;
        boolean z2 = false;
        for (int i6 = 0; i6 < this.r0; i6++) {
            D5 d52 = this.q0[i6];
            if (this.t0 || d52.c()) {
                if (!z2) {
                    int i7 = this.s0;
                    if (i7 == 0) {
                        i5 = d52.i(2).d();
                    } else if (i7 == 1) {
                        i5 = d52.i(4).d();
                    } else if (i7 == 2) {
                        i5 = d52.i(3).d();
                    } else if (i7 == 3) {
                        i5 = d52.i(5).d();
                    }
                    z2 = true;
                }
                int i8 = this.s0;
                if (i8 == 0) {
                    i5 = Math.min(i5, d52.i(2).d());
                } else if (i8 == 1) {
                    i5 = Math.max(i5, d52.i(4).d());
                } else if (i8 == 2) {
                    i5 = Math.min(i5, d52.i(3).d());
                } else if (i8 == 3) {
                    i5 = Math.max(i5, d52.i(5).d());
                }
            }
        }
        int i9 = i5 + this.u0;
        int i10 = this.s0;
        if (i10 == 0 || i10 == 1) {
            J(i9, i9);
        } else {
            K(i9, i9);
        }
        this.v0 = true;
        return true;
    }

    public final int U() {
        int i = this.s0;
        if (i == 0 || i == 1) {
            return 0;
        }
        return (i == 2 || i == 3) ? 1 : -1;
    }

    @Override // defpackage.D5
    public final void b(C0349nc c0349nc, boolean z) {
        boolean z2;
        int i;
        int i2;
        C0394p5[] c0394p5Arr = this.Q;
        C0394p5 c0394p5 = this.I;
        c0394p5Arr[0] = c0394p5;
        C0394p5 c0394p52 = this.J;
        int i3 = 2;
        c0394p5Arr[2] = c0394p52;
        C0394p5 c0394p53 = this.K;
        c0394p5Arr[1] = c0394p53;
        C0394p5 c0394p54 = this.L;
        c0394p5Arr[3] = c0394p54;
        for (C0394p5 c0394p55 : c0394p5Arr) {
            c0394p55.i = c0349nc.k(c0394p55);
        }
        int i4 = this.s0;
        if (i4 < 0 || i4 >= 4) {
            return;
        }
        C0394p5 c0394p56 = c0394p5Arr[i4];
        if (!this.v0) {
            T();
        }
        if (this.v0) {
            this.v0 = false;
            int i5 = this.s0;
            if (i5 == 0 || i5 == 1) {
                c0349nc.d(c0394p5.i, this.Y);
                c0349nc.d(c0394p53.i, this.Y);
                return;
            } else {
                if (i5 == 2 || i5 == 3) {
                    c0349nc.d(c0394p52.i, this.Z);
                    c0349nc.d(c0394p54.i, this.Z);
                    return;
                }
                return;
            }
        }
        for (int i6 = 0; i6 < this.r0; i6++) {
            D5 d5 = this.q0[i6];
            if ((this.t0 || d5.c()) && ((((i2 = this.s0) == 0 || i2 == 1) && d5.p0[0] == 3 && d5.I.f != null && d5.K.f != null) || ((i2 == 2 || i2 == 3) && d5.p0[1] == 3 && d5.J.f != null && d5.L.f != null))) {
                z2 = true;
                break;
            }
        }
        z2 = false;
        boolean z3 = c0394p5.g() || c0394p53.g();
        boolean z4 = c0394p52.g() || c0394p54.g();
        int i7 = (z2 || !(((i = this.s0) == 0 && z3) || ((i == 2 && z4) || ((i == 1 && z3) || (i == 3 && z4))))) ? 4 : 5;
        int i8 = 0;
        while (i8 < this.r0) {
            D5 d52 = this.q0[i8];
            if (this.t0 || d52.c()) {
                C0433qi k = c0349nc.k(d52.Q[this.s0]);
                int i9 = this.s0;
                C0394p5 c0394p57 = d52.Q[i9];
                c0394p57.i = k;
                C0394p5 c0394p58 = c0394p57.f;
                int i10 = (c0394p58 == null || c0394p58.d != this) ? 0 : c0394p57.g;
                if (i9 == 0 || i9 == i3) {
                    C0433qi c0433qi = c0394p56.i;
                    int i11 = this.u0 - i10;
                    X2 l = c0349nc.l();
                    C0433qi m = c0349nc.m();
                    m.d = 0;
                    l.c(c0433qi, k, m, i11);
                    c0349nc.c(l);
                } else {
                    C0433qi c0433qi2 = c0394p56.i;
                    int i12 = this.u0 + i10;
                    X2 l2 = c0349nc.l();
                    C0433qi m2 = c0349nc.m();
                    m2.d = 0;
                    l2.b(c0433qi2, k, m2, i12);
                    c0349nc.c(l2);
                }
                c0349nc.e(c0394p56.i, k, this.u0 + i10, i7);
            }
            i8++;
            i3 = 2;
        }
        int i13 = this.s0;
        if (i13 == 0) {
            c0349nc.e(c0394p53.i, c0394p5.i, 0, 8);
            c0349nc.e(c0394p5.i, this.T.K.i, 0, 4);
            c0349nc.e(c0394p5.i, this.T.I.i, 0, 0);
            return;
        }
        if (i13 == 1) {
            c0349nc.e(c0394p5.i, c0394p53.i, 0, 8);
            c0349nc.e(c0394p5.i, this.T.I.i, 0, 4);
            c0349nc.e(c0394p5.i, this.T.K.i, 0, 0);
        } else if (i13 == 2) {
            c0349nc.e(c0394p54.i, c0394p52.i, 0, 8);
            c0349nc.e(c0394p52.i, this.T.L.i, 0, 4);
            c0349nc.e(c0394p52.i, this.T.J.i, 0, 0);
        } else if (i13 == 3) {
            c0349nc.e(c0394p52.i, c0394p54.i, 0, 8);
            c0349nc.e(c0394p52.i, this.T.J.i, 0, 4);
            c0349nc.e(c0394p52.i, this.T.L.i, 0, 0);
        }
    }

    @Override // defpackage.D5
    public final boolean c() {
        return true;
    }

    @Override // defpackage.D5
    public final String toString() {
        String str = "[Barrier] " + this.h0 + " {";
        for (int i = 0; i < this.r0; i++) {
            D5 d5 = this.q0[i];
            if (i > 0) {
                str = AbstractC0407pi.i(str, ", ");
            }
            str = str + d5.h0;
        }
        return AbstractC0407pi.i(str, "}");
    }
}
