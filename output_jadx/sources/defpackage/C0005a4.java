package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: a4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0005a4 extends Pn {
    public final ArrayList k;
    public int l;

    public C0005a4(D5 d5, int i) {
        super(d5);
        D5 d52;
        this.k = new ArrayList();
        this.f = i;
        D5 d53 = this.b;
        D5 m = d53.m(i);
        while (true) {
            D5 d54 = m;
            d52 = d53;
            d53 = d54;
            if (d53 == null) {
                break;
            } else {
                m = d53.m(this.f);
            }
        }
        this.b = d52;
        int i2 = this.f;
        InterfaceC0111e7 interfaceC0111e7 = i2 == 0 ? d52.d : i2 == 1 ? d52.e : null;
        ArrayList arrayList = this.k;
        arrayList.add(interfaceC0111e7);
        D5 l = d52.l(this.f);
        while (l != null) {
            int i3 = this.f;
            arrayList.add(i3 == 0 ? l.d : i3 == 1 ? l.e : null);
            l = l.l(this.f);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Pn pn = (Pn) it.next();
            int i4 = this.f;
            if (i4 == 0) {
                pn.b.b = this;
            } else if (i4 == 1) {
                pn.b.c = this;
            }
        }
        if (this.f == 0 && ((E5) this.b.T).v0 && arrayList.size() > 1) {
            this.b = ((Pn) arrayList.get(arrayList.size() - 1)).b;
        }
        this.l = this.f == 0 ? this.b.i0 : this.b.j0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:291:0x03a8, code lost:
    
        r0 = r0 - r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00da  */
    @Override // defpackage.InterfaceC0111e7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(defpackage.InterfaceC0111e7 r27) {
        /*
            Method dump skipped, instructions count: 967
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0005a4.a(e7):void");
    }

    @Override // defpackage.Pn
    public final void d() {
        ArrayList arrayList = this.k;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Pn) it.next()).d();
        }
        int size = arrayList.size();
        if (size < 1) {
            return;
        }
        D5 d5 = ((Pn) arrayList.get(0)).b;
        D5 d52 = ((Pn) arrayList.get(size - 1)).b;
        int i = this.f;
        C0163g7 c0163g7 = this.i;
        C0163g7 c0163g72 = this.h;
        if (i == 0) {
            C0394p5 c0394p5 = d5.I;
            C0394p5 c0394p52 = d52.K;
            C0163g7 i2 = Pn.i(c0394p5, 0);
            int e = c0394p5.e();
            D5 m = m();
            if (m != null) {
                e = m.I.e();
            }
            if (i2 != null) {
                Pn.b(c0163g72, i2, e);
            }
            C0163g7 i3 = Pn.i(c0394p52, 0);
            int e2 = c0394p52.e();
            D5 n = n();
            if (n != null) {
                e2 = n.K.e();
            }
            if (i3 != null) {
                Pn.b(c0163g7, i3, -e2);
            }
        } else {
            C0394p5 c0394p53 = d5.J;
            C0394p5 c0394p54 = d52.L;
            C0163g7 i4 = Pn.i(c0394p53, 1);
            int e3 = c0394p53.e();
            D5 m2 = m();
            if (m2 != null) {
                e3 = m2.J.e();
            }
            if (i4 != null) {
                Pn.b(c0163g72, i4, e3);
            }
            C0163g7 i5 = Pn.i(c0394p54, 1);
            int e4 = c0394p54.e();
            D5 n2 = n();
            if (n2 != null) {
                e4 = n2.L.e();
            }
            if (i5 != null) {
                Pn.b(c0163g7, i5, -e4);
            }
        }
        c0163g72.a = this;
        c0163g7.a = this;
    }

    @Override // defpackage.Pn
    public final void e() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.k;
            if (i >= arrayList.size()) {
                return;
            }
            ((Pn) arrayList.get(i)).e();
            i++;
        }
    }

    @Override // defpackage.Pn
    public final void f() {
        this.c = null;
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            ((Pn) it.next()).f();
        }
    }

    @Override // defpackage.Pn
    public final long j() {
        ArrayList arrayList = this.k;
        int size = arrayList.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            j = r4.i.f + ((Pn) arrayList.get(i)).j() + j + r4.h.f;
        }
        return j;
    }

    @Override // defpackage.Pn
    public final boolean k() {
        ArrayList arrayList = this.k;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (!((Pn) arrayList.get(i)).k()) {
                return false;
            }
        }
        return true;
    }

    public final D5 m() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.k;
            if (i >= arrayList.size()) {
                return null;
            }
            D5 d5 = ((Pn) arrayList.get(i)).b;
            if (d5.g0 != 8) {
                return d5;
            }
            i++;
        }
    }

    public final D5 n() {
        ArrayList arrayList = this.k;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            D5 d5 = ((Pn) arrayList.get(size)).b;
            if (d5.g0 != 8) {
                return d5;
            }
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.f == 0 ? "horizontal : " : "vertical : ");
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            Pn pn = (Pn) it.next();
            sb.append("<");
            sb.append(pn);
            sb.append("> ");
        }
        return sb.toString();
    }
}
