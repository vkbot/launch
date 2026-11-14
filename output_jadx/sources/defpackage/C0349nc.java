package defpackage;

import java.util.Arrays;

/* renamed from: nc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0349nc {
    public static boolean p = false;
    public static int q = 1000;
    public final Ff c;
    public X2[] f;
    public final C0491t2 l;
    public X2 o;
    public boolean a = false;
    public int b = 0;
    public int d = 32;
    public int e = 32;
    public boolean g = false;
    public boolean[] h = new boolean[32];
    public int i = 1;
    public int j = 0;
    public int k = 32;
    public C0433qi[] m = new C0433qi[q];
    public int n = 0;

    /* JADX WARN: Type inference failed for: r1v2, types: [Ff, X2] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object, t2] */
    public C0349nc() {
        this.f = null;
        this.f = new X2[32];
        s();
        ?? obj = new Object();
        obj.a = new C0604xf();
        obj.b = new C0604xf();
        obj.c = new C0433qi[32];
        this.l = obj;
        ?? x2 = new X2(obj);
        x2.f = new C0433qi[128];
        x2.g = new C0433qi[128];
        x2.h = 0;
        x2.i = new K1((Ff) x2);
        this.c = x2;
        this.o = new X2(obj);
    }

    public static int n(Object obj) {
        C0433qi c0433qi = ((C0394p5) obj).i;
        if (c0433qi != null) {
            return (int) (c0433qi.e + 0.5f);
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r4v0 */
    public final C0433qi a(int i) {
        C0604xf c0604xf = (C0604xf) this.l.b;
        int i2 = c0604xf.b;
        C0433qi c0433qi = null;
        if (i2 > 0) {
            int i3 = i2 - 1;
            ?? r3 = c0604xf.a;
            ?? r4 = r3[i3];
            r3[i3] = 0;
            c0604xf.b = i3;
            c0433qi = r4;
        }
        C0433qi c0433qi2 = c0433qi;
        if (c0433qi2 == null) {
            c0433qi2 = new C0433qi(i);
            c0433qi2.l = i;
        } else {
            c0433qi2.c();
            c0433qi2.l = i;
        }
        int i4 = this.n;
        int i5 = q;
        if (i4 >= i5) {
            int i6 = i5 * 2;
            q = i6;
            this.m = (C0433qi[]) Arrays.copyOf(this.m, i6);
        }
        C0433qi[] c0433qiArr = this.m;
        int i7 = this.n;
        this.n = i7 + 1;
        c0433qiArr[i7] = c0433qi2;
        return c0433qi2;
    }

    public final void b(C0433qi c0433qi, C0433qi c0433qi2, int i, float f, C0433qi c0433qi3, C0433qi c0433qi4, int i2, int i3) {
        X2 l = l();
        if (c0433qi2 == c0433qi3) {
            l.d.g(c0433qi, 1.0f);
            l.d.g(c0433qi4, 1.0f);
            l.d.g(c0433qi2, -2.0f);
        } else if (f == 0.5f) {
            l.d.g(c0433qi, 1.0f);
            l.d.g(c0433qi2, -1.0f);
            l.d.g(c0433qi3, -1.0f);
            l.d.g(c0433qi4, 1.0f);
            if (i > 0 || i2 > 0) {
                l.b = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            l.d.g(c0433qi, -1.0f);
            l.d.g(c0433qi2, 1.0f);
            l.b = i;
        } else if (f >= 1.0f) {
            l.d.g(c0433qi4, -1.0f);
            l.d.g(c0433qi3, 1.0f);
            l.b = -i2;
        } else {
            float f2 = 1.0f - f;
            l.d.g(c0433qi, f2 * 1.0f);
            l.d.g(c0433qi2, f2 * (-1.0f));
            l.d.g(c0433qi3, (-1.0f) * f);
            l.d.g(c0433qi4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                l.b = (i2 * f) + ((-i) * f2);
            }
        }
        if (i3 != 8) {
            l.a(this, i3);
        }
        c(l);
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x00d0, code lost:
    
        if (r4.k <= 1) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00d3, code lost:
    
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00dd, code lost:
    
        if (r4.k <= 1) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x00f2, code lost:
    
        if (r4.k <= 1) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x00f5, code lost:
    
        r14 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x00ff, code lost:
    
        if (r4.k <= 1) goto L87;
     */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01b9 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(defpackage.X2 r17) {
        /*
            Method dump skipped, instructions count: 449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0349nc.c(X2):void");
    }

    public final void d(C0433qi c0433qi, int i) {
        int i2 = c0433qi.c;
        if (i2 == -1) {
            c0433qi.d(this, i);
            for (int i3 = 0; i3 < this.b + 1; i3++) {
                C0433qi c0433qi2 = ((C0433qi[]) this.l.c)[i3];
            }
            return;
        }
        if (i2 == -1) {
            X2 l = l();
            l.a = c0433qi;
            float f = i;
            c0433qi.e = f;
            l.b = f;
            l.e = true;
            c(l);
            return;
        }
        X2 x2 = this.f[i2];
        if (x2.e) {
            x2.b = i;
            return;
        }
        if (x2.d.d() == 0) {
            x2.e = true;
            x2.b = i;
            return;
        }
        X2 l2 = l();
        if (i < 0) {
            l2.b = i * (-1);
            l2.d.g(c0433qi, 1.0f);
        } else {
            l2.b = i;
            l2.d.g(c0433qi, -1.0f);
        }
        c(l2);
    }

    public final void e(C0433qi c0433qi, C0433qi c0433qi2, int i, int i2) {
        if (i2 == 8 && c0433qi2.f && c0433qi.c == -1) {
            c0433qi.d(this, c0433qi2.e + i);
            return;
        }
        X2 l = l();
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            l.b = i;
        }
        if (z) {
            l.d.g(c0433qi, 1.0f);
            l.d.g(c0433qi2, -1.0f);
        } else {
            l.d.g(c0433qi, -1.0f);
            l.d.g(c0433qi2, 1.0f);
        }
        if (i2 != 8) {
            l.a(this, i2);
        }
        c(l);
    }

    public final void f(C0433qi c0433qi, C0433qi c0433qi2, int i, int i2) {
        X2 l = l();
        C0433qi m = m();
        m.d = 0;
        l.b(c0433qi, c0433qi2, m, i);
        if (i2 != 8) {
            l.d.g(j(i2), (int) (l.d.c(m) * (-1.0f)));
        }
        c(l);
    }

    public final void g(C0433qi c0433qi, C0433qi c0433qi2, int i, int i2) {
        X2 l = l();
        C0433qi m = m();
        m.d = 0;
        l.c(c0433qi, c0433qi2, m, i);
        if (i2 != 8) {
            l.d.g(j(i2), (int) (l.d.c(m) * (-1.0f)));
        }
        c(l);
    }

    public final void h(X2 x2) {
        int i;
        if (x2.e) {
            x2.a.d(this, x2.b);
        } else {
            X2[] x2Arr = this.f;
            int i2 = this.j;
            x2Arr[i2] = x2;
            C0433qi c0433qi = x2.a;
            c0433qi.c = i2;
            this.j = i2 + 1;
            c0433qi.e(this, x2);
        }
        if (this.a) {
            int i3 = 0;
            while (i3 < this.j) {
                if (this.f[i3] == null) {
                    System.out.println("WTF");
                }
                X2 x22 = this.f[i3];
                if (x22 != null && x22.e) {
                    x22.a.d(this, x22.b);
                    ((C0604xf) this.l.a).b(x22);
                    this.f[i3] = null;
                    int i4 = i3 + 1;
                    int i5 = i4;
                    while (true) {
                        i = this.j;
                        if (i4 >= i) {
                            break;
                        }
                        X2[] x2Arr2 = this.f;
                        int i6 = i4 - 1;
                        X2 x23 = x2Arr2[i4];
                        x2Arr2[i6] = x23;
                        C0433qi c0433qi2 = x23.a;
                        if (c0433qi2.c == i4) {
                            c0433qi2.c = i6;
                        }
                        i5 = i4;
                        i4++;
                    }
                    if (i5 < i) {
                        this.f[i5] = null;
                    }
                    this.j = i - 1;
                    i3--;
                }
                i3++;
            }
            this.a = false;
        }
    }

    public final void i() {
        for (int i = 0; i < this.j; i++) {
            X2 x2 = this.f[i];
            x2.a.e = x2.b;
        }
    }

    public final C0433qi j(int i) {
        if (this.i + 1 >= this.e) {
            o();
        }
        C0433qi a = a(4);
        int i2 = this.b + 1;
        this.b = i2;
        this.i++;
        a.b = i2;
        a.d = i;
        ((C0433qi[]) this.l.c)[i2] = a;
        Ff ff = this.c;
        ff.i.b = a;
        float[] fArr = a.h;
        Arrays.fill(fArr, 0.0f);
        fArr[a.d] = 1.0f;
        ff.j(a);
        return a;
    }

    public final C0433qi k(Object obj) {
        C0433qi c0433qi = null;
        if (obj == null) {
            return null;
        }
        if (this.i + 1 >= this.e) {
            o();
        }
        if (obj instanceof C0394p5) {
            C0394p5 c0394p5 = (C0394p5) obj;
            c0433qi = c0394p5.i;
            if (c0433qi == null) {
                c0394p5.k();
                c0433qi = c0394p5.i;
            }
            int i = c0433qi.b;
            C0491t2 c0491t2 = this.l;
            if (i == -1 || i > this.b || ((C0433qi[]) c0491t2.c)[i] == null) {
                if (i != -1) {
                    c0433qi.c();
                }
                int i2 = this.b + 1;
                this.b = i2;
                this.i++;
                c0433qi.b = i2;
                c0433qi.l = 1;
                ((C0433qi[]) c0491t2.c)[i2] = c0433qi;
            }
        }
        return c0433qi;
    }

    public final X2 l() {
        Object obj;
        C0491t2 c0491t2 = this.l;
        C0604xf c0604xf = (C0604xf) c0491t2.a;
        int i = c0604xf.b;
        if (i > 0) {
            int i2 = i - 1;
            Object[] objArr = c0604xf.a;
            obj = objArr[i2];
            objArr[i2] = null;
            c0604xf.b = i2;
        } else {
            obj = null;
        }
        X2 x2 = (X2) obj;
        if (x2 == null) {
            return new X2(c0491t2);
        }
        x2.a = null;
        x2.d.b();
        x2.b = 0.0f;
        x2.e = false;
        return x2;
    }

    public final C0433qi m() {
        if (this.i + 1 >= this.e) {
            o();
        }
        C0433qi a = a(3);
        int i = this.b + 1;
        this.b = i;
        this.i++;
        a.b = i;
        ((C0433qi[]) this.l.c)[i] = a;
        return a;
    }

    public final void o() {
        int i = this.d * 2;
        this.d = i;
        this.f = (X2[]) Arrays.copyOf(this.f, i);
        C0491t2 c0491t2 = this.l;
        c0491t2.c = (C0433qi[]) Arrays.copyOf((C0433qi[]) c0491t2.c, this.d);
        int i2 = this.d;
        this.h = new boolean[i2];
        this.e = i2;
        this.k = i2;
    }

    public final void p() {
        Ff ff = this.c;
        if (ff.e()) {
            i();
            return;
        }
        if (!this.g) {
            q(ff);
            return;
        }
        for (int i = 0; i < this.j; i++) {
            if (!this.f[i].e) {
                q(ff);
                return;
            }
        }
        i();
    }

    public final void q(Ff ff) {
        int i = 0;
        while (true) {
            if (i >= this.j) {
                break;
            }
            X2 x2 = this.f[i];
            int i2 = 1;
            if (x2.a.l != 1) {
                float f = 0.0f;
                if (x2.b < 0.0f) {
                    boolean z = false;
                    int i3 = 0;
                    while (!z) {
                        i3 += i2;
                        float f2 = Float.MAX_VALUE;
                        int i4 = -1;
                        int i5 = -1;
                        int i6 = 0;
                        int i7 = 0;
                        while (i6 < this.j) {
                            X2 x22 = this.f[i6];
                            if (x22.a.l != i2 && !x22.e && x22.b < f) {
                                int d = x22.d.d();
                                int i8 = 0;
                                while (i8 < d) {
                                    C0433qi e = x22.d.e(i8);
                                    float c = x22.d.c(e);
                                    if (c > f) {
                                        for (int i9 = 0; i9 < 9; i9++) {
                                            float f3 = e.g[i9] / c;
                                            if ((f3 < f2 && i9 == i7) || i9 > i7) {
                                                i7 = i9;
                                                i5 = e.b;
                                                i4 = i6;
                                                f2 = f3;
                                            }
                                        }
                                    }
                                    i8++;
                                    f = 0.0f;
                                }
                            }
                            i6++;
                            f = 0.0f;
                            i2 = 1;
                        }
                        if (i4 != -1) {
                            X2 x23 = this.f[i4];
                            x23.a.c = -1;
                            x23.g(((C0433qi[]) this.l.c)[i5]);
                            C0433qi c0433qi = x23.a;
                            c0433qi.c = i4;
                            c0433qi.e(this, x23);
                        } else {
                            z = true;
                        }
                        if (i3 > this.i / 2) {
                            z = true;
                        }
                        f = 0.0f;
                        i2 = 1;
                    }
                }
            }
            i++;
        }
        r(ff);
        i();
    }

    public final void r(X2 x2) {
        boolean z;
        int i = 0;
        for (int i2 = 0; i2 < this.i; i2++) {
            this.h[i2] = false;
        }
        boolean z2 = false;
        int i3 = 0;
        while (!z2) {
            int i4 = 1;
            i3++;
            if (i3 >= this.i * 2) {
                return;
            }
            C0433qi c0433qi = x2.a;
            if (c0433qi != null) {
                this.h[c0433qi.b] = true;
            }
            C0433qi d = x2.d(this.h);
            if (d != null) {
                boolean[] zArr = this.h;
                int i5 = d.b;
                if (zArr[i5]) {
                    return;
                } else {
                    zArr[i5] = true;
                }
            }
            if (d != null) {
                float f = Float.MAX_VALUE;
                int i6 = i;
                int i7 = -1;
                while (i6 < this.j) {
                    X2 x22 = this.f[i6];
                    if (x22.a.l != i4 && !x22.e) {
                        U2 u2 = x22.d;
                        int i8 = u2.h;
                        if (i8 != -1) {
                            for (int i9 = 0; i8 != -1 && i9 < u2.a; i9++) {
                                if (u2.e[i8] == d.b) {
                                    z = true;
                                    break;
                                }
                                i8 = u2.f[i8];
                            }
                        }
                        z = false;
                        if (z) {
                            float c = x22.d.c(d);
                            if (c < 0.0f) {
                                float f2 = (-x22.b) / c;
                                if (f2 < f) {
                                    f = f2;
                                    i7 = i6;
                                }
                            }
                        }
                    }
                    i6++;
                    i4 = 1;
                }
                if (i7 > -1) {
                    X2 x23 = this.f[i7];
                    x23.a.c = -1;
                    x23.g(d);
                    C0433qi c0433qi2 = x23.a;
                    c0433qi2.c = i7;
                    c0433qi2.e(this, x23);
                }
            } else {
                z2 = true;
            }
            i = 0;
        }
    }

    public final void s() {
        for (int i = 0; i < this.j; i++) {
            X2 x2 = this.f[i];
            if (x2 != null) {
                ((C0604xf) this.l.a).b(x2);
            }
            this.f[i] = null;
        }
    }

    public final void t() {
        C0491t2 c0491t2;
        int i = 0;
        while (true) {
            c0491t2 = this.l;
            C0433qi[] c0433qiArr = (C0433qi[]) c0491t2.c;
            if (i >= c0433qiArr.length) {
                break;
            }
            C0433qi c0433qi = c0433qiArr[i];
            if (c0433qi != null) {
                c0433qi.c();
            }
            i++;
        }
        C0604xf c0604xf = (C0604xf) c0491t2.b;
        C0433qi[] c0433qiArr2 = this.m;
        int i2 = this.n;
        c0604xf.getClass();
        if (i2 > c0433qiArr2.length) {
            i2 = c0433qiArr2.length;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            C0433qi c0433qi2 = c0433qiArr2[i3];
            int i4 = c0604xf.b;
            Object[] objArr = c0604xf.a;
            if (i4 < objArr.length) {
                objArr[i4] = c0433qi2;
                c0604xf.b = i4 + 1;
            }
        }
        this.n = 0;
        Arrays.fill((C0433qi[]) c0491t2.c, (Object) null);
        this.b = 0;
        Ff ff = this.c;
        ff.h = 0;
        ff.b = 0.0f;
        this.i = 1;
        for (int i5 = 0; i5 < this.j; i5++) {
            X2 x2 = this.f[i5];
        }
        s();
        this.j = 0;
        this.o = new X2(c0491t2);
    }
}
