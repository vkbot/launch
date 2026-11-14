package defpackage;

/* loaded from: classes.dex */
public final class Ka extends Pn {
    public static final int[] k = new int[2];

    public static void m(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 == 0) {
                iArr[0] = (int) ((i7 * f) + 0.5f);
                iArr[1] = i7;
                return;
            } else {
                if (i5 != 1) {
                    return;
                }
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f) + 0.5f);
                return;
            }
        }
        int i8 = (int) ((i7 * f) + 0.5f);
        int i9 = (int) ((i6 / f) + 0.5f);
        if (i8 <= i6) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else if (i9 <= i7) {
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x0244, code lost:
    
        if (r3 != 1) goto L128;
     */
    @Override // defpackage.InterfaceC0111e7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(defpackage.InterfaceC0111e7 r24) {
        /*
            Method dump skipped, instructions count: 907
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Ka.a(e7):void");
    }

    @Override // defpackage.Pn
    public final void d() {
        D5 d5;
        D5 d52;
        int i;
        D5 d53;
        D5 d54;
        int i2;
        D5 d55 = this.b;
        boolean z = d55.a;
        C0422q7 c0422q7 = this.e;
        if (z) {
            c0422q7.d(d55.q());
        }
        boolean z2 = c0422q7.j;
        C0163g7 c0163g7 = this.i;
        C0163g7 c0163g72 = this.h;
        if (!z2) {
            D5 d56 = this.b;
            int i3 = d56.p0[0];
            this.d = i3;
            if (i3 != 3) {
                if (i3 == 4 && (d54 = d56.T) != null && ((i2 = d54.p0[0]) == 1 || i2 == 4)) {
                    int q = (d54.q() - this.b.I.e()) - this.b.K.e();
                    Pn.b(c0163g72, d54.d.h, this.b.I.e());
                    Pn.b(c0163g7, d54.d.i, -this.b.K.e());
                    c0422q7.d(q);
                    return;
                }
                if (i3 == 1) {
                    c0422q7.d(d56.q());
                }
            }
        } else if (this.d == 4 && (d52 = (d5 = this.b).T) != null && ((i = d52.p0[0]) == 1 || i == 4)) {
            Pn.b(c0163g72, d52.d.h, d5.I.e());
            Pn.b(c0163g7, d52.d.i, -this.b.K.e());
            return;
        }
        if (c0422q7.j) {
            D5 d57 = this.b;
            if (d57.a) {
                C0394p5[] c0394p5Arr = d57.Q;
                C0394p5 c0394p5 = c0394p5Arr[0];
                C0394p5 c0394p52 = c0394p5.f;
                if (c0394p52 != null && c0394p5Arr[1].f != null) {
                    if (d57.x()) {
                        c0163g72.f = this.b.Q[0].e();
                        c0163g7.f = -this.b.Q[1].e();
                        return;
                    }
                    C0163g7 h = Pn.h(this.b.Q[0]);
                    if (h != null) {
                        Pn.b(c0163g72, h, this.b.Q[0].e());
                    }
                    C0163g7 h2 = Pn.h(this.b.Q[1]);
                    if (h2 != null) {
                        Pn.b(c0163g7, h2, -this.b.Q[1].e());
                    }
                    c0163g72.b = true;
                    c0163g7.b = true;
                    return;
                }
                if (c0394p52 != null) {
                    C0163g7 h3 = Pn.h(c0394p5);
                    if (h3 != null) {
                        Pn.b(c0163g72, h3, this.b.Q[0].e());
                        Pn.b(c0163g7, c0163g72, c0422q7.g);
                        return;
                    }
                    return;
                }
                C0394p5 c0394p53 = c0394p5Arr[1];
                if (c0394p53.f != null) {
                    C0163g7 h4 = Pn.h(c0394p53);
                    if (h4 != null) {
                        Pn.b(c0163g7, h4, -this.b.Q[1].e());
                        Pn.b(c0163g72, c0163g7, -c0422q7.g);
                        return;
                    }
                    return;
                }
                if ((d57 instanceof Ga) || d57.T == null || d57.i(7).f != null) {
                    return;
                }
                D5 d58 = this.b;
                Pn.b(c0163g72, d58.T.d.h, d58.r());
                Pn.b(c0163g7, c0163g72, c0422q7.g);
                return;
            }
        }
        if (this.d == 3) {
            D5 d59 = this.b;
            int i4 = d59.r;
            if (i4 == 2) {
                D5 d510 = d59.T;
                if (d510 != null) {
                    C0422q7 c0422q72 = d510.e.e;
                    c0422q7.l.add(c0422q72);
                    c0422q72.k.add(c0422q7);
                    c0422q7.b = true;
                    c0422q7.k.add(c0163g72);
                    c0422q7.k.add(c0163g7);
                }
            } else if (i4 == 3) {
                if (d59.s == 3) {
                    c0163g72.a = this;
                    c0163g7.a = this;
                    Km km = d59.e;
                    km.h.a = this;
                    km.i.a = this;
                    c0422q7.a = this;
                    if (d59.y()) {
                        c0422q7.l.add(this.b.e.e);
                        this.b.e.e.k.add(c0422q7);
                        Km km2 = this.b.e;
                        km2.e.a = this;
                        c0422q7.l.add(km2.h);
                        c0422q7.l.add(this.b.e.i);
                        this.b.e.h.k.add(c0422q7);
                        this.b.e.i.k.add(c0422q7);
                    } else if (this.b.x()) {
                        this.b.e.e.l.add(c0422q7);
                        c0422q7.k.add(this.b.e.e);
                    } else {
                        this.b.e.e.l.add(c0422q7);
                    }
                } else {
                    C0422q7 c0422q73 = d59.e.e;
                    c0422q7.l.add(c0422q73);
                    c0422q73.k.add(c0422q7);
                    this.b.e.h.k.add(c0422q7);
                    this.b.e.i.k.add(c0422q7);
                    c0422q7.b = true;
                    c0422q7.k.add(c0163g72);
                    c0422q7.k.add(c0163g7);
                    c0163g72.l.add(c0422q7);
                    c0163g7.l.add(c0422q7);
                }
            }
        }
        D5 d511 = this.b;
        C0394p5[] c0394p5Arr2 = d511.Q;
        C0394p5 c0394p54 = c0394p5Arr2[0];
        C0394p5 c0394p55 = c0394p54.f;
        if (c0394p55 != null && c0394p5Arr2[1].f != null) {
            if (d511.x()) {
                c0163g72.f = this.b.Q[0].e();
                c0163g7.f = -this.b.Q[1].e();
                return;
            }
            C0163g7 h5 = Pn.h(this.b.Q[0]);
            C0163g7 h6 = Pn.h(this.b.Q[1]);
            if (h5 != null) {
                h5.b(this);
            }
            if (h6 != null) {
                h6.b(this);
            }
            this.j = 4;
            return;
        }
        if (c0394p55 != null) {
            C0163g7 h7 = Pn.h(c0394p54);
            if (h7 != null) {
                Pn.b(c0163g72, h7, this.b.Q[0].e());
                c(c0163g7, c0163g72, 1, c0422q7);
                return;
            }
            return;
        }
        C0394p5 c0394p56 = c0394p5Arr2[1];
        if (c0394p56.f != null) {
            C0163g7 h8 = Pn.h(c0394p56);
            if (h8 != null) {
                Pn.b(c0163g7, h8, -this.b.Q[1].e());
                c(c0163g72, c0163g7, -1, c0422q7);
                return;
            }
            return;
        }
        if ((d511 instanceof Ga) || (d53 = d511.T) == null) {
            return;
        }
        Pn.b(c0163g72, d53.d.h, d511.r());
        c(c0163g7, c0163g72, 1, c0422q7);
    }

    @Override // defpackage.Pn
    public final void e() {
        C0163g7 c0163g7 = this.h;
        if (c0163g7.j) {
            this.b.Y = c0163g7.g;
        }
    }

    @Override // defpackage.Pn
    public final void f() {
        this.c = null;
        this.h.c();
        this.i.c();
        this.e.c();
        this.g = false;
    }

    @Override // defpackage.Pn
    public final boolean k() {
        return this.d != 3 || this.b.r == 0;
    }

    public final void n() {
        this.g = false;
        C0163g7 c0163g7 = this.h;
        c0163g7.c();
        c0163g7.j = false;
        C0163g7 c0163g72 = this.i;
        c0163g72.c();
        c0163g72.j = false;
        this.e.j = false;
    }

    public final String toString() {
        return "HorizontalRun " + this.b.h0;
    }
}
