package defpackage;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class D5 {
    public int A;
    public float B;
    public final int[] C;
    public float D;
    public boolean E;
    public boolean F;
    public int G;
    public int H;
    public final C0394p5 I;
    public final C0394p5 J;
    public final C0394p5 K;
    public final C0394p5 L;
    public final C0394p5 M;
    public final C0394p5 N;
    public final C0394p5 O;
    public final C0394p5 P;
    public final C0394p5[] Q;
    public final ArrayList R;
    public final boolean[] S;
    public D5 T;
    public int U;
    public int V;
    public float W;
    public int X;
    public int Y;
    public int Z;
    public int a0;
    public C0005a4 b;
    public int b0;
    public C0005a4 c;
    public int c0;
    public float d0;
    public float e0;
    public View f0;
    public int g0;
    public String h0;
    public int i0;
    public String j;
    public int j0;
    public boolean k;
    public final float[] k0;
    public boolean l;
    public final D5[] l0;
    public boolean m;
    public final D5[] m0;
    public boolean n;
    public int n0;
    public int o;
    public int o0;
    public int p;
    public final int[] p0;
    public int q;
    public int r;
    public int s;
    public final int[] t;
    public int u;
    public int v;
    public float w;
    public int x;
    public int y;
    public float z;
    public boolean a = false;
    public Ka d = null;
    public Km e = null;
    public final boolean[] f = {true, true};
    public boolean g = true;
    public int h = -1;
    public int i = -1;

    public D5() {
        new HashMap();
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = false;
        this.o = -1;
        this.p = -1;
        this.q = 0;
        this.r = 0;
        this.s = 0;
        this.t = new int[2];
        this.u = 0;
        this.v = 0;
        this.w = 1.0f;
        this.x = 0;
        this.y = 0;
        this.z = 1.0f;
        this.A = -1;
        this.B = 1.0f;
        this.C = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.D = 0.0f;
        this.E = false;
        this.F = false;
        this.G = 0;
        this.H = 0;
        C0394p5 c0394p5 = new C0394p5(this, 2);
        this.I = c0394p5;
        C0394p5 c0394p52 = new C0394p5(this, 3);
        this.J = c0394p52;
        C0394p5 c0394p53 = new C0394p5(this, 4);
        this.K = c0394p53;
        C0394p5 c0394p54 = new C0394p5(this, 5);
        this.L = c0394p54;
        C0394p5 c0394p55 = new C0394p5(this, 6);
        this.M = c0394p55;
        C0394p5 c0394p56 = new C0394p5(this, 8);
        this.N = c0394p56;
        C0394p5 c0394p57 = new C0394p5(this, 9);
        this.O = c0394p57;
        C0394p5 c0394p58 = new C0394p5(this, 7);
        this.P = c0394p58;
        this.Q = new C0394p5[]{c0394p5, c0394p53, c0394p52, c0394p54, c0394p55, c0394p58};
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        this.S = new boolean[2];
        this.p0 = new int[]{1, 1};
        this.T = null;
        this.U = 0;
        this.V = 0;
        this.W = 0.0f;
        this.X = -1;
        this.Y = 0;
        this.Z = 0;
        this.a0 = 0;
        this.d0 = 0.5f;
        this.e0 = 0.5f;
        this.g0 = 0;
        this.h0 = null;
        this.i0 = 0;
        this.j0 = 0;
        this.k0 = new float[]{-1.0f, -1.0f};
        this.l0 = new D5[]{null, null};
        this.m0 = new D5[]{null, null};
        this.n0 = -1;
        this.o0 = -1;
        arrayList.add(c0394p5);
        arrayList.add(c0394p52);
        arrayList.add(c0394p53);
        arrayList.add(c0394p54);
        arrayList.add(c0394p56);
        arrayList.add(c0394p57);
        arrayList.add(c0394p58);
        arrayList.add(c0394p55);
    }

    public static void G(int i, int i2, String str, StringBuilder sb) {
        if (i == i2) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(i);
        sb.append(",\n");
    }

    public static void H(StringBuilder sb, String str, float f, float f2) {
        if (f == f2) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(f);
        sb.append(",\n");
    }

    public static void o(StringBuilder sb, String str, int i, int i2, int i3, int i4, int i5, float f) {
        sb.append(str);
        sb.append(" :  {\n");
        G(i, 0, "      size", sb);
        G(i2, 0, "      min", sb);
        G(i3, Integer.MAX_VALUE, "      max", sb);
        G(i4, 0, "      matchMin", sb);
        G(i5, 0, "      matchDef", sb);
        H(sb, "      matchPercent", f, 1.0f);
        sb.append("    },\n");
    }

    public static void p(StringBuilder sb, String str, C0394p5 c0394p5) {
        if (c0394p5.f == null) {
            return;
        }
        sb.append("    ");
        sb.append(str);
        sb.append(" : [ '");
        sb.append(c0394p5.f);
        sb.append("'");
        if (c0394p5.h != Integer.MIN_VALUE || c0394p5.g != 0) {
            sb.append(",");
            sb.append(c0394p5.g);
            if (c0394p5.h != Integer.MIN_VALUE) {
                sb.append(",");
                sb.append(c0394p5.h);
                sb.append(",");
            }
        }
        sb.append(" ] ,\n");
    }

    public boolean A() {
        return this.k || (this.I.c && this.K.c);
    }

    public boolean B() {
        return this.l || (this.J.c && this.L.c);
    }

    public void C() {
        this.I.j();
        this.J.j();
        this.K.j();
        this.L.j();
        this.M.j();
        this.N.j();
        this.O.j();
        this.P.j();
        this.T = null;
        this.D = 0.0f;
        this.U = 0;
        this.V = 0;
        this.W = 0.0f;
        this.X = -1;
        this.Y = 0;
        this.Z = 0;
        this.a0 = 0;
        this.b0 = 0;
        this.c0 = 0;
        this.d0 = 0.5f;
        this.e0 = 0.5f;
        int[] iArr = this.p0;
        iArr[0] = 1;
        iArr[1] = 1;
        this.f0 = null;
        this.g0 = 0;
        this.i0 = 0;
        this.j0 = 0;
        float[] fArr = this.k0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.o = -1;
        this.p = -1;
        int[] iArr2 = this.C;
        iArr2[0] = Integer.MAX_VALUE;
        iArr2[1] = Integer.MAX_VALUE;
        this.r = 0;
        this.s = 0;
        this.w = 1.0f;
        this.z = 1.0f;
        this.v = Integer.MAX_VALUE;
        this.y = Integer.MAX_VALUE;
        this.u = 0;
        this.x = 0;
        this.A = -1;
        this.B = 1.0f;
        boolean[] zArr = this.f;
        zArr[0] = true;
        zArr[1] = true;
        this.F = false;
        boolean[] zArr2 = this.S;
        zArr2[0] = false;
        zArr2[1] = false;
        this.g = true;
        int[] iArr3 = this.t;
        iArr3[0] = 0;
        iArr3[1] = 0;
        this.h = -1;
        this.i = -1;
    }

    public final void D() {
        D5 d5 = this.T;
        if (d5 != null && (d5 instanceof E5)) {
            ((E5) d5).getClass();
        }
        ArrayList arrayList = this.R;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((C0394p5) arrayList.get(i)).j();
        }
    }

    public final void E() {
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = false;
        ArrayList arrayList = this.R;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C0394p5 c0394p5 = (C0394p5) arrayList.get(i);
            c0394p5.c = false;
            c0394p5.b = 0;
        }
    }

    public void F(C0491t2 c0491t2) {
        this.I.k();
        this.J.k();
        this.K.k();
        this.L.k();
        this.M.k();
        this.P.k();
        this.N.k();
        this.O.k();
    }

    public final void I(int i) {
        this.a0 = i;
        this.E = i > 0;
    }

    public final void J(int i, int i2) {
        if (this.k) {
            return;
        }
        this.I.l(i);
        this.K.l(i2);
        this.Y = i;
        this.U = i2 - i;
        this.k = true;
    }

    public final void K(int i, int i2) {
        if (this.l) {
            return;
        }
        this.J.l(i);
        this.L.l(i2);
        this.Z = i;
        this.V = i2 - i;
        if (this.E) {
            this.M.l(i + this.a0);
        }
        this.l = true;
    }

    public final void L(int i) {
        this.V = i;
        int i2 = this.c0;
        if (i < i2) {
            this.V = i2;
        }
    }

    public final void M(int i) {
        this.p0[0] = i;
    }

    public final void N(int i) {
        this.p0[1] = i;
    }

    public final void O(int i) {
        this.U = i;
        int i2 = this.b0;
        if (i < i2) {
            this.U = i2;
        }
    }

    public void P(boolean z, boolean z2) {
        int i;
        int i2;
        Ka ka = this.d;
        boolean z3 = z & ka.g;
        Km km = this.e;
        boolean z4 = z2 & km.g;
        int i3 = ka.h.g;
        int i4 = km.h.g;
        int i5 = ka.i.g;
        int i6 = km.i.g;
        int i7 = i6 - i4;
        if (i5 - i3 < 0 || i7 < 0 || i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE) {
            i5 = 0;
            i6 = 0;
            i3 = 0;
            i4 = 0;
        }
        int i8 = i5 - i3;
        int i9 = i6 - i4;
        if (z3) {
            this.Y = i3;
        }
        if (z4) {
            this.Z = i4;
        }
        if (this.g0 == 8) {
            this.U = 0;
            this.V = 0;
            return;
        }
        int[] iArr = this.p0;
        if (z3) {
            if (iArr[0] == 1 && i8 < (i2 = this.U)) {
                i8 = i2;
            }
            this.U = i8;
            int i10 = this.b0;
            if (i8 < i10) {
                this.U = i10;
            }
        }
        if (z4) {
            if (iArr[1] == 1 && i9 < (i = this.V)) {
                i9 = i;
            }
            this.V = i9;
            int i11 = this.c0;
            if (i9 < i11) {
                this.V = i11;
            }
        }
    }

    public void Q(C0349nc c0349nc, boolean z) {
        int i;
        int i2;
        Km km;
        Ka ka;
        C0394p5 c0394p5 = this.I;
        c0349nc.getClass();
        int n = C0349nc.n(c0394p5);
        int n2 = C0349nc.n(this.J);
        int n3 = C0349nc.n(this.K);
        int n4 = C0349nc.n(this.L);
        if (z && (ka = this.d) != null) {
            C0163g7 c0163g7 = ka.h;
            if (c0163g7.j) {
                C0163g7 c0163g72 = ka.i;
                if (c0163g72.j) {
                    n = c0163g7.g;
                    n3 = c0163g72.g;
                }
            }
        }
        if (z && (km = this.e) != null) {
            C0163g7 c0163g73 = km.h;
            if (c0163g73.j) {
                C0163g7 c0163g74 = km.i;
                if (c0163g74.j) {
                    n2 = c0163g73.g;
                    n4 = c0163g74.g;
                }
            }
        }
        int i3 = n4 - n2;
        if (n3 - n < 0 || i3 < 0 || n == Integer.MIN_VALUE || n == Integer.MAX_VALUE || n2 == Integer.MIN_VALUE || n2 == Integer.MAX_VALUE || n3 == Integer.MIN_VALUE || n3 == Integer.MAX_VALUE || n4 == Integer.MIN_VALUE || n4 == Integer.MAX_VALUE) {
            n = 0;
            n2 = 0;
            n3 = 0;
            n4 = 0;
        }
        int i4 = n3 - n;
        int i5 = n4 - n2;
        this.Y = n;
        this.Z = n2;
        if (this.g0 == 8) {
            this.U = 0;
            this.V = 0;
            return;
        }
        int[] iArr = this.p0;
        int i6 = iArr[0];
        if (i6 == 1 && i4 < (i2 = this.U)) {
            i4 = i2;
        }
        if (iArr[1] == 1 && i5 < (i = this.V)) {
            i5 = i;
        }
        this.U = i4;
        this.V = i5;
        int i7 = this.c0;
        if (i5 < i7) {
            this.V = i7;
        }
        int i8 = this.b0;
        if (i4 < i8) {
            this.U = i8;
        }
        int i9 = this.v;
        if (i9 > 0 && i6 == 3) {
            this.U = Math.min(this.U, i9);
        }
        int i10 = this.y;
        if (i10 > 0 && iArr[1] == 3) {
            this.V = Math.min(this.V, i10);
        }
        int i11 = this.U;
        if (i4 != i11) {
            this.h = i11;
        }
        int i12 = this.V;
        if (i5 != i12) {
            this.i = i12;
        }
    }

    public final void a(E5 e5, C0349nc c0349nc, HashSet hashSet, int i, boolean z) {
        if (z) {
            if (!hashSet.contains(this)) {
                return;
            }
            AbstractC0348nb.n(e5, c0349nc, this);
            hashSet.remove(this);
            b(c0349nc, e5.W(64));
        }
        if (i == 0) {
            HashSet hashSet2 = this.I.a;
            if (hashSet2 != null) {
                Iterator it = hashSet2.iterator();
                while (it.hasNext()) {
                    ((C0394p5) it.next()).d.a(e5, c0349nc, hashSet, i, true);
                }
            }
            HashSet hashSet3 = this.K.a;
            if (hashSet3 != null) {
                Iterator it2 = hashSet3.iterator();
                while (it2.hasNext()) {
                    ((C0394p5) it2.next()).d.a(e5, c0349nc, hashSet, i, true);
                }
                return;
            }
            return;
        }
        HashSet hashSet4 = this.J.a;
        if (hashSet4 != null) {
            Iterator it3 = hashSet4.iterator();
            while (it3.hasNext()) {
                ((C0394p5) it3.next()).d.a(e5, c0349nc, hashSet, i, true);
            }
        }
        HashSet hashSet5 = this.L.a;
        if (hashSet5 != null) {
            Iterator it4 = hashSet5.iterator();
            while (it4.hasNext()) {
                ((C0394p5) it4.next()).d.a(e5, c0349nc, hashSet, i, true);
            }
        }
        HashSet hashSet6 = this.M.a;
        if (hashSet6 != null) {
            Iterator it5 = hashSet6.iterator();
            while (it5.hasNext()) {
                ((C0394p5) it5.next()).d.a(e5, c0349nc, hashSet, i, true);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0402  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0411  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0469  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x055b  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x05d1  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x05d7  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0654  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x06ad  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0712  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x070a  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0657  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x05d3  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x05bd  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x04c7  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x04d6  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x04f8  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x04fb  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x04e0  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x04d0  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x020e  */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v27 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(defpackage.C0349nc r59, boolean r60) {
        /*
            Method dump skipped, instructions count: 1994
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.D5.b(nc, boolean):void");
    }

    public boolean c() {
        return this.g0 != 8;
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x03ac A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0455 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x046f  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x04bc  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x04cf A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0451  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0402  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0506  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x04f0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:92:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(defpackage.C0349nc r31, boolean r32, boolean r33, boolean r34, boolean r35, defpackage.C0433qi r36, defpackage.C0433qi r37, int r38, boolean r39, defpackage.C0394p5 r40, defpackage.C0394p5 r41, int r42, int r43, int r44, int r45, float r46, boolean r47, boolean r48, boolean r49, boolean r50, boolean r51, int r52, int r53, int r54, int r55, float r56, boolean r57) {
        /*
            Method dump skipped, instructions count: 1364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.D5.d(nc, boolean, boolean, boolean, boolean, qi, qi, int, boolean, p5, p5, int, int, int, int, float, boolean, boolean, boolean, boolean, boolean, int, int, int, int, float, boolean):void");
    }

    public final void e(int i, D5 d5, int i2, int i3) {
        boolean z;
        if (i == 7) {
            if (i2 != 7) {
                if (i2 == 2 || i2 == 4) {
                    e(2, d5, i2, 0);
                    e(4, d5, i2, 0);
                    i(7).a(d5.i(i2), 0);
                    return;
                } else {
                    if (i2 == 3 || i2 == 5) {
                        e(3, d5, i2, 0);
                        e(5, d5, i2, 0);
                        i(7).a(d5.i(i2), 0);
                        return;
                    }
                    return;
                }
            }
            C0394p5 i4 = i(2);
            C0394p5 i5 = i(4);
            C0394p5 i6 = i(3);
            C0394p5 i7 = i(5);
            boolean z2 = true;
            if ((i4 == null || !i4.h()) && (i5 == null || !i5.h())) {
                e(2, d5, 2, 0);
                e(4, d5, 4, 0);
                z = true;
            } else {
                z = false;
            }
            if ((i6 == null || !i6.h()) && (i7 == null || !i7.h())) {
                e(3, d5, 3, 0);
                e(5, d5, 5, 0);
            } else {
                z2 = false;
            }
            if (z && z2) {
                i(7).a(d5.i(7), 0);
                return;
            } else if (z) {
                i(8).a(d5.i(8), 0);
                return;
            } else {
                if (z2) {
                    i(9).a(d5.i(9), 0);
                    return;
                }
                return;
            }
        }
        if (i == 8 && (i2 == 2 || i2 == 4)) {
            C0394p5 i8 = i(2);
            C0394p5 i9 = d5.i(i2);
            C0394p5 i10 = i(4);
            i8.a(i9, 0);
            i10.a(i9, 0);
            i(8).a(i9, 0);
            return;
        }
        if (i == 9 && (i2 == 3 || i2 == 5)) {
            C0394p5 i11 = d5.i(i2);
            i(3).a(i11, 0);
            i(5).a(i11, 0);
            i(9).a(i11, 0);
            return;
        }
        if (i == 8 && i2 == 8) {
            i(2).a(d5.i(2), 0);
            i(4).a(d5.i(4), 0);
            i(8).a(d5.i(i2), 0);
            return;
        }
        if (i == 9 && i2 == 9) {
            i(3).a(d5.i(3), 0);
            i(5).a(d5.i(5), 0);
            i(9).a(d5.i(i2), 0);
            return;
        }
        C0394p5 i12 = i(i);
        C0394p5 i13 = d5.i(i2);
        if (i12.i(i13)) {
            if (i == 6) {
                C0394p5 i14 = i(3);
                C0394p5 i15 = i(5);
                if (i14 != null) {
                    i14.j();
                }
                if (i15 != null) {
                    i15.j();
                }
            } else if (i == 3 || i == 5) {
                C0394p5 i16 = i(6);
                if (i16 != null) {
                    i16.j();
                }
                C0394p5 i17 = i(7);
                if (i17.f != i13) {
                    i17.j();
                }
                C0394p5 f = i(i).f();
                C0394p5 i18 = i(9);
                if (i18.h()) {
                    f.j();
                    i18.j();
                }
            } else if (i == 2 || i == 4) {
                C0394p5 i19 = i(7);
                if (i19.f != i13) {
                    i19.j();
                }
                C0394p5 f2 = i(i).f();
                C0394p5 i20 = i(8);
                if (i20.h()) {
                    f2.j();
                    i20.j();
                }
            }
            i12.a(i13, i3);
        }
    }

    public final void f(C0394p5 c0394p5, C0394p5 c0394p52, int i) {
        if (c0394p5.d == this) {
            e(c0394p5.e, c0394p52.d, c0394p52.e, i);
        }
    }

    public final void g(C0349nc c0349nc) {
        c0349nc.k(this.I);
        c0349nc.k(this.J);
        c0349nc.k(this.K);
        c0349nc.k(this.L);
        if (this.a0 > 0) {
            c0349nc.k(this.M);
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [Km, Pn] */
    /* JADX WARN: Type inference failed for: r0v3, types: [Ka, Pn] */
    public final void h() {
        if (this.d == null) {
            ?? pn = new Pn(this);
            pn.h.e = 4;
            pn.i.e = 5;
            pn.f = 0;
            this.d = pn;
        }
        if (this.e == null) {
            ?? pn2 = new Pn(this);
            C0163g7 c0163g7 = new C0163g7(pn2);
            pn2.k = c0163g7;
            pn2.l = null;
            pn2.h.e = 6;
            pn2.i.e = 7;
            c0163g7.e = 8;
            pn2.f = 1;
            this.e = pn2;
        }
    }

    public C0394p5 i(int i) {
        switch (AbstractC0407pi.p(i)) {
            case 0:
                return null;
            case 1:
                return this.I;
            case 2:
                return this.J;
            case 3:
                return this.K;
            case 4:
                return this.L;
            case 5:
                return this.M;
            case 6:
                return this.P;
            case 7:
                return this.N;
            case 8:
                return this.O;
            default:
                throw new AssertionError(AbstractC0407pi.o(i));
        }
    }

    public final int j(int i) {
        int[] iArr = this.p0;
        if (i == 0) {
            return iArr[0];
        }
        if (i == 1) {
            return iArr[1];
        }
        return 0;
    }

    public final int k() {
        if (this.g0 == 8) {
            return 0;
        }
        return this.V;
    }

    public final D5 l(int i) {
        C0394p5 c0394p5;
        C0394p5 c0394p52;
        if (i != 0) {
            if (i == 1 && (c0394p52 = (c0394p5 = this.L).f) != null && c0394p52.f == c0394p5) {
                return c0394p52.d;
            }
            return null;
        }
        C0394p5 c0394p53 = this.K;
        C0394p5 c0394p54 = c0394p53.f;
        if (c0394p54 == null || c0394p54.f != c0394p53) {
            return null;
        }
        return c0394p54.d;
    }

    public final D5 m(int i) {
        C0394p5 c0394p5;
        C0394p5 c0394p52;
        if (i != 0) {
            if (i == 1 && (c0394p52 = (c0394p5 = this.J).f) != null && c0394p52.f == c0394p5) {
                return c0394p52.d;
            }
            return null;
        }
        C0394p5 c0394p53 = this.I;
        C0394p5 c0394p54 = c0394p53.f;
        if (c0394p54 == null || c0394p54.f != c0394p53) {
            return null;
        }
        return c0394p54.d;
    }

    public void n(StringBuilder sb) {
        sb.append("  " + this.j + ":{\n");
        StringBuilder sb2 = new StringBuilder("    actualWidth:");
        sb2.append(this.U);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("    actualHeight:" + this.V);
        sb.append("\n");
        sb.append("    actualLeft:" + this.Y);
        sb.append("\n");
        sb.append("    actualTop:" + this.Z);
        sb.append("\n");
        p(sb, "left", this.I);
        p(sb, "top", this.J);
        p(sb, "right", this.K);
        p(sb, "bottom", this.L);
        p(sb, "baseline", this.M);
        p(sb, "centerX", this.N);
        p(sb, "centerY", this.O);
        int i = this.U;
        int i2 = this.b0;
        int[] iArr = this.C;
        int i3 = iArr[0];
        int i4 = this.u;
        int i5 = this.r;
        float f = this.w;
        float[] fArr = this.k0;
        float f2 = fArr[0];
        o(sb, "    width", i, i2, i3, i4, i5, f);
        int i6 = this.V;
        int i7 = this.c0;
        int i8 = iArr[1];
        int i9 = this.x;
        int i10 = this.s;
        float f3 = this.z;
        float f4 = fArr[1];
        o(sb, "    height", i6, i7, i8, i9, i10, f3);
        float f5 = this.W;
        int i11 = this.X;
        if (f5 != 0.0f) {
            sb.append("    dimensionRatio");
            sb.append(" :  [");
            sb.append(f5);
            sb.append(",");
            sb.append(i11);
            sb.append("");
            sb.append("],\n");
        }
        H(sb, "    horizontalBias", this.d0, 0.5f);
        H(sb, "    verticalBias", this.e0, 0.5f);
        G(this.i0, 0, "    horizontalChainStyle", sb);
        G(this.j0, 0, "    verticalChainStyle", sb);
        sb.append("  }");
    }

    public final int q() {
        if (this.g0 == 8) {
            return 0;
        }
        return this.U;
    }

    public final int r() {
        D5 d5 = this.T;
        return (d5 == null || !(d5 instanceof E5)) ? this.Y : ((E5) d5).x0 + this.Y;
    }

    public final int s() {
        D5 d5 = this.T;
        return (d5 == null || !(d5 instanceof E5)) ? this.Z : ((E5) d5).y0 + this.Z;
    }

    public final boolean t(int i) {
        if (i == 0) {
            return (this.I.f != null ? 1 : 0) + (this.K.f != null ? 1 : 0) < 2;
        }
        return ((this.J.f != null ? 1 : 0) + (this.L.f != null ? 1 : 0)) + (this.M.f != null ? 1 : 0) < 2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        String str = "";
        sb.append("");
        if (this.h0 != null) {
            str = "id: " + this.h0 + " ";
        }
        sb.append(str);
        sb.append("(");
        sb.append(this.Y);
        sb.append(", ");
        sb.append(this.Z);
        sb.append(") - (");
        sb.append(this.U);
        sb.append(" x ");
        sb.append(this.V);
        sb.append(")");
        return sb.toString();
    }

    public final boolean u(int i, int i2) {
        C0394p5 c0394p5;
        C0394p5 c0394p52;
        C0394p5 c0394p53;
        C0394p5 c0394p54;
        if (i == 0) {
            C0394p5 c0394p55 = this.I;
            C0394p5 c0394p56 = c0394p55.f;
            if (c0394p56 != null && c0394p56.c && (c0394p54 = (c0394p53 = this.K).f) != null && c0394p54.c) {
                return (c0394p54.d() - c0394p53.e()) - (c0394p55.e() + c0394p55.f.d()) >= i2;
            }
        } else {
            C0394p5 c0394p57 = this.J;
            C0394p5 c0394p58 = c0394p57.f;
            if (c0394p58 != null && c0394p58.c && (c0394p52 = (c0394p5 = this.L).f) != null && c0394p52.c) {
                return (c0394p52.d() - c0394p5.e()) - (c0394p57.e() + c0394p57.f.d()) >= i2;
            }
        }
        return false;
    }

    public final void v(int i, int i2, int i3, int i4, D5 d5) {
        i(i).b(d5.i(i2), i3, i4, true);
    }

    public final boolean w(int i) {
        C0394p5 c0394p5;
        C0394p5 c0394p52;
        int i2 = i * 2;
        C0394p5[] c0394p5Arr = this.Q;
        C0394p5 c0394p53 = c0394p5Arr[i2];
        C0394p5 c0394p54 = c0394p53.f;
        return (c0394p54 == null || c0394p54.f == c0394p53 || (c0394p52 = (c0394p5 = c0394p5Arr[i2 + 1]).f) == null || c0394p52.f != c0394p5) ? false : true;
    }

    public final boolean x() {
        C0394p5 c0394p5 = this.I;
        C0394p5 c0394p52 = c0394p5.f;
        if (c0394p52 != null && c0394p52.f == c0394p5) {
            return true;
        }
        C0394p5 c0394p53 = this.K;
        C0394p5 c0394p54 = c0394p53.f;
        return c0394p54 != null && c0394p54.f == c0394p53;
    }

    public final boolean y() {
        C0394p5 c0394p5 = this.J;
        C0394p5 c0394p52 = c0394p5.f;
        if (c0394p52 != null && c0394p52.f == c0394p5) {
            return true;
        }
        C0394p5 c0394p53 = this.L;
        C0394p5 c0394p54 = c0394p53.f;
        return c0394p54 != null && c0394p54.f == c0394p53;
    }

    public final boolean z() {
        return this.g && this.g0 != 8;
    }
}
