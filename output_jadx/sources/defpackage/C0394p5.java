package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: p5, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0394p5 {
    public int b;
    public boolean c;
    public final D5 d;
    public final int e;
    public C0394p5 f;
    public C0433qi i;
    public HashSet a = null;
    public int g = 0;
    public int h = Integer.MIN_VALUE;

    public C0394p5(D5 d5, int i) {
        this.d = d5;
        this.e = i;
    }

    public final void a(C0394p5 c0394p5, int i) {
        b(c0394p5, i, Integer.MIN_VALUE, false);
    }

    public final boolean b(C0394p5 c0394p5, int i, int i2, boolean z) {
        if (c0394p5 == null) {
            j();
            return true;
        }
        if (!z && !i(c0394p5)) {
            return false;
        }
        this.f = c0394p5;
        if (c0394p5.a == null) {
            c0394p5.a = new HashSet();
        }
        HashSet hashSet = this.f.a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.g = i;
        this.h = i2;
        return true;
    }

    public final void c(int i, On on, ArrayList arrayList) {
        HashSet hashSet = this.a;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                AbstractC0152fm.k(((C0394p5) it.next()).d, i, arrayList, on);
            }
        }
    }

    public final int d() {
        if (this.c) {
            return this.b;
        }
        return 0;
    }

    public final int e() {
        C0394p5 c0394p5;
        if (this.d.g0 == 8) {
            return 0;
        }
        int i = this.h;
        return (i == Integer.MIN_VALUE || (c0394p5 = this.f) == null || c0394p5.d.g0 != 8) ? this.g : i;
    }

    public final C0394p5 f() {
        int i = this.e;
        int p = AbstractC0407pi.p(i);
        D5 d5 = this.d;
        switch (p) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
                return d5.K;
            case 2:
                return d5.L;
            case 3:
                return d5.I;
            case 4:
                return d5.J;
            default:
                throw new AssertionError(AbstractC0407pi.o(i));
        }
    }

    public final boolean g() {
        HashSet hashSet = this.a;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((C0394p5) it.next()).f().h()) {
                return true;
            }
        }
        return false;
    }

    public final boolean h() {
        return this.f != null;
    }

    public final boolean i(C0394p5 c0394p5) {
        if (c0394p5 == null) {
            return false;
        }
        int i = this.e;
        D5 d5 = c0394p5.d;
        int i2 = c0394p5.e;
        if (i2 == i) {
            return i != 6 || (d5.E && this.d.E);
        }
        switch (AbstractC0407pi.p(i)) {
            case 0:
            case 7:
            case 8:
                return false;
            case 1:
            case 3:
                boolean z = i2 == 2 || i2 == 4;
                if (d5 instanceof Aa) {
                    return z || i2 == 8;
                }
                return z;
            case 2:
            case 4:
                boolean z2 = i2 == 3 || i2 == 5;
                if (d5 instanceof Aa) {
                    return z2 || i2 == 9;
                }
                return z2;
            case 5:
                return (i2 == 2 || i2 == 4) ? false : true;
            case 6:
                return (i2 == 6 || i2 == 8 || i2 == 9) ? false : true;
            default:
                throw new AssertionError(AbstractC0407pi.o(i));
        }
    }

    public final void j() {
        HashSet hashSet;
        C0394p5 c0394p5 = this.f;
        if (c0394p5 != null && (hashSet = c0394p5.a) != null) {
            hashSet.remove(this);
            if (this.f.a.size() == 0) {
                this.f.a = null;
            }
        }
        this.a = null;
        this.f = null;
        this.g = 0;
        this.h = Integer.MIN_VALUE;
        this.c = false;
        this.b = 0;
    }

    public final void k() {
        C0433qi c0433qi = this.i;
        if (c0433qi == null) {
            this.i = new C0433qi(1);
        } else {
            c0433qi.c();
        }
    }

    public final void l(int i) {
        this.b = i;
        this.c = true;
    }

    public final String toString() {
        return this.d.h0 + ":" + AbstractC0407pi.o(this.e);
    }
}
