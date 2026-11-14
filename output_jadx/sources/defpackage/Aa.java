package defpackage;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class Aa extends D5 {
    public float q0 = -1.0f;
    public int r0 = -1;
    public int s0 = -1;
    public C0394p5 t0 = this.J;
    public int u0 = 0;
    public boolean v0;

    public Aa() {
        this.R.clear();
        this.R.add(this.t0);
        int length = this.Q.length;
        for (int i = 0; i < length; i++) {
            this.Q[i] = this.t0;
        }
    }

    @Override // defpackage.D5
    public final boolean A() {
        return this.v0;
    }

    @Override // defpackage.D5
    public final boolean B() {
        return this.v0;
    }

    @Override // defpackage.D5
    public final void Q(C0349nc c0349nc, boolean z) {
        if (this.T == null) {
            return;
        }
        C0394p5 c0394p5 = this.t0;
        c0349nc.getClass();
        int n = C0349nc.n(c0394p5);
        if (this.u0 == 1) {
            this.Y = n;
            this.Z = 0;
            L(this.T.k());
            O(0);
            return;
        }
        this.Y = 0;
        this.Z = n;
        O(this.T.q());
        L(0);
    }

    public final void R(int i) {
        this.t0.l(i);
        this.v0 = true;
    }

    public final void S(int i) {
        if (this.u0 == i) {
            return;
        }
        this.u0 = i;
        ArrayList arrayList = this.R;
        arrayList.clear();
        if (this.u0 == 1) {
            this.t0 = this.I;
        } else {
            this.t0 = this.J;
        }
        arrayList.add(this.t0);
        C0394p5[] c0394p5Arr = this.Q;
        int length = c0394p5Arr.length;
        for (int i2 = 0; i2 < length; i2++) {
            c0394p5Arr[i2] = this.t0;
        }
    }

    @Override // defpackage.D5
    public final void b(C0349nc c0349nc, boolean z) {
        E5 e5 = (E5) this.T;
        if (e5 == null) {
            return;
        }
        Object i = e5.i(2);
        Object i2 = e5.i(4);
        D5 d5 = this.T;
        boolean z2 = d5 != null && d5.p0[0] == 2;
        if (this.u0 == 0) {
            i = e5.i(3);
            i2 = e5.i(5);
            D5 d52 = this.T;
            z2 = d52 != null && d52.p0[1] == 2;
        }
        if (this.v0) {
            C0394p5 c0394p5 = this.t0;
            if (c0394p5.c) {
                C0433qi k = c0349nc.k(c0394p5);
                c0349nc.d(k, this.t0.d());
                if (this.r0 != -1) {
                    if (z2) {
                        c0349nc.f(c0349nc.k(i2), k, 0, 5);
                    }
                } else if (this.s0 != -1 && z2) {
                    C0433qi k2 = c0349nc.k(i2);
                    c0349nc.f(k, c0349nc.k(i), 0, 5);
                    c0349nc.f(k2, k, 0, 5);
                }
                this.v0 = false;
                return;
            }
        }
        if (this.r0 != -1) {
            C0433qi k3 = c0349nc.k(this.t0);
            c0349nc.e(k3, c0349nc.k(i), this.r0, 8);
            if (z2) {
                c0349nc.f(c0349nc.k(i2), k3, 0, 5);
                return;
            }
            return;
        }
        if (this.s0 != -1) {
            C0433qi k4 = c0349nc.k(this.t0);
            C0433qi k5 = c0349nc.k(i2);
            c0349nc.e(k4, k5, -this.s0, 8);
            if (z2) {
                c0349nc.f(k4, c0349nc.k(i), 0, 5);
                c0349nc.f(k5, k4, 0, 5);
                return;
            }
            return;
        }
        if (this.q0 != -1.0f) {
            C0433qi k6 = c0349nc.k(this.t0);
            C0433qi k7 = c0349nc.k(i2);
            float f = this.q0;
            X2 l = c0349nc.l();
            l.d.g(k6, -1.0f);
            l.d.g(k7, f);
            c0349nc.c(l);
        }
    }

    @Override // defpackage.D5
    public final boolean c() {
        return true;
    }

    @Override // defpackage.D5
    public final C0394p5 i(int i) {
        int p = AbstractC0407pi.p(i);
        if (p != 1) {
            if (p != 2) {
                if (p != 3) {
                    if (p != 4) {
                        return null;
                    }
                }
            }
            if (this.u0 == 0) {
                return this.t0;
            }
            return null;
        }
        if (this.u0 == 1) {
            return this.t0;
        }
        return null;
    }
}
