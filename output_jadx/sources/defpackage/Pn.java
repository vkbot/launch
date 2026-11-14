package defpackage;

/* loaded from: classes.dex */
public abstract class Pn implements InterfaceC0111e7 {
    public int a;
    public D5 b;
    public C0354nh c;
    public int d;
    public final C0422q7 e = new C0422q7(this);
    public int f = 0;
    public boolean g = false;
    public final C0163g7 h = new C0163g7(this);
    public final C0163g7 i = new C0163g7(this);
    public int j = 1;

    public Pn(D5 d5) {
        this.b = d5;
    }

    public static void b(C0163g7 c0163g7, C0163g7 c0163g72, int i) {
        c0163g7.l.add(c0163g72);
        c0163g7.f = i;
        c0163g72.k.add(c0163g7);
    }

    public static C0163g7 h(C0394p5 c0394p5) {
        C0394p5 c0394p52 = c0394p5.f;
        if (c0394p52 == null) {
            return null;
        }
        int p = AbstractC0407pi.p(c0394p52.e);
        D5 d5 = c0394p52.d;
        if (p == 1) {
            return d5.d.h;
        }
        if (p == 2) {
            return d5.e.h;
        }
        if (p == 3) {
            return d5.d.i;
        }
        if (p == 4) {
            return d5.e.i;
        }
        if (p != 5) {
            return null;
        }
        return d5.e.k;
    }

    public static C0163g7 i(C0394p5 c0394p5, int i) {
        C0394p5 c0394p52 = c0394p5.f;
        if (c0394p52 == null) {
            return null;
        }
        D5 d5 = c0394p52.d;
        Pn pn = i == 0 ? d5.d : d5.e;
        int p = AbstractC0407pi.p(c0394p52.e);
        if (p == 1 || p == 2) {
            return pn.h;
        }
        if (p == 3 || p == 4) {
            return pn.i;
        }
        return null;
    }

    public final void c(C0163g7 c0163g7, C0163g7 c0163g72, int i, C0422q7 c0422q7) {
        c0163g7.l.add(c0163g72);
        c0163g7.l.add(this.e);
        c0163g7.h = i;
        c0163g7.i = c0422q7;
        c0163g72.k.add(c0163g7);
        c0422q7.k.add(c0163g7);
    }

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public final int g(int i, int i2) {
        int max;
        if (i2 == 0) {
            D5 d5 = this.b;
            int i3 = d5.v;
            max = Math.max(d5.u, i);
            if (i3 > 0) {
                max = Math.min(i3, i);
            }
            if (max == i) {
                return i;
            }
        } else {
            D5 d52 = this.b;
            int i4 = d52.y;
            max = Math.max(d52.x, i);
            if (i4 > 0) {
                max = Math.min(i4, i);
            }
            if (max == i) {
                return i;
            }
        }
        return max;
    }

    public long j() {
        if (this.e.j) {
            return r2.g;
        }
        return 0L;
    }

    public abstract boolean k();

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0051, code lost:
    
        if (r9.a == 3) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l(defpackage.C0394p5 r12, defpackage.C0394p5 r13, int r14) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Pn.l(p5, p5, int):void");
    }
}
