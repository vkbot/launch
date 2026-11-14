package defpackage;

/* loaded from: classes.dex */
public final class Km extends Pn {
    public C0163g7 k;
    public C0366o3 l;

    @Override // defpackage.InterfaceC0111e7
    public final void a(InterfaceC0111e7 interfaceC0111e7) {
        float f;
        float f2;
        float f3;
        int i;
        if (AbstractC0407pi.p(this.j) == 3) {
            D5 d5 = this.b;
            l(d5.J, d5.L, 1);
            return;
        }
        C0422q7 c0422q7 = this.e;
        if (c0422q7.c && !c0422q7.j && this.d == 3) {
            D5 d52 = this.b;
            int i2 = d52.s;
            if (i2 == 2) {
                D5 d53 = d52.T;
                if (d53 != null) {
                    if (d53.e.e.j) {
                        c0422q7.d((int) ((r5.g * d52.z) + 0.5f));
                    }
                }
            } else if (i2 == 3) {
                C0422q7 c0422q72 = d52.d.e;
                if (c0422q72.j) {
                    int i3 = d52.X;
                    if (i3 == -1) {
                        f = c0422q72.g;
                        f2 = d52.W;
                    } else if (i3 == 0) {
                        f3 = c0422q72.g * d52.W;
                        i = (int) (f3 + 0.5f);
                        c0422q7.d(i);
                    } else if (i3 != 1) {
                        i = 0;
                        c0422q7.d(i);
                    } else {
                        f = c0422q72.g;
                        f2 = d52.W;
                    }
                    f3 = f / f2;
                    i = (int) (f3 + 0.5f);
                    c0422q7.d(i);
                }
            }
        }
        C0163g7 c0163g7 = this.h;
        if (c0163g7.c) {
            C0163g7 c0163g72 = this.i;
            if (c0163g72.c) {
                if (c0163g7.j && c0163g72.j && c0422q7.j) {
                    return;
                }
                if (!c0422q7.j && this.d == 3) {
                    D5 d54 = this.b;
                    if (d54.r == 0 && !d54.y()) {
                        C0163g7 c0163g73 = (C0163g7) c0163g7.l.get(0);
                        C0163g7 c0163g74 = (C0163g7) c0163g72.l.get(0);
                        int i4 = c0163g73.g + c0163g7.f;
                        int i5 = c0163g74.g + c0163g72.f;
                        c0163g7.d(i4);
                        c0163g72.d(i5);
                        c0422q7.d(i5 - i4);
                        return;
                    }
                }
                if (!c0422q7.j && this.d == 3 && this.a == 1 && c0163g7.l.size() > 0 && c0163g72.l.size() > 0) {
                    C0163g7 c0163g75 = (C0163g7) c0163g7.l.get(0);
                    int i6 = (((C0163g7) c0163g72.l.get(0)).g + c0163g72.f) - (c0163g75.g + c0163g7.f);
                    int i7 = c0422q7.m;
                    if (i6 < i7) {
                        c0422q7.d(i6);
                    } else {
                        c0422q7.d(i7);
                    }
                }
                if (c0422q7.j && c0163g7.l.size() > 0 && c0163g72.l.size() > 0) {
                    C0163g7 c0163g76 = (C0163g7) c0163g7.l.get(0);
                    C0163g7 c0163g77 = (C0163g7) c0163g72.l.get(0);
                    int i8 = c0163g76.g;
                    int i9 = c0163g7.f + i8;
                    int i10 = c0163g77.g;
                    int i11 = c0163g72.f + i10;
                    float f4 = this.b.e0;
                    if (c0163g76 == c0163g77) {
                        f4 = 0.5f;
                    } else {
                        i8 = i9;
                        i10 = i11;
                    }
                    c0163g7.d((int) ((((i10 - i8) - c0422q7.g) * f4) + i8 + 0.5f));
                    c0163g72.d(c0163g7.g + c0422q7.g);
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v114, types: [o3, q7] */
    @Override // defpackage.Pn
    public final void d() {
        D5 d5;
        D5 d52;
        D5 d53;
        D5 d54;
        D5 d55 = this.b;
        boolean z = d55.a;
        C0422q7 c0422q7 = this.e;
        if (z) {
            c0422q7.d(d55.k());
        }
        boolean z2 = c0422q7.j;
        C0163g7 c0163g7 = this.i;
        C0163g7 c0163g72 = this.h;
        if (!z2) {
            D5 d56 = this.b;
            this.d = d56.p0[1];
            if (d56.E) {
                this.l = new C0422q7(this);
            }
            int i = this.d;
            if (i != 3) {
                if (i == 4 && (d54 = this.b.T) != null && d54.p0[1] == 1) {
                    int k = (d54.k() - this.b.J.e()) - this.b.L.e();
                    Pn.b(c0163g72, d54.e.h, this.b.J.e());
                    Pn.b(c0163g7, d54.e.i, -this.b.L.e());
                    c0422q7.d(k);
                    return;
                }
                if (i == 1) {
                    c0422q7.d(this.b.k());
                }
            }
        } else if (this.d == 4 && (d52 = (d5 = this.b).T) != null && d52.p0[1] == 1) {
            Pn.b(c0163g72, d52.e.h, d5.J.e());
            Pn.b(c0163g7, d52.e.i, -this.b.L.e());
            return;
        }
        boolean z3 = c0422q7.j;
        C0163g7 c0163g73 = this.k;
        if (z3) {
            D5 d57 = this.b;
            if (d57.a) {
                C0394p5[] c0394p5Arr = d57.Q;
                C0394p5 c0394p5 = c0394p5Arr[2];
                C0394p5 c0394p52 = c0394p5.f;
                if (c0394p52 != null && c0394p5Arr[3].f != null) {
                    if (d57.y()) {
                        c0163g72.f = this.b.Q[2].e();
                        c0163g7.f = -this.b.Q[3].e();
                    } else {
                        C0163g7 h = Pn.h(this.b.Q[2]);
                        if (h != null) {
                            Pn.b(c0163g72, h, this.b.Q[2].e());
                        }
                        C0163g7 h2 = Pn.h(this.b.Q[3]);
                        if (h2 != null) {
                            Pn.b(c0163g7, h2, -this.b.Q[3].e());
                        }
                        c0163g72.b = true;
                        c0163g7.b = true;
                    }
                    D5 d58 = this.b;
                    if (d58.E) {
                        Pn.b(c0163g73, c0163g72, d58.a0);
                        return;
                    }
                    return;
                }
                if (c0394p52 != null) {
                    C0163g7 h3 = Pn.h(c0394p5);
                    if (h3 != null) {
                        Pn.b(c0163g72, h3, this.b.Q[2].e());
                        Pn.b(c0163g7, c0163g72, c0422q7.g);
                        D5 d59 = this.b;
                        if (d59.E) {
                            Pn.b(c0163g73, c0163g72, d59.a0);
                            return;
                        }
                        return;
                    }
                    return;
                }
                C0394p5 c0394p53 = c0394p5Arr[3];
                if (c0394p53.f != null) {
                    C0163g7 h4 = Pn.h(c0394p53);
                    if (h4 != null) {
                        Pn.b(c0163g7, h4, -this.b.Q[3].e());
                        Pn.b(c0163g72, c0163g7, -c0422q7.g);
                    }
                    D5 d510 = this.b;
                    if (d510.E) {
                        Pn.b(c0163g73, c0163g72, d510.a0);
                        return;
                    }
                    return;
                }
                C0394p5 c0394p54 = c0394p5Arr[4];
                if (c0394p54.f != null) {
                    C0163g7 h5 = Pn.h(c0394p54);
                    if (h5 != null) {
                        Pn.b(c0163g73, h5, 0);
                        Pn.b(c0163g72, c0163g73, -this.b.a0);
                        Pn.b(c0163g7, c0163g72, c0422q7.g);
                        return;
                    }
                    return;
                }
                if ((d57 instanceof Ga) || d57.T == null || d57.i(7).f != null) {
                    return;
                }
                D5 d511 = this.b;
                Pn.b(c0163g72, d511.T.e.h, d511.s());
                Pn.b(c0163g7, c0163g72, c0422q7.g);
                D5 d512 = this.b;
                if (d512.E) {
                    Pn.b(c0163g73, c0163g72, d512.a0);
                    return;
                }
                return;
            }
        }
        if (z3 || this.d != 3) {
            c0422q7.b(this);
        } else {
            D5 d513 = this.b;
            int i2 = d513.s;
            if (i2 == 2) {
                D5 d514 = d513.T;
                if (d514 != null) {
                    C0422q7 c0422q72 = d514.e.e;
                    c0422q7.l.add(c0422q72);
                    c0422q72.k.add(c0422q7);
                    c0422q7.b = true;
                    c0422q7.k.add(c0163g72);
                    c0422q7.k.add(c0163g7);
                }
            } else if (i2 == 3 && !d513.y()) {
                D5 d515 = this.b;
                if (d515.r != 3) {
                    C0422q7 c0422q73 = d515.d.e;
                    c0422q7.l.add(c0422q73);
                    c0422q73.k.add(c0422q7);
                    c0422q7.b = true;
                    c0422q7.k.add(c0163g72);
                    c0422q7.k.add(c0163g7);
                }
            }
        }
        D5 d516 = this.b;
        C0394p5[] c0394p5Arr2 = d516.Q;
        C0394p5 c0394p55 = c0394p5Arr2[2];
        C0394p5 c0394p56 = c0394p55.f;
        if (c0394p56 != null && c0394p5Arr2[3].f != null) {
            if (d516.y()) {
                c0163g72.f = this.b.Q[2].e();
                c0163g7.f = -this.b.Q[3].e();
            } else {
                C0163g7 h6 = Pn.h(this.b.Q[2]);
                C0163g7 h7 = Pn.h(this.b.Q[3]);
                if (h6 != null) {
                    h6.b(this);
                }
                if (h7 != null) {
                    h7.b(this);
                }
                this.j = 4;
            }
            if (this.b.E) {
                c(c0163g73, c0163g72, 1, this.l);
            }
        } else if (c0394p56 != null) {
            C0163g7 h8 = Pn.h(c0394p55);
            if (h8 != null) {
                Pn.b(c0163g72, h8, this.b.Q[2].e());
                c(c0163g7, c0163g72, 1, c0422q7);
                if (this.b.E) {
                    c(c0163g73, c0163g72, 1, this.l);
                }
                if (this.d == 3) {
                    D5 d517 = this.b;
                    if (d517.W > 0.0f) {
                        Ka ka = d517.d;
                        if (ka.d == 3) {
                            ka.e.k.add(c0422q7);
                            c0422q7.l.add(this.b.d.e);
                            c0422q7.a = this;
                        }
                    }
                }
            }
        } else {
            C0394p5 c0394p57 = c0394p5Arr2[3];
            if (c0394p57.f != null) {
                C0163g7 h9 = Pn.h(c0394p57);
                if (h9 != null) {
                    Pn.b(c0163g7, h9, -this.b.Q[3].e());
                    c(c0163g72, c0163g7, -1, c0422q7);
                    if (this.b.E) {
                        c(c0163g73, c0163g72, 1, this.l);
                    }
                }
            } else {
                C0394p5 c0394p58 = c0394p5Arr2[4];
                if (c0394p58.f != null) {
                    C0163g7 h10 = Pn.h(c0394p58);
                    if (h10 != null) {
                        Pn.b(c0163g73, h10, 0);
                        c(c0163g72, c0163g73, -1, this.l);
                        c(c0163g7, c0163g72, 1, c0422q7);
                    }
                } else if (!(d516 instanceof Ga) && (d53 = d516.T) != null) {
                    Pn.b(c0163g72, d53.e.h, d516.s());
                    c(c0163g7, c0163g72, 1, c0422q7);
                    if (this.b.E) {
                        c(c0163g73, c0163g72, 1, this.l);
                    }
                    if (this.d == 3) {
                        D5 d518 = this.b;
                        if (d518.W > 0.0f) {
                            Ka ka2 = d518.d;
                            if (ka2.d == 3) {
                                ka2.e.k.add(c0422q7);
                                c0422q7.l.add(this.b.d.e);
                                c0422q7.a = this;
                            }
                        }
                    }
                }
            }
        }
        if (c0422q7.l.size() == 0) {
            c0422q7.c = true;
        }
    }

    @Override // defpackage.Pn
    public final void e() {
        C0163g7 c0163g7 = this.h;
        if (c0163g7.j) {
            this.b.Z = c0163g7.g;
        }
    }

    @Override // defpackage.Pn
    public final void f() {
        this.c = null;
        this.h.c();
        this.i.c();
        this.k.c();
        this.e.c();
        this.g = false;
    }

    @Override // defpackage.Pn
    public final boolean k() {
        return this.d != 3 || this.b.s == 0;
    }

    public final void m() {
        this.g = false;
        C0163g7 c0163g7 = this.h;
        c0163g7.c();
        c0163g7.j = false;
        C0163g7 c0163g72 = this.i;
        c0163g72.c();
        c0163g72.j = false;
        C0163g7 c0163g73 = this.k;
        c0163g73.c();
        c0163g73.j = false;
        this.e.j = false;
    }

    public final String toString() {
        return "VerticalRun " + this.b.h0;
    }
}
