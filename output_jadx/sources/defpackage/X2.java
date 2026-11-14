package defpackage;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class X2 {
    public final U2 d;
    public C0433qi a = null;
    public float b = 0.0f;
    public final ArrayList c = new ArrayList();
    public boolean e = false;

    public X2(C0491t2 c0491t2) {
        this.d = new U2(this, c0491t2);
    }

    public final void a(C0349nc c0349nc, int i) {
        this.d.g(c0349nc.j(i), 1.0f);
        this.d.g(c0349nc.j(i), -1.0f);
    }

    public final void b(C0433qi c0433qi, C0433qi c0433qi2, C0433qi c0433qi3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        if (z) {
            this.d.g(c0433qi, 1.0f);
            this.d.g(c0433qi2, -1.0f);
            this.d.g(c0433qi3, -1.0f);
        } else {
            this.d.g(c0433qi, -1.0f);
            this.d.g(c0433qi2, 1.0f);
            this.d.g(c0433qi3, 1.0f);
        }
    }

    public final void c(C0433qi c0433qi, C0433qi c0433qi2, C0433qi c0433qi3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        if (z) {
            this.d.g(c0433qi, 1.0f);
            this.d.g(c0433qi2, -1.0f);
            this.d.g(c0433qi3, 1.0f);
        } else {
            this.d.g(c0433qi, -1.0f);
            this.d.g(c0433qi2, 1.0f);
            this.d.g(c0433qi3, -1.0f);
        }
    }

    public C0433qi d(boolean[] zArr) {
        return f(zArr, null);
    }

    public boolean e() {
        return this.a == null && this.b == 0.0f && this.d.d() == 0;
    }

    public final C0433qi f(boolean[] zArr, C0433qi c0433qi) {
        int i;
        int d = this.d.d();
        C0433qi c0433qi2 = null;
        float f = 0.0f;
        for (int i2 = 0; i2 < d; i2++) {
            float f2 = this.d.f(i2);
            if (f2 < 0.0f) {
                C0433qi e = this.d.e(i2);
                if ((zArr == null || !zArr[e.b]) && e != c0433qi && (((i = e.l) == 3 || i == 4) && f2 < f)) {
                    f = f2;
                    c0433qi2 = e;
                }
            }
        }
        return c0433qi2;
    }

    public final void g(C0433qi c0433qi) {
        C0433qi c0433qi2 = this.a;
        if (c0433qi2 != null) {
            this.d.g(c0433qi2, -1.0f);
            this.a.c = -1;
            this.a = null;
        }
        float h = this.d.h(c0433qi, true) * (-1.0f);
        this.a = c0433qi;
        if (h == 1.0f) {
            return;
        }
        this.b /= h;
        U2 u2 = this.d;
        int i = u2.h;
        for (int i2 = 0; i != -1 && i2 < u2.a; i2++) {
            float[] fArr = u2.g;
            fArr[i] = fArr[i] / h;
            i = u2.f[i];
        }
    }

    public final void h(C0349nc c0349nc, C0433qi c0433qi, boolean z) {
        if (c0433qi == null || !c0433qi.f) {
            return;
        }
        float c = this.d.c(c0433qi);
        this.b = (c0433qi.e * c) + this.b;
        this.d.h(c0433qi, z);
        if (z) {
            c0433qi.b(this);
        }
        if (this.d.d() == 0) {
            this.e = true;
            c0349nc.a = true;
        }
    }

    public void i(C0349nc c0349nc, X2 x2, boolean z) {
        U2 u2 = this.d;
        u2.getClass();
        float c = u2.c(x2.a);
        u2.h(x2.a, z);
        U2 u22 = x2.d;
        int d = u22.d();
        for (int i = 0; i < d; i++) {
            C0433qi e = u22.e(i);
            u2.a(e, u22.c(e) * c, z);
        }
        this.b = (x2.b * c) + this.b;
        if (z) {
            x2.a.b(this);
        }
        if (this.a == null || this.d.d() != 0) {
            return;
        }
        this.e = true;
        c0349nc.a = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r10 = this;
            qi r0 = r10.a
            if (r0 != 0) goto L7
            java.lang.String r0 = "0"
            goto L17
        L7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = ""
            r0.<init>(r1)
            qi r1 = r10.a
            r0.append(r1)
            java.lang.String r0 = r0.toString()
        L17:
            java.lang.String r1 = " = "
            java.lang.String r0 = defpackage.AbstractC0407pi.i(r0, r1)
            float r1 = r10.b
            r2 = 0
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L39
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            float r0 = r10.b
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            r1 = r3
            goto L3a
        L39:
            r1 = r4
        L3a:
            U2 r5 = r10.d
            int r5 = r5.d()
        L40:
            if (r4 >= r5) goto La0
            U2 r6 = r10.d
            qi r6 = r6.e(r4)
            if (r6 != 0) goto L4b
            goto L9d
        L4b:
            U2 r7 = r10.d
            float r7 = r7.f(r4)
            int r8 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r8 != 0) goto L56
            goto L9d
        L56:
            java.lang.String r6 = r6.toString()
            r9 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r1 != 0) goto L6a
            int r1 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r1 >= 0) goto L7a
            java.lang.String r1 = "- "
            java.lang.String r0 = defpackage.AbstractC0407pi.i(r0, r1)
        L68:
            float r7 = r7 * r9
            goto L7a
        L6a:
            if (r8 <= 0) goto L73
            java.lang.String r1 = " + "
            java.lang.String r0 = defpackage.AbstractC0407pi.i(r0, r1)
            goto L7a
        L73:
            java.lang.String r1 = " - "
            java.lang.String r0 = defpackage.AbstractC0407pi.i(r0, r1)
            goto L68
        L7a:
            r1 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r1 != 0) goto L85
            java.lang.String r0 = defpackage.AbstractC0407pi.i(r0, r6)
            goto L9c
        L85:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            r1.append(r7)
            java.lang.String r0 = " "
            r1.append(r0)
            r1.append(r6)
            java.lang.String r0 = r1.toString()
        L9c:
            r1 = r3
        L9d:
            int r4 = r4 + 1
            goto L40
        La0:
            if (r1 != 0) goto La8
            java.lang.String r10 = "0.0"
            java.lang.String r0 = defpackage.AbstractC0407pi.i(r0, r10)
        La8:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.X2.toString():java.lang.String");
    }
}
