package defpackage;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class Fa extends Pn {
    @Override // defpackage.InterfaceC0111e7
    public final void a(InterfaceC0111e7 interfaceC0111e7) {
        C0211i3 c0211i3 = (C0211i3) this.b;
        int i = c0211i3.s0;
        C0163g7 c0163g7 = this.h;
        Iterator it = c0163g7.l.iterator();
        int i2 = 0;
        int i3 = -1;
        while (it.hasNext()) {
            int i4 = ((C0163g7) it.next()).g;
            if (i3 == -1 || i4 < i3) {
                i3 = i4;
            }
            if (i2 < i4) {
                i2 = i4;
            }
        }
        if (i == 0 || i == 2) {
            c0163g7.d(i3 + c0211i3.u0);
        } else {
            c0163g7.d(i2 + c0211i3.u0);
        }
    }

    @Override // defpackage.Pn
    public final void d() {
        D5 d5 = this.b;
        if (d5 instanceof C0211i3) {
            C0163g7 c0163g7 = this.h;
            c0163g7.b = true;
            C0211i3 c0211i3 = (C0211i3) d5;
            int i = c0211i3.s0;
            boolean z = c0211i3.t0;
            int i2 = 0;
            if (i == 0) {
                c0163g7.e = 4;
                while (i2 < c0211i3.r0) {
                    D5 d52 = c0211i3.q0[i2];
                    if (z || d52.g0 != 8) {
                        C0163g7 c0163g72 = d52.d.h;
                        c0163g72.k.add(c0163g7);
                        c0163g7.l.add(c0163g72);
                    }
                    i2++;
                }
                m(this.b.d.h);
                m(this.b.d.i);
                return;
            }
            if (i == 1) {
                c0163g7.e = 5;
                while (i2 < c0211i3.r0) {
                    D5 d53 = c0211i3.q0[i2];
                    if (z || d53.g0 != 8) {
                        C0163g7 c0163g73 = d53.d.i;
                        c0163g73.k.add(c0163g7);
                        c0163g7.l.add(c0163g73);
                    }
                    i2++;
                }
                m(this.b.d.h);
                m(this.b.d.i);
                return;
            }
            if (i == 2) {
                c0163g7.e = 6;
                while (i2 < c0211i3.r0) {
                    D5 d54 = c0211i3.q0[i2];
                    if (z || d54.g0 != 8) {
                        C0163g7 c0163g74 = d54.e.h;
                        c0163g74.k.add(c0163g7);
                        c0163g7.l.add(c0163g74);
                    }
                    i2++;
                }
                m(this.b.e.h);
                m(this.b.e.i);
                return;
            }
            if (i != 3) {
                return;
            }
            c0163g7.e = 7;
            while (i2 < c0211i3.r0) {
                D5 d55 = c0211i3.q0[i2];
                if (z || d55.g0 != 8) {
                    C0163g7 c0163g75 = d55.e.i;
                    c0163g75.k.add(c0163g7);
                    c0163g7.l.add(c0163g75);
                }
                i2++;
            }
            m(this.b.e.h);
            m(this.b.e.i);
        }
    }

    @Override // defpackage.Pn
    public final void e() {
        D5 d5 = this.b;
        if (d5 instanceof C0211i3) {
            int i = ((C0211i3) d5).s0;
            C0163g7 c0163g7 = this.h;
            if (i == 0 || i == 1) {
                d5.Y = c0163g7.g;
            } else {
                d5.Z = c0163g7.g;
            }
        }
    }

    @Override // defpackage.Pn
    public final void f() {
        this.c = null;
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
