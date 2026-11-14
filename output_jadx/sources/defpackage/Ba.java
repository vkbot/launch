package defpackage;

/* loaded from: classes.dex */
public final class Ba extends Pn {
    @Override // defpackage.InterfaceC0111e7
    public final void a(InterfaceC0111e7 interfaceC0111e7) {
        C0163g7 c0163g7 = this.h;
        if (c0163g7.c && !c0163g7.j) {
            c0163g7.d((int) ((((C0163g7) c0163g7.l.get(0)).g * ((Aa) this.b).q0) + 0.5f));
        }
    }

    @Override // defpackage.Pn
    public final void d() {
        D5 d5 = this.b;
        Aa aa = (Aa) d5;
        int i = aa.r0;
        int i2 = aa.s0;
        int i3 = aa.u0;
        C0163g7 c0163g7 = this.h;
        if (i3 == 1) {
            if (i != -1) {
                c0163g7.l.add(d5.T.d.h);
                this.b.T.d.h.k.add(c0163g7);
                c0163g7.f = i;
            } else if (i2 != -1) {
                c0163g7.l.add(d5.T.d.i);
                this.b.T.d.i.k.add(c0163g7);
                c0163g7.f = -i2;
            } else {
                c0163g7.b = true;
                c0163g7.l.add(d5.T.d.i);
                this.b.T.d.i.k.add(c0163g7);
            }
            m(this.b.d.h);
            m(this.b.d.i);
            return;
        }
        if (i != -1) {
            c0163g7.l.add(d5.T.e.h);
            this.b.T.e.h.k.add(c0163g7);
            c0163g7.f = i;
        } else if (i2 != -1) {
            c0163g7.l.add(d5.T.e.i);
            this.b.T.e.i.k.add(c0163g7);
            c0163g7.f = -i2;
        } else {
            c0163g7.b = true;
            c0163g7.l.add(d5.T.e.i);
            this.b.T.e.i.k.add(c0163g7);
        }
        m(this.b.e.h);
        m(this.b.e.i);
    }

    @Override // defpackage.Pn
    public final void e() {
        D5 d5 = this.b;
        int i = ((Aa) d5).u0;
        C0163g7 c0163g7 = this.h;
        if (i == 1) {
            d5.Y = c0163g7.g;
        } else {
            d5.Z = c0163g7.g;
        }
    }

    @Override // defpackage.Pn
    public final void f() {
        this.h.c();
    }

    @Override // defpackage.Pn
    public final boolean k() {
        return false;
    }

    public final void m(C0163g7 c0163g7) {
        C0163g7 c0163g72 = this.h;
        c0163g72.k.add(c0163g7);
        c0163g7.l.add(c0163g72);
    }
}
