package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import defpackage.AbstractC0145ff;
import defpackage.AbstractC0353ng;
import defpackage.AbstractC0407pi;
import defpackage.Ag;
import defpackage.C0194hc;
import defpackage.C0220ic;
import defpackage.C0245jc;
import defpackage.C0271kc;
import defpackage.C0297lc;
import defpackage.C0327mg;
import defpackage.C0379og;
import defpackage.C0474sa;
import defpackage.C0530ug;
import defpackage.Eg;
import defpackage.InterfaceC0655zg;
import defpackage.Y7;
import java.util.List;

/* loaded from: classes.dex */
public class LinearLayoutManager extends AbstractC0353ng implements InterfaceC0655zg {
    public final C0194hc A;
    public final C0220ic B;
    public final int C;
    public final int[] D;
    public int p;
    public C0245jc q;
    public Y7 r;
    public boolean s;
    public final boolean t;
    public boolean u;
    public boolean v;
    public final boolean w;
    public int x;
    public int y;
    public C0271kc z;

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, ic] */
    public LinearLayoutManager(int i) {
        this.p = 1;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = true;
        this.x = -1;
        this.y = Integer.MIN_VALUE;
        this.z = null;
        this.A = new C0194hc();
        this.B = new Object();
        this.C = 2;
        this.D = new int[2];
        a1(i);
        c(null);
        if (this.t) {
            this.t = false;
            l0();
        }
    }

    public void A0(Ag ag, int[] iArr) {
        int i;
        int l = ag.a != -1 ? this.r.l() : 0;
        if (this.q.f == -1) {
            i = 0;
        } else {
            i = l;
            l = 0;
        }
        iArr[0] = l;
        iArr[1] = i;
    }

    public void B0(Ag ag, C0245jc c0245jc, C0474sa c0474sa) {
        int i = c0245jc.d;
        if (i < 0 || i >= ag.b()) {
            return;
        }
        c0474sa.a(i, Math.max(0, c0245jc.g));
    }

    public final int C0(Ag ag) {
        if (v() == 0) {
            return 0;
        }
        G0();
        Y7 y7 = this.r;
        boolean z = !this.w;
        return AbstractC0145ff.g(ag, y7, J0(z), I0(z), this, this.w);
    }

    public final int D0(Ag ag) {
        if (v() == 0) {
            return 0;
        }
        G0();
        Y7 y7 = this.r;
        boolean z = !this.w;
        return AbstractC0145ff.h(ag, y7, J0(z), I0(z), this, this.w, this.u);
    }

    public final int E0(Ag ag) {
        if (v() == 0) {
            return 0;
        }
        G0();
        Y7 y7 = this.r;
        boolean z = !this.w;
        return AbstractC0145ff.i(ag, y7, J0(z), I0(z), this, this.w);
    }

    public final int F0(int i) {
        return i != 1 ? i != 2 ? i != 17 ? i != 33 ? i != 66 ? (i == 130 && this.p == 1) ? 1 : Integer.MIN_VALUE : this.p == 0 ? 1 : Integer.MIN_VALUE : this.p == 1 ? -1 : Integer.MIN_VALUE : this.p == 0 ? -1 : Integer.MIN_VALUE : (this.p != 1 && T0()) ? -1 : 1 : (this.p != 1 && T0()) ? 1 : -1;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [jc, java.lang.Object] */
    public final void G0() {
        if (this.q == null) {
            ?? obj = new Object();
            obj.a = true;
            obj.h = 0;
            obj.i = 0;
            obj.k = null;
            this.q = obj;
        }
    }

    public final int H0(C0530ug c0530ug, C0245jc c0245jc, Ag ag, boolean z) {
        int i;
        int i2 = c0245jc.c;
        int i3 = c0245jc.g;
        if (i3 != Integer.MIN_VALUE) {
            if (i2 < 0) {
                c0245jc.g = i3 + i2;
            }
            W0(c0530ug, c0245jc);
        }
        int i4 = c0245jc.c + c0245jc.h;
        while (true) {
            if ((!c0245jc.l && i4 <= 0) || (i = c0245jc.d) < 0 || i >= ag.b()) {
                break;
            }
            C0220ic c0220ic = this.B;
            c0220ic.a = 0;
            c0220ic.b = false;
            c0220ic.c = false;
            c0220ic.d = false;
            U0(c0530ug, ag, c0245jc, c0220ic);
            if (!c0220ic.b) {
                int i5 = c0245jc.b;
                int i6 = c0220ic.a;
                c0245jc.b = (c0245jc.f * i6) + i5;
                if (!c0220ic.c || c0245jc.k != null || !ag.g) {
                    c0245jc.c -= i6;
                    i4 -= i6;
                }
                int i7 = c0245jc.g;
                if (i7 != Integer.MIN_VALUE) {
                    int i8 = i7 + i6;
                    c0245jc.g = i8;
                    int i9 = c0245jc.c;
                    if (i9 < 0) {
                        c0245jc.g = i8 + i9;
                    }
                    W0(c0530ug, c0245jc);
                }
                if (z && c0220ic.d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i2 - c0245jc.c;
    }

    public final View I0(boolean z) {
        return this.u ? N0(0, v(), z) : N0(v() - 1, -1, z);
    }

    @Override // defpackage.AbstractC0353ng
    public final boolean J() {
        return true;
    }

    public final View J0(boolean z) {
        return this.u ? N0(v() - 1, -1, z) : N0(0, v(), z);
    }

    public final int K0() {
        View N0 = N0(0, v(), false);
        if (N0 == null) {
            return -1;
        }
        return AbstractC0353ng.F(N0);
    }

    public final int L0() {
        View N0 = N0(v() - 1, -1, false);
        if (N0 == null) {
            return -1;
        }
        return AbstractC0353ng.F(N0);
    }

    public final View M0(int i, int i2) {
        int i3;
        int i4;
        G0();
        if (i2 <= i && i2 >= i) {
            return u(i);
        }
        if (this.r.e(u(i)) < this.r.k()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        return this.p == 0 ? this.c.w(i, i2, i3, i4) : this.d.w(i, i2, i3, i4);
    }

    public final View N0(int i, int i2, boolean z) {
        G0();
        int i3 = z ? 24579 : 320;
        return this.p == 0 ? this.c.w(i, i2, i3, 320) : this.d.w(i, i2, i3, 320);
    }

    public View O0(C0530ug c0530ug, Ag ag, boolean z, boolean z2) {
        int i;
        int i2;
        int i3;
        G0();
        int v = v();
        if (z2) {
            i2 = v() - 1;
            i = -1;
            i3 = -1;
        } else {
            i = v;
            i2 = 0;
            i3 = 1;
        }
        int b = ag.b();
        int k = this.r.k();
        int g = this.r.g();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (i2 != i) {
            View u = u(i2);
            int F = AbstractC0353ng.F(u);
            int e = this.r.e(u);
            int b2 = this.r.b(u);
            if (F >= 0 && F < b) {
                if (!((C0379og) u.getLayoutParams()).a.k()) {
                    boolean z3 = b2 <= k && e < k;
                    boolean z4 = e >= g && b2 > g;
                    if (!z3 && !z4) {
                        return u;
                    }
                    if (z) {
                        if (!z4) {
                            if (view != null) {
                            }
                            view = u;
                        }
                        view2 = u;
                    } else {
                        if (!z3) {
                            if (view != null) {
                            }
                            view = u;
                        }
                        view2 = u;
                    }
                } else if (view3 == null) {
                    view3 = u;
                }
            }
            i2 += i3;
        }
        return view != null ? view : view2 != null ? view2 : view3;
    }

    public final int P0(int i, C0530ug c0530ug, Ag ag, boolean z) {
        int g;
        int g2 = this.r.g() - i;
        if (g2 <= 0) {
            return 0;
        }
        int i2 = -Z0(-g2, c0530ug, ag);
        int i3 = i + i2;
        if (!z || (g = this.r.g() - i3) <= 0) {
            return i2;
        }
        this.r.p(g);
        return g + i2;
    }

    @Override // defpackage.AbstractC0353ng
    public final void Q(RecyclerView recyclerView) {
    }

    public final int Q0(int i, C0530ug c0530ug, Ag ag, boolean z) {
        int k;
        int k2 = i - this.r.k();
        if (k2 <= 0) {
            return 0;
        }
        int i2 = -Z0(k2, c0530ug, ag);
        int i3 = i + i2;
        if (!z || (k = i3 - this.r.k()) <= 0) {
            return i2;
        }
        this.r.p(-k);
        return i2 - k;
    }

    @Override // defpackage.AbstractC0353ng
    public View R(View view, int i, C0530ug c0530ug, Ag ag) {
        int F0;
        Y0();
        if (v() == 0 || (F0 = F0(i)) == Integer.MIN_VALUE) {
            return null;
        }
        G0();
        c1(F0, (int) (this.r.l() * 0.33333334f), false, ag);
        C0245jc c0245jc = this.q;
        c0245jc.g = Integer.MIN_VALUE;
        c0245jc.a = false;
        H0(c0530ug, c0245jc, ag, true);
        View M0 = F0 == -1 ? this.u ? M0(v() - 1, -1) : M0(0, v()) : this.u ? M0(0, v()) : M0(v() - 1, -1);
        View S0 = F0 == -1 ? S0() : R0();
        if (!S0.hasFocusable()) {
            return M0;
        }
        if (M0 == null) {
            return null;
        }
        return S0;
    }

    public final View R0() {
        return u(this.u ? 0 : v() - 1);
    }

    @Override // defpackage.AbstractC0353ng
    public final void S(AccessibilityEvent accessibilityEvent) {
        super.S(accessibilityEvent);
        if (v() > 0) {
            accessibilityEvent.setFromIndex(K0());
            accessibilityEvent.setToIndex(L0());
        }
    }

    public final View S0() {
        return u(this.u ? v() - 1 : 0);
    }

    public final boolean T0() {
        return A() == 1;
    }

    public void U0(C0530ug c0530ug, Ag ag, C0245jc c0245jc, C0220ic c0220ic) {
        int E;
        int i;
        int i2;
        int i3;
        int i4;
        View b = c0245jc.b(c0530ug);
        if (b == null) {
            c0220ic.b = true;
            return;
        }
        C0379og c0379og = (C0379og) b.getLayoutParams();
        if (c0245jc.k == null) {
            if (this.u == (c0245jc.f == -1)) {
                b(b, -1, false);
            } else {
                b(b, 0, false);
            }
        } else {
            if (this.u == (c0245jc.f == -1)) {
                b(b, -1, true);
            } else {
                b(b, 0, true);
            }
        }
        C0379og c0379og2 = (C0379og) b.getLayoutParams();
        Rect O = this.b.O(b);
        int i5 = O.left + O.right;
        int i6 = O.top + O.bottom;
        int w = AbstractC0353ng.w(this.n, this.l, D() + C() + ((ViewGroup.MarginLayoutParams) c0379og2).leftMargin + ((ViewGroup.MarginLayoutParams) c0379og2).rightMargin + i5, ((ViewGroup.MarginLayoutParams) c0379og2).width, d());
        int w2 = AbstractC0353ng.w(this.o, this.m, B() + E() + ((ViewGroup.MarginLayoutParams) c0379og2).topMargin + ((ViewGroup.MarginLayoutParams) c0379og2).bottomMargin + i6, ((ViewGroup.MarginLayoutParams) c0379og2).height, e());
        if (u0(b, w, w2, c0379og2)) {
            b.measure(w, w2);
        }
        c0220ic.a = this.r.c(b);
        if (this.p == 1) {
            if (T0()) {
                i2 = this.n - D();
                i4 = i2 - this.r.d(b);
            } else {
                int C = C();
                i2 = this.r.d(b) + C;
                i4 = C;
            }
            if (c0245jc.f == -1) {
                i3 = c0245jc.b;
                E = i3 - c0220ic.a;
            } else {
                E = c0245jc.b;
                i3 = c0220ic.a + E;
            }
        } else {
            E = E();
            int d = this.r.d(b) + E;
            if (c0245jc.f == -1) {
                i2 = c0245jc.b;
                i = i2 - c0220ic.a;
            } else {
                i = c0245jc.b;
                i2 = c0220ic.a + i;
            }
            int i7 = i;
            i3 = d;
            i4 = i7;
        }
        AbstractC0353ng.L(b, i4, E, i2, i3);
        if (c0379og.a.k() || c0379og.a.n()) {
            c0220ic.c = true;
        }
        c0220ic.d = b.hasFocusable();
    }

    public void V0(C0530ug c0530ug, Ag ag, C0194hc c0194hc, int i) {
    }

    public final void W0(C0530ug c0530ug, C0245jc c0245jc) {
        if (!c0245jc.a || c0245jc.l) {
            return;
        }
        int i = c0245jc.g;
        int i2 = c0245jc.i;
        if (c0245jc.f == -1) {
            int v = v();
            if (i < 0) {
                return;
            }
            int f = (this.r.f() - i) + i2;
            if (this.u) {
                for (int i3 = 0; i3 < v; i3++) {
                    View u = u(i3);
                    if (this.r.e(u) < f || this.r.o(u) < f) {
                        X0(c0530ug, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = v - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View u2 = u(i5);
                if (this.r.e(u2) < f || this.r.o(u2) < f) {
                    X0(c0530ug, i4, i5);
                    return;
                }
            }
            return;
        }
        if (i < 0) {
            return;
        }
        int i6 = i - i2;
        int v2 = v();
        if (!this.u) {
            for (int i7 = 0; i7 < v2; i7++) {
                View u3 = u(i7);
                if (this.r.b(u3) > i6 || this.r.n(u3) > i6) {
                    X0(c0530ug, 0, i7);
                    return;
                }
            }
            return;
        }
        int i8 = v2 - 1;
        for (int i9 = i8; i9 >= 0; i9--) {
            View u4 = u(i9);
            if (this.r.b(u4) > i6 || this.r.n(u4) > i6) {
                X0(c0530ug, i8, i9);
                return;
            }
        }
    }

    public final void X0(C0530ug c0530ug, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                View u = u(i);
                j0(i);
                c0530ug.h(u);
                i--;
            }
            return;
        }
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            View u2 = u(i3);
            j0(i3);
            c0530ug.h(u2);
        }
    }

    public final void Y0() {
        if (this.p == 1 || !T0()) {
            this.u = this.t;
        } else {
            this.u = !this.t;
        }
    }

    public final int Z0(int i, C0530ug c0530ug, Ag ag) {
        if (v() == 0 || i == 0) {
            return 0;
        }
        G0();
        this.q.a = true;
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        c1(i2, abs, true, ag);
        C0245jc c0245jc = this.q;
        int H0 = H0(c0530ug, c0245jc, ag, false) + c0245jc.g;
        if (H0 < 0) {
            return 0;
        }
        if (abs > H0) {
            i = i2 * H0;
        }
        this.r.p(-i);
        this.q.j = i;
        return i;
    }

    @Override // defpackage.InterfaceC0655zg
    public final PointF a(int i) {
        if (v() == 0) {
            return null;
        }
        int i2 = (i < AbstractC0353ng.F(u(0))) != this.u ? -1 : 1;
        return this.p == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
    }

    public final void a1(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(AbstractC0407pi.h("invalid orientation:", i));
        }
        c(null);
        if (i != this.p || this.r == null) {
            Y7 a = Y7.a(this, i);
            this.r = a;
            this.A.a = a;
            this.p = i;
            l0();
        }
    }

    @Override // defpackage.AbstractC0353ng
    public void b0(C0530ug c0530ug, Ag ag) {
        View focusedChild;
        View focusedChild2;
        View O0;
        int i;
        int i2;
        int i3;
        List list;
        int i4;
        int i5;
        int P0;
        int i6;
        View q;
        int e;
        int i7;
        int i8;
        int i9 = -1;
        if (!(this.z == null && this.x == -1) && ag.b() == 0) {
            g0(c0530ug);
            return;
        }
        C0271kc c0271kc = this.z;
        if (c0271kc != null && (i8 = c0271kc.a) >= 0) {
            this.x = i8;
        }
        G0();
        this.q.a = false;
        Y0();
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.a.c.contains(focusedChild)) {
            focusedChild = null;
        }
        C0194hc c0194hc = this.A;
        if (!c0194hc.e || this.x != -1 || this.z != null) {
            c0194hc.d();
            c0194hc.d = this.u ^ this.v;
            if (!ag.g && (i = this.x) != -1) {
                if (i < 0 || i >= ag.b()) {
                    this.x = -1;
                    this.y = Integer.MIN_VALUE;
                } else {
                    int i10 = this.x;
                    c0194hc.b = i10;
                    C0271kc c0271kc2 = this.z;
                    if (c0271kc2 != null && c0271kc2.a >= 0) {
                        boolean z = c0271kc2.c;
                        c0194hc.d = z;
                        if (z) {
                            c0194hc.c = this.r.g() - this.z.b;
                        } else {
                            c0194hc.c = this.r.k() + this.z.b;
                        }
                    } else if (this.y == Integer.MIN_VALUE) {
                        View q2 = q(i10);
                        if (q2 == null) {
                            if (v() > 0) {
                                c0194hc.d = (this.x < AbstractC0353ng.F(u(0))) == this.u;
                            }
                            c0194hc.a();
                        } else if (this.r.c(q2) > this.r.l()) {
                            c0194hc.a();
                        } else if (this.r.e(q2) - this.r.k() < 0) {
                            c0194hc.c = this.r.k();
                            c0194hc.d = false;
                        } else if (this.r.g() - this.r.b(q2) < 0) {
                            c0194hc.c = this.r.g();
                            c0194hc.d = true;
                        } else {
                            c0194hc.c = c0194hc.d ? this.r.m() + this.r.b(q2) : this.r.e(q2);
                        }
                    } else {
                        boolean z2 = this.u;
                        c0194hc.d = z2;
                        if (z2) {
                            c0194hc.c = this.r.g() - this.y;
                        } else {
                            c0194hc.c = this.r.k() + this.y;
                        }
                    }
                    c0194hc.e = true;
                }
            }
            if (v() != 0) {
                RecyclerView recyclerView2 = this.b;
                if (recyclerView2 == null || (focusedChild2 = recyclerView2.getFocusedChild()) == null || this.a.c.contains(focusedChild2)) {
                    focusedChild2 = null;
                }
                if (focusedChild2 != null) {
                    C0379og c0379og = (C0379og) focusedChild2.getLayoutParams();
                    if (!c0379og.a.k() && c0379og.a.d() >= 0 && c0379og.a.d() < ag.b()) {
                        c0194hc.c(focusedChild2, AbstractC0353ng.F(focusedChild2));
                        c0194hc.e = true;
                    }
                }
                boolean z3 = this.s;
                boolean z4 = this.v;
                if (z3 == z4 && (O0 = O0(c0530ug, ag, c0194hc.d, z4)) != null) {
                    c0194hc.b(O0, AbstractC0353ng.F(O0));
                    if (!ag.g && z0()) {
                        int e2 = this.r.e(O0);
                        int b = this.r.b(O0);
                        int k = this.r.k();
                        int g = this.r.g();
                        boolean z5 = b <= k && e2 < k;
                        boolean z6 = e2 >= g && b > g;
                        if (z5 || z6) {
                            if (c0194hc.d) {
                                k = g;
                            }
                            c0194hc.c = k;
                        }
                    }
                    c0194hc.e = true;
                }
            }
            c0194hc.a();
            c0194hc.b = this.v ? ag.b() - 1 : 0;
            c0194hc.e = true;
        } else if (focusedChild != null && (this.r.e(focusedChild) >= this.r.g() || this.r.b(focusedChild) <= this.r.k())) {
            c0194hc.c(focusedChild, AbstractC0353ng.F(focusedChild));
        }
        C0245jc c0245jc = this.q;
        c0245jc.f = c0245jc.j >= 0 ? 1 : -1;
        int[] iArr = this.D;
        iArr[0] = 0;
        iArr[1] = 0;
        A0(ag, iArr);
        int k2 = this.r.k() + Math.max(0, iArr[0]);
        int h = this.r.h() + Math.max(0, iArr[1]);
        if (ag.g && (i6 = this.x) != -1 && this.y != Integer.MIN_VALUE && (q = q(i6)) != null) {
            if (this.u) {
                i7 = this.r.g() - this.r.b(q);
                e = this.y;
            } else {
                e = this.r.e(q) - this.r.k();
                i7 = this.y;
            }
            int i11 = i7 - e;
            if (i11 > 0) {
                k2 += i11;
            } else {
                h -= i11;
            }
        }
        if (!c0194hc.d ? !this.u : this.u) {
            i9 = 1;
        }
        V0(c0530ug, ag, c0194hc, i9);
        p(c0530ug);
        this.q.l = this.r.i() == 0 && this.r.f() == 0;
        this.q.getClass();
        this.q.i = 0;
        if (c0194hc.d) {
            e1(c0194hc.b, c0194hc.c);
            C0245jc c0245jc2 = this.q;
            c0245jc2.h = k2;
            H0(c0530ug, c0245jc2, ag, false);
            C0245jc c0245jc3 = this.q;
            i3 = c0245jc3.b;
            int i12 = c0245jc3.d;
            int i13 = c0245jc3.c;
            if (i13 > 0) {
                h += i13;
            }
            d1(c0194hc.b, c0194hc.c);
            C0245jc c0245jc4 = this.q;
            c0245jc4.h = h;
            c0245jc4.d += c0245jc4.e;
            H0(c0530ug, c0245jc4, ag, false);
            C0245jc c0245jc5 = this.q;
            i2 = c0245jc5.b;
            int i14 = c0245jc5.c;
            if (i14 > 0) {
                e1(i12, i3);
                C0245jc c0245jc6 = this.q;
                c0245jc6.h = i14;
                H0(c0530ug, c0245jc6, ag, false);
                i3 = this.q.b;
            }
        } else {
            d1(c0194hc.b, c0194hc.c);
            C0245jc c0245jc7 = this.q;
            c0245jc7.h = h;
            H0(c0530ug, c0245jc7, ag, false);
            C0245jc c0245jc8 = this.q;
            i2 = c0245jc8.b;
            int i15 = c0245jc8.d;
            int i16 = c0245jc8.c;
            if (i16 > 0) {
                k2 += i16;
            }
            e1(c0194hc.b, c0194hc.c);
            C0245jc c0245jc9 = this.q;
            c0245jc9.h = k2;
            c0245jc9.d += c0245jc9.e;
            H0(c0530ug, c0245jc9, ag, false);
            C0245jc c0245jc10 = this.q;
            int i17 = c0245jc10.b;
            int i18 = c0245jc10.c;
            if (i18 > 0) {
                d1(i15, i2);
                C0245jc c0245jc11 = this.q;
                c0245jc11.h = i18;
                H0(c0530ug, c0245jc11, ag, false);
                i2 = this.q.b;
            }
            i3 = i17;
        }
        if (v() > 0) {
            if (this.u ^ this.v) {
                int P02 = P0(i2, c0530ug, ag, true);
                i4 = i3 + P02;
                i5 = i2 + P02;
                P0 = Q0(i4, c0530ug, ag, false);
            } else {
                int Q0 = Q0(i3, c0530ug, ag, true);
                i4 = i3 + Q0;
                i5 = i2 + Q0;
                P0 = P0(i5, c0530ug, ag, false);
            }
            i3 = i4 + P0;
            i2 = i5 + P0;
        }
        if (ag.k && v() != 0 && !ag.g && z0()) {
            List list2 = c0530ug.d;
            int size = list2.size();
            int F = AbstractC0353ng.F(u(0));
            int i19 = 0;
            int i20 = 0;
            for (int i21 = 0; i21 < size; i21++) {
                Eg eg = (Eg) list2.get(i21);
                if (!eg.k()) {
                    boolean z7 = eg.d() < F;
                    boolean z8 = this.u;
                    View view = eg.a;
                    if (z7 != z8) {
                        i19 += this.r.c(view);
                    } else {
                        i20 += this.r.c(view);
                    }
                }
            }
            this.q.k = list2;
            if (i19 > 0) {
                e1(AbstractC0353ng.F(S0()), i3);
                C0245jc c0245jc12 = this.q;
                c0245jc12.h = i19;
                c0245jc12.c = 0;
                c0245jc12.a(null);
                H0(c0530ug, this.q, ag, false);
            }
            if (i20 > 0) {
                d1(AbstractC0353ng.F(R0()), i2);
                C0245jc c0245jc13 = this.q;
                c0245jc13.h = i20;
                c0245jc13.c = 0;
                list = null;
                c0245jc13.a(null);
                H0(c0530ug, this.q, ag, false);
            } else {
                list = null;
            }
            this.q.k = list;
        }
        if (ag.g) {
            c0194hc.d();
        } else {
            Y7 y7 = this.r;
            y7.a = y7.l();
        }
        this.s = this.v;
    }

    public void b1(boolean z) {
        c(null);
        if (this.v == z) {
            return;
        }
        this.v = z;
        l0();
    }

    @Override // defpackage.AbstractC0353ng
    public final void c(String str) {
        if (this.z == null) {
            super.c(str);
        }
    }

    @Override // defpackage.AbstractC0353ng
    public void c0(Ag ag) {
        this.z = null;
        this.x = -1;
        this.y = Integer.MIN_VALUE;
        this.A.d();
    }

    public final void c1(int i, int i2, boolean z, Ag ag) {
        int k;
        this.q.l = this.r.i() == 0 && this.r.f() == 0;
        this.q.f = i;
        int[] iArr = this.D;
        iArr[0] = 0;
        iArr[1] = 0;
        A0(ag, iArr);
        int max = Math.max(0, iArr[0]);
        int max2 = Math.max(0, iArr[1]);
        boolean z2 = i == 1;
        C0245jc c0245jc = this.q;
        int i3 = z2 ? max2 : max;
        c0245jc.h = i3;
        if (!z2) {
            max = max2;
        }
        c0245jc.i = max;
        if (z2) {
            c0245jc.h = this.r.h() + i3;
            View R0 = R0();
            C0245jc c0245jc2 = this.q;
            c0245jc2.e = this.u ? -1 : 1;
            int F = AbstractC0353ng.F(R0);
            C0245jc c0245jc3 = this.q;
            c0245jc2.d = F + c0245jc3.e;
            c0245jc3.b = this.r.b(R0);
            k = this.r.b(R0) - this.r.g();
        } else {
            View S0 = S0();
            C0245jc c0245jc4 = this.q;
            c0245jc4.h = this.r.k() + c0245jc4.h;
            C0245jc c0245jc5 = this.q;
            c0245jc5.e = this.u ? 1 : -1;
            int F2 = AbstractC0353ng.F(S0);
            C0245jc c0245jc6 = this.q;
            c0245jc5.d = F2 + c0245jc6.e;
            c0245jc6.b = this.r.e(S0);
            k = (-this.r.e(S0)) + this.r.k();
        }
        C0245jc c0245jc7 = this.q;
        c0245jc7.c = i2;
        if (z) {
            c0245jc7.c = i2 - k;
        }
        c0245jc7.g = k;
    }

    @Override // defpackage.AbstractC0353ng
    public final boolean d() {
        return this.p == 0;
    }

    @Override // defpackage.AbstractC0353ng
    public final void d0(Parcelable parcelable) {
        if (parcelable instanceof C0271kc) {
            C0271kc c0271kc = (C0271kc) parcelable;
            this.z = c0271kc;
            if (this.x != -1) {
                c0271kc.a = -1;
            }
            l0();
        }
    }

    public final void d1(int i, int i2) {
        this.q.c = this.r.g() - i2;
        C0245jc c0245jc = this.q;
        c0245jc.e = this.u ? -1 : 1;
        c0245jc.d = i;
        c0245jc.f = 1;
        c0245jc.b = i2;
        c0245jc.g = Integer.MIN_VALUE;
    }

    @Override // defpackage.AbstractC0353ng
    public final boolean e() {
        return this.p == 1;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.os.Parcelable, kc, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.os.Parcelable, kc, java.lang.Object] */
    @Override // defpackage.AbstractC0353ng
    public final Parcelable e0() {
        C0271kc c0271kc = this.z;
        if (c0271kc != null) {
            ?? obj = new Object();
            obj.a = c0271kc.a;
            obj.b = c0271kc.b;
            obj.c = c0271kc.c;
            return obj;
        }
        ?? obj2 = new Object();
        if (v() > 0) {
            G0();
            boolean z = this.s ^ this.u;
            obj2.c = z;
            if (z) {
                View R0 = R0();
                obj2.b = this.r.g() - this.r.b(R0);
                obj2.a = AbstractC0353ng.F(R0);
            } else {
                View S0 = S0();
                obj2.a = AbstractC0353ng.F(S0);
                obj2.b = this.r.e(S0) - this.r.k();
            }
        } else {
            obj2.a = -1;
        }
        return obj2;
    }

    public final void e1(int i, int i2) {
        this.q.c = i2 - this.r.k();
        C0245jc c0245jc = this.q;
        c0245jc.d = i;
        c0245jc.e = this.u ? 1 : -1;
        c0245jc.f = -1;
        c0245jc.b = i2;
        c0245jc.g = Integer.MIN_VALUE;
    }

    @Override // defpackage.AbstractC0353ng
    public final void h(int i, int i2, Ag ag, C0474sa c0474sa) {
        if (this.p != 0) {
            i = i2;
        }
        if (v() == 0 || i == 0) {
            return;
        }
        G0();
        c1(i > 0 ? 1 : -1, Math.abs(i), true, ag);
        B0(ag, this.q, c0474sa);
    }

    @Override // defpackage.AbstractC0353ng
    public final void i(int i, C0474sa c0474sa) {
        boolean z;
        int i2;
        C0271kc c0271kc = this.z;
        if (c0271kc == null || (i2 = c0271kc.a) < 0) {
            Y0();
            z = this.u;
            i2 = this.x;
            if (i2 == -1) {
                i2 = z ? i - 1 : 0;
            }
        } else {
            z = c0271kc.c;
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.C && i2 >= 0 && i2 < i; i4++) {
            c0474sa.a(i2, 0);
            i2 += i3;
        }
    }

    @Override // defpackage.AbstractC0353ng
    public final int j(Ag ag) {
        return C0(ag);
    }

    @Override // defpackage.AbstractC0353ng
    public int k(Ag ag) {
        return D0(ag);
    }

    @Override // defpackage.AbstractC0353ng
    public int l(Ag ag) {
        return E0(ag);
    }

    @Override // defpackage.AbstractC0353ng
    public final int m(Ag ag) {
        return C0(ag);
    }

    @Override // defpackage.AbstractC0353ng
    public int m0(int i, C0530ug c0530ug, Ag ag) {
        if (this.p == 1) {
            return 0;
        }
        return Z0(i, c0530ug, ag);
    }

    @Override // defpackage.AbstractC0353ng
    public int n(Ag ag) {
        return D0(ag);
    }

    @Override // defpackage.AbstractC0353ng
    public final void n0(int i) {
        this.x = i;
        this.y = Integer.MIN_VALUE;
        C0271kc c0271kc = this.z;
        if (c0271kc != null) {
            c0271kc.a = -1;
        }
        l0();
    }

    @Override // defpackage.AbstractC0353ng
    public int o(Ag ag) {
        return E0(ag);
    }

    @Override // defpackage.AbstractC0353ng
    public int o0(int i, C0530ug c0530ug, Ag ag) {
        if (this.p == 0) {
            return 0;
        }
        return Z0(i, c0530ug, ag);
    }

    @Override // defpackage.AbstractC0353ng
    public final View q(int i) {
        int v = v();
        if (v == 0) {
            return null;
        }
        int F = i - AbstractC0353ng.F(u(0));
        if (F >= 0 && F < v) {
            View u = u(F);
            if (AbstractC0353ng.F(u) == i) {
                return u;
            }
        }
        return super.q(i);
    }

    @Override // defpackage.AbstractC0353ng
    public C0379og r() {
        return new C0379og(-2, -2);
    }

    @Override // defpackage.AbstractC0353ng
    public final boolean v0() {
        if (this.m == 1073741824 || this.l == 1073741824) {
            return false;
        }
        int v = v();
        for (int i = 0; i < v; i++) {
            ViewGroup.LayoutParams layoutParams = u(i).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.AbstractC0353ng
    public void x0(RecyclerView recyclerView, int i) {
        C0297lc c0297lc = new C0297lc(recyclerView.getContext());
        c0297lc.a = i;
        y0(c0297lc);
    }

    @Override // defpackage.AbstractC0353ng
    public boolean z0() {
        return this.z == null && this.s == this.v;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, ic] */
    @SuppressLint({"UnknownNullness"})
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.p = 1;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = true;
        this.x = -1;
        this.y = Integer.MIN_VALUE;
        this.z = null;
        this.A = new C0194hc();
        this.B = new Object();
        this.C = 2;
        this.D = new int[2];
        C0327mg G = AbstractC0353ng.G(context, attributeSet, i, i2);
        a1(G.a);
        boolean z = G.c;
        c(null);
        if (z != this.t) {
            this.t = z;
            l0();
        }
        b1(G.d);
    }
}
