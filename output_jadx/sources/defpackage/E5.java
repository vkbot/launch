package defpackage;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class E5 extends D5 {
    public int A0;
    public Z3[] B0;
    public Z3[] C0;
    public int D0;
    public boolean E0;
    public boolean F0;
    public WeakReference G0;
    public WeakReference H0;
    public WeakReference I0;
    public WeakReference J0;
    public final HashSet K0;
    public final C0392p3 L0;
    public ArrayList q0 = new ArrayList();
    public final C0491t2 r0;
    public final C0137f7 s0;
    public int t0;
    public C0519u5 u0;
    public boolean v0;
    public final C0349nc w0;
    public int x0;
    public int y0;
    public int z0;

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, t2] */
    /* JADX WARN: Type inference failed for: r0v2, types: [f7, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v5, types: [p3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v0, types: [p3, java.lang.Object] */
    public E5() {
        ?? obj = new Object();
        obj.a = new ArrayList();
        obj.b = new Object();
        obj.c = this;
        this.r0 = obj;
        ?? obj2 = new Object();
        obj2.b = true;
        obj2.c = true;
        obj2.e = new ArrayList();
        new ArrayList();
        obj2.f = null;
        obj2.g = new Object();
        obj2.h = new ArrayList();
        obj2.a = this;
        obj2.d = this;
        this.s0 = obj2;
        this.u0 = null;
        this.v0 = false;
        this.w0 = new C0349nc();
        this.z0 = 0;
        this.A0 = 0;
        this.B0 = new Z3[4];
        this.C0 = new Z3[4];
        this.D0 = 257;
        this.E0 = false;
        this.F0 = false;
        this.G0 = null;
        this.H0 = null;
        this.I0 = null;
        this.J0 = null;
        this.K0 = new HashSet();
        this.L0 = new Object();
    }

    public static void V(D5 d5, C0519u5 c0519u5, C0392p3 c0392p3) {
        int i;
        int i2;
        if (c0519u5 == null) {
            return;
        }
        if (d5.g0 == 8 || (d5 instanceof Aa) || (d5 instanceof C0211i3)) {
            c0392p3.e = 0;
            c0392p3.f = 0;
            return;
        }
        int[] iArr = d5.p0;
        c0392p3.a = iArr[0];
        c0392p3.b = iArr[1];
        c0392p3.c = d5.q();
        c0392p3.d = d5.k();
        c0392p3.i = false;
        c0392p3.j = 0;
        boolean z = c0392p3.a == 3;
        boolean z2 = c0392p3.b == 3;
        boolean z3 = z && d5.W > 0.0f;
        boolean z4 = z2 && d5.W > 0.0f;
        if (z && d5.t(0) && d5.r == 0 && !z3) {
            c0392p3.a = 2;
            if (z2 && d5.s == 0) {
                c0392p3.a = 1;
            }
            z = false;
        }
        if (z2 && d5.t(1) && d5.s == 0 && !z4) {
            c0392p3.b = 2;
            if (z && d5.r == 0) {
                c0392p3.b = 1;
            }
            z2 = false;
        }
        if (d5.A()) {
            c0392p3.a = 1;
            z = false;
        }
        if (d5.B()) {
            c0392p3.b = 1;
            z2 = false;
        }
        int[] iArr2 = d5.t;
        if (z3) {
            if (iArr2[0] == 4) {
                c0392p3.a = 1;
            } else if (!z2) {
                if (c0392p3.b == 1) {
                    i2 = c0392p3.d;
                } else {
                    c0392p3.a = 2;
                    c0519u5.b(d5, c0392p3);
                    i2 = c0392p3.f;
                }
                c0392p3.a = 1;
                c0392p3.c = (int) (d5.W * i2);
            }
        }
        if (z4) {
            if (iArr2[1] == 4) {
                c0392p3.b = 1;
            } else if (!z) {
                if (c0392p3.a == 1) {
                    i = c0392p3.c;
                } else {
                    c0392p3.b = 2;
                    c0519u5.b(d5, c0392p3);
                    i = c0392p3.e;
                }
                c0392p3.b = 1;
                if (d5.X == -1) {
                    c0392p3.d = (int) (i / d5.W);
                } else {
                    c0392p3.d = (int) (d5.W * i);
                }
            }
        }
        c0519u5.b(d5, c0392p3);
        d5.O(c0392p3.e);
        d5.L(c0392p3.f);
        d5.E = c0392p3.h;
        d5.I(c0392p3.g);
        c0392p3.j = 0;
    }

    @Override // defpackage.D5
    public final void C() {
        this.w0.t();
        this.x0 = 0;
        this.y0 = 0;
        this.q0.clear();
        super.C();
    }

    @Override // defpackage.D5
    public final void F(C0491t2 c0491t2) {
        super.F(c0491t2);
        int size = this.q0.size();
        for (int i = 0; i < size; i++) {
            ((D5) this.q0.get(i)).F(c0491t2);
        }
    }

    @Override // defpackage.D5
    public final void P(boolean z, boolean z2) {
        super.P(z, z2);
        int size = this.q0.size();
        for (int i = 0; i < size; i++) {
            ((D5) this.q0.get(i)).P(z, z2);
        }
    }

    public final void R(D5 d5, int i) {
        if (i == 0) {
            int i2 = this.z0 + 1;
            Z3[] z3Arr = this.C0;
            if (i2 >= z3Arr.length) {
                this.C0 = (Z3[]) Arrays.copyOf(z3Arr, z3Arr.length * 2);
            }
            Z3[] z3Arr2 = this.C0;
            int i3 = this.z0;
            z3Arr2[i3] = new Z3(d5, 0, this.v0);
            this.z0 = i3 + 1;
            return;
        }
        if (i == 1) {
            int i4 = this.A0 + 1;
            Z3[] z3Arr3 = this.B0;
            if (i4 >= z3Arr3.length) {
                this.B0 = (Z3[]) Arrays.copyOf(z3Arr3, z3Arr3.length * 2);
            }
            Z3[] z3Arr4 = this.B0;
            int i5 = this.A0;
            z3Arr4[i5] = new Z3(d5, 1, this.v0);
            this.A0 = i5 + 1;
        }
    }

    public final void S(C0349nc c0349nc) {
        boolean W = W(64);
        b(c0349nc, W);
        int size = this.q0.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            D5 d5 = (D5) this.q0.get(i);
            boolean[] zArr = d5.S;
            zArr[0] = false;
            zArr[1] = false;
            if (d5 instanceof C0211i3) {
                z = true;
            }
        }
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                D5 d52 = (D5) this.q0.get(i2);
                if (d52 instanceof C0211i3) {
                    C0211i3 c0211i3 = (C0211i3) d52;
                    for (int i3 = 0; i3 < c0211i3.r0; i3++) {
                        D5 d53 = c0211i3.q0[i3];
                        if (c0211i3.t0 || d53.c()) {
                            int i4 = c0211i3.s0;
                            if (i4 == 0 || i4 == 1) {
                                d53.S[0] = true;
                            } else if (i4 == 2 || i4 == 3) {
                                d53.S[1] = true;
                            }
                        }
                    }
                }
            }
        }
        HashSet hashSet = this.K0;
        hashSet.clear();
        for (int i5 = 0; i5 < size; i5++) {
            D5 d54 = (D5) this.q0.get(i5);
            d54.getClass();
            boolean z2 = d54 instanceof C0036b9;
            if (z2 || (d54 instanceof Aa)) {
                if (z2) {
                    hashSet.add(d54);
                } else {
                    d54.b(c0349nc, W);
                }
            }
        }
        while (hashSet.size() > 0) {
            int size2 = hashSet.size();
            Iterator it = hashSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                C0036b9 c0036b9 = (C0036b9) ((D5) it.next());
                for (int i6 = 0; i6 < c0036b9.r0; i6++) {
                    if (hashSet.contains(c0036b9.q0[i6])) {
                        c0036b9.b(c0349nc, W);
                        hashSet.remove(c0036b9);
                        break;
                    }
                }
            }
            if (size2 == hashSet.size()) {
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    ((D5) it2.next()).b(c0349nc, W);
                }
                hashSet.clear();
            }
        }
        if (C0349nc.p) {
            HashSet hashSet2 = new HashSet();
            for (int i7 = 0; i7 < size; i7++) {
                D5 d55 = (D5) this.q0.get(i7);
                d55.getClass();
                if (!(d55 instanceof C0036b9) && !(d55 instanceof Aa)) {
                    hashSet2.add(d55);
                }
            }
            a(this, c0349nc, hashSet2, this.p0[0] == 2 ? 0 : 1, false);
            Iterator it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                D5 d56 = (D5) it3.next();
                AbstractC0348nb.n(this, c0349nc, d56);
                d56.b(c0349nc, W);
            }
        } else {
            for (int i8 = 0; i8 < size; i8++) {
                D5 d57 = (D5) this.q0.get(i8);
                if (d57 instanceof E5) {
                    int[] iArr = d57.p0;
                    int i9 = iArr[0];
                    int i10 = iArr[1];
                    if (i9 == 2) {
                        d57.M(1);
                    }
                    if (i10 == 2) {
                        d57.N(1);
                    }
                    d57.b(c0349nc, W);
                    if (i9 == 2) {
                        d57.M(i9);
                    }
                    if (i10 == 2) {
                        d57.N(i10);
                    }
                } else {
                    AbstractC0348nb.n(this, c0349nc, d57);
                    if (!(d57 instanceof C0036b9) && !(d57 instanceof Aa)) {
                        d57.b(c0349nc, W);
                    }
                }
            }
        }
        if (this.z0 > 0) {
            AbstractC0348nb.e(this, c0349nc, null, 0);
        }
        if (this.A0 > 0) {
            AbstractC0348nb.e(this, c0349nc, null, 1);
        }
    }

    public final boolean T(int i, boolean z) {
        boolean z2;
        C0137f7 c0137f7 = this.s0;
        E5 e5 = c0137f7.a;
        boolean z3 = false;
        int j = e5.j(0);
        int j2 = e5.j(1);
        int r = e5.r();
        int s = e5.s();
        ArrayList arrayList = c0137f7.e;
        if (z && (j == 2 || j2 == 2)) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Pn pn = (Pn) it.next();
                if (pn.f == i && !pn.k()) {
                    z = false;
                    break;
                }
            }
            if (i == 0) {
                if (z && j == 2) {
                    e5.M(1);
                    e5.O(c0137f7.d(e5, 0));
                    e5.d.e.d(e5.q());
                }
            } else if (z && j2 == 2) {
                e5.N(1);
                e5.L(c0137f7.d(e5, 1));
                e5.e.e.d(e5.k());
            }
        }
        int[] iArr = e5.p0;
        if (i == 0) {
            int i2 = iArr[0];
            if (i2 == 1 || i2 == 4) {
                int q = e5.q() + r;
                e5.d.i.d(q);
                e5.d.e.d(q - r);
                z2 = true;
            }
            z2 = false;
        } else {
            int i3 = iArr[1];
            if (i3 == 1 || i3 == 4) {
                int k = e5.k() + s;
                e5.e.i.d(k);
                e5.e.e.d(k - s);
                z2 = true;
            }
            z2 = false;
        }
        c0137f7.g();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Pn pn2 = (Pn) it2.next();
            if (pn2.f == i && (pn2.b != e5 || pn2.g)) {
                pn2.e();
            }
        }
        Iterator it3 = arrayList.iterator();
        while (true) {
            if (!it3.hasNext()) {
                z3 = true;
                break;
            }
            Pn pn3 = (Pn) it3.next();
            if (pn3.f == i && (z2 || pn3.b != e5)) {
                if (!pn3.h.j) {
                    break;
                }
                if (!pn3.i.j) {
                    break;
                }
                if (!(pn3 instanceof C0005a4) && !pn3.e.j) {
                    break;
                }
            }
        }
        e5.M(j);
        e5.N(j2);
        return z3;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(31:227|228|229|(1:231)|232|233|(2:234|235)|(3:353|354|(28:356|357|358|359|360|361|362|238|239|(1:243)|244|(6:248|249|250|251|252|253)|325|(1:350)(9:329|330|331|332|333|334|335|336|337)|338|339|260|(4:262|(3:264|(2:270|271)(1:268)|269)|272|273)(4:320|(1:322)|323|324)|274|(6:279|(1:281)|282|283|(1:287)|(1:291))|292|(1:294)(1:319)|295|(1:297)(1:318)|(1:317)(4:299|(1:304)|305|(3:310|(2:312|313)(1:315)|314))|316|(0)(0)|314))|237|238|239|(2:241|243)|244|(7:246|248|249|250|251|252|253)|325|(1:327)|350|338|339|260|(0)(0)|274|(7:277|279|(0)|282|283|(2:285|287)|(2:289|291))|292|(0)(0)|295|(0)(0)|(0)(0)|316|(0)(0)|314) */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x0797, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:204:0x065f  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0675 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0683  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0694  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x06b1  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x07c0  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0818 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0824 A[LOOP:14: B:280:0x0822->B:281:0x0824, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:294:0x088a  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x08a9  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x08b6  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x08f1  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x08f2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:317:0x08ed  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x08b2  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x0896  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x07fd  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x08fe  */
    /* JADX WARN: Removed duplicated region for block: B:603:0x05db  */
    /* JADX WARN: Removed duplicated region for block: B:622:0x0609 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:625:0x061a  */
    /* JADX WARN: Removed duplicated region for block: B:632:0x0639  */
    /* JADX WARN: Removed duplicated region for block: B:639:0x064f  */
    /* JADX WARN: Removed duplicated region for block: B:641:0x0633  */
    /* JADX WARN: Type inference failed for: r5v53, types: [p3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void U() {
        /*
            Method dump skipped, instructions count: 2314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.E5.U():void");
    }

    public final boolean W(int i) {
        return (this.D0 & i) == i;
    }

    @Override // defpackage.D5
    public final void n(StringBuilder sb) {
        sb.append(this.j + ":{\n");
        StringBuilder sb2 = new StringBuilder("  actualWidth:");
        sb2.append(this.U);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("  actualHeight:" + this.V);
        sb.append("\n");
        Iterator it = this.q0.iterator();
        while (it.hasNext()) {
            ((D5) it.next()).n(sb);
            sb.append(",\n");
        }
        sb.append("}");
    }
}
