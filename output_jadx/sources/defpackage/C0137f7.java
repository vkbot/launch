package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: f7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0137f7 {
    public E5 a;
    public boolean b;
    public boolean c;
    public E5 d;
    public ArrayList e;
    public C0519u5 f;
    public C0392p3 g;
    public ArrayList h;

    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Object, nh] */
    public final void a(C0163g7 c0163g7, int i, ArrayList arrayList, C0354nh c0354nh) {
        Pn pn = c0163g7.d;
        if (pn.c == null) {
            E5 e5 = this.a;
            if (pn != e5.d) {
                C0354nh c0354nh2 = c0354nh;
                if (pn == e5.e) {
                    return;
                }
                if (c0354nh == null) {
                    ?? obj = new Object();
                    obj.a = null;
                    obj.b = new ArrayList();
                    obj.a = pn;
                    arrayList.add(obj);
                    c0354nh2 = obj;
                }
                pn.c = c0354nh2;
                c0354nh2.b.add(pn);
                C0163g7 c0163g72 = pn.h;
                Iterator it = c0163g72.k.iterator();
                while (it.hasNext()) {
                    InterfaceC0111e7 interfaceC0111e7 = (InterfaceC0111e7) it.next();
                    if (interfaceC0111e7 instanceof C0163g7) {
                        a((C0163g7) interfaceC0111e7, i, arrayList, c0354nh2);
                    }
                }
                C0163g7 c0163g73 = pn.i;
                Iterator it2 = c0163g73.k.iterator();
                while (it2.hasNext()) {
                    InterfaceC0111e7 interfaceC0111e72 = (InterfaceC0111e7) it2.next();
                    if (interfaceC0111e72 instanceof C0163g7) {
                        a((C0163g7) interfaceC0111e72, i, arrayList, c0354nh2);
                    }
                }
                if (i == 1 && (pn instanceof Km)) {
                    Iterator it3 = ((Km) pn).k.k.iterator();
                    while (it3.hasNext()) {
                        InterfaceC0111e7 interfaceC0111e73 = (InterfaceC0111e7) it3.next();
                        if (interfaceC0111e73 instanceof C0163g7) {
                            a((C0163g7) interfaceC0111e73, i, arrayList, c0354nh2);
                        }
                    }
                }
                Iterator it4 = c0163g72.l.iterator();
                while (it4.hasNext()) {
                    a((C0163g7) it4.next(), i, arrayList, c0354nh2);
                }
                Iterator it5 = c0163g73.l.iterator();
                while (it5.hasNext()) {
                    a((C0163g7) it5.next(), i, arrayList, c0354nh2);
                }
                if (i == 1 && (pn instanceof Km)) {
                    Iterator it6 = ((Km) pn).k.l.iterator();
                    while (it6.hasNext()) {
                        a((C0163g7) it6.next(), i, arrayList, c0354nh2);
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x0260 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0008 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(defpackage.E5 r17) {
        /*
            Method dump skipped, instructions count: 791
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0137f7.b(E5):void");
    }

    public final void c() {
        ArrayList arrayList = this.e;
        arrayList.clear();
        E5 e5 = this.d;
        e5.d.f();
        e5.e.f();
        arrayList.add(e5.d);
        arrayList.add(e5.e);
        Iterator it = e5.q0.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            D5 d5 = (D5) it.next();
            if (d5 instanceof Aa) {
                Pn pn = new Pn(d5);
                d5.d.f();
                d5.e.f();
                pn.f = ((Aa) d5).u0;
                arrayList.add(pn);
            } else {
                if (d5.x()) {
                    if (d5.b == null) {
                        d5.b = new C0005a4(d5, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(d5.b);
                } else {
                    arrayList.add(d5.d);
                }
                if (d5.y()) {
                    if (d5.c == null) {
                        d5.c = new C0005a4(d5, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(d5.c);
                } else {
                    arrayList.add(d5.e);
                }
                if (d5 instanceof Ga) {
                    arrayList.add(new Pn(d5));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((Pn) it2.next()).f();
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            Pn pn2 = (Pn) it3.next();
            if (pn2.b != e5) {
                pn2.d();
            }
        }
        ArrayList arrayList2 = this.h;
        arrayList2.clear();
        E5 e52 = this.a;
        e(e52.d, 0, arrayList2);
        e(e52.e, 1, arrayList2);
        this.b = false;
    }

    public final int d(E5 e5, int i) {
        ArrayList arrayList;
        int i2;
        long max;
        float f;
        E5 e52 = e5;
        ArrayList arrayList2 = this.h;
        int size = arrayList2.size();
        long j = 0;
        int i3 = 0;
        long j2 = 0;
        while (i3 < size) {
            Pn pn = ((C0354nh) arrayList2.get(i3)).a;
            if (!(pn instanceof C0005a4) ? !(i != 0 ? (pn instanceof Km) : (pn instanceof Ka)) : ((C0005a4) pn).f != i) {
                C0163g7 c0163g7 = (i == 0 ? e52.d : e52.e).h;
                C0163g7 c0163g72 = (i == 0 ? e52.d : e52.e).i;
                boolean contains = pn.h.l.contains(c0163g7);
                C0163g7 c0163g73 = pn.i;
                boolean contains2 = c0163g73.l.contains(c0163g72);
                long j3 = pn.j();
                C0163g7 c0163g74 = pn.h;
                if (contains && contains2) {
                    long b = C0354nh.b(c0163g74, j);
                    arrayList = arrayList2;
                    long a = C0354nh.a(c0163g73, j);
                    long j4 = b - j3;
                    int i4 = c0163g73.f;
                    i2 = i3;
                    if (j4 >= (-i4)) {
                        j4 += i4;
                    }
                    long j5 = c0163g74.f;
                    long j6 = ((-a) - j3) - j5;
                    if (j6 >= j5) {
                        j6 -= j5;
                    }
                    D5 d5 = pn.b;
                    if (i == 0) {
                        f = d5.d0;
                    } else if (i == 1) {
                        f = d5.e0;
                    } else {
                        d5.getClass();
                        f = -1.0f;
                    }
                    float f2 = (float) (f > 0.0f ? (((float) j4) / (1.0f - f)) + (((float) j6) / f) : 0L);
                    max = (c0163g74.f + ((((f2 * f) + 0.5f) + j3) + (((1.0f - f) * f2) + 0.5f))) - c0163g73.f;
                } else {
                    arrayList = arrayList2;
                    i2 = i3;
                    max = contains ? Math.max(C0354nh.b(c0163g74, c0163g74.f), c0163g74.f + j3) : contains2 ? Math.max(-C0354nh.a(c0163g73, c0163g73.f), (-c0163g73.f) + j3) : (pn.j() + c0163g74.f) - c0163g73.f;
                }
            } else {
                arrayList = arrayList2;
                max = j;
                i2 = i3;
            }
            j2 = Math.max(j2, max);
            i3 = i2 + 1;
            arrayList2 = arrayList;
            e52 = e5;
            j = 0;
        }
        return (int) j2;
    }

    public final void e(Pn pn, int i, ArrayList arrayList) {
        C0163g7 c0163g7;
        Iterator it = pn.h.k.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            c0163g7 = pn.i;
            if (!hasNext) {
                break;
            }
            InterfaceC0111e7 interfaceC0111e7 = (InterfaceC0111e7) it.next();
            if (interfaceC0111e7 instanceof C0163g7) {
                a((C0163g7) interfaceC0111e7, i, arrayList, null);
            } else if (interfaceC0111e7 instanceof Pn) {
                a(((Pn) interfaceC0111e7).h, i, arrayList, null);
            }
        }
        Iterator it2 = c0163g7.k.iterator();
        while (it2.hasNext()) {
            InterfaceC0111e7 interfaceC0111e72 = (InterfaceC0111e7) it2.next();
            if (interfaceC0111e72 instanceof C0163g7) {
                a((C0163g7) interfaceC0111e72, i, arrayList, null);
            } else if (interfaceC0111e72 instanceof Pn) {
                a(((Pn) interfaceC0111e72).i, i, arrayList, null);
            }
        }
        if (i == 1) {
            Iterator it3 = ((Km) pn).k.k.iterator();
            while (it3.hasNext()) {
                InterfaceC0111e7 interfaceC0111e73 = (InterfaceC0111e7) it3.next();
                if (interfaceC0111e73 instanceof C0163g7) {
                    a((C0163g7) interfaceC0111e73, i, arrayList, null);
                }
            }
        }
    }

    public final void f(int i, int i2, int i3, int i4, D5 d5) {
        C0392p3 c0392p3 = this.g;
        c0392p3.a = i;
        c0392p3.b = i3;
        c0392p3.c = i2;
        c0392p3.d = i4;
        this.f.b(d5, c0392p3);
        d5.O(c0392p3.e);
        d5.L(c0392p3.f);
        d5.E = c0392p3.h;
        d5.I(c0392p3.g);
    }

    public final void g() {
        C0366o3 c0366o3;
        Iterator it = this.a.q0.iterator();
        while (it.hasNext()) {
            D5 d5 = (D5) it.next();
            if (!d5.a) {
                int[] iArr = d5.p0;
                boolean z = false;
                int i = iArr[0];
                int i2 = iArr[1];
                int i3 = d5.r;
                int i4 = d5.s;
                boolean z2 = i == 2 || (i == 3 && i3 == 1);
                if (i2 == 2 || (i2 == 3 && i4 == 1)) {
                    z = true;
                }
                C0422q7 c0422q7 = d5.d.e;
                boolean z3 = c0422q7.j;
                C0422q7 c0422q72 = d5.e.e;
                boolean z4 = c0422q72.j;
                if (z3 && z4) {
                    f(1, c0422q7.g, 1, c0422q72.g, d5);
                    d5.a = true;
                } else if (z3 && z) {
                    f(1, c0422q7.g, 2, c0422q72.g, d5);
                    if (i2 == 3) {
                        d5.e.e.m = d5.k();
                    } else {
                        d5.e.e.d(d5.k());
                        d5.a = true;
                    }
                } else if (z4 && z2) {
                    f(2, c0422q7.g, 1, c0422q72.g, d5);
                    if (i == 3) {
                        d5.d.e.m = d5.q();
                    } else {
                        d5.d.e.d(d5.q());
                        d5.a = true;
                    }
                }
                if (d5.a && (c0366o3 = d5.e.l) != null) {
                    c0366o3.d(d5.a0);
                }
            }
        }
    }
}
