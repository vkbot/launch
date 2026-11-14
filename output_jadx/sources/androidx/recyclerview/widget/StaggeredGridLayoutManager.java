package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import defpackage.AbstractC0145ff;
import defpackage.AbstractC0205hn;
import defpackage.AbstractC0353ng;
import defpackage.Ag;
import defpackage.Ai;
import defpackage.C0297lc;
import defpackage.C0327mg;
import defpackage.C0379og;
import defpackage.C0474sa;
import defpackage.C0530ug;
import defpackage.C0582wi;
import defpackage.C0607xi;
import defpackage.C0657zi;
import defpackage.InterfaceC0655zg;
import defpackage.J2;
import defpackage.K1;
import defpackage.Pb;
import defpackage.Rm;
import defpackage.Y7;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends AbstractC0353ng implements InterfaceC0655zg {
    public final K1 B;
    public final int C;
    public boolean D;
    public boolean E;
    public C0657zi F;
    public final Rect G;
    public final C0582wi H;
    public final boolean I;
    public int[] J;
    public final J2 K;
    public final int p;
    public final Ai[] q;
    public final Y7 r;
    public final Y7 s;
    public final int t;
    public int u;
    public final Pb v;
    public boolean w;
    public final BitSet y;
    public boolean x = false;
    public int z = -1;
    public int A = Integer.MIN_VALUE;

    /* JADX WARN: Type inference failed for: r6v3, types: [Pb, java.lang.Object] */
    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.p = -1;
        this.w = false;
        K1 k1 = new K1(17, false);
        this.B = k1;
        this.C = 2;
        this.G = new Rect();
        this.H = new C0582wi(this);
        this.I = true;
        this.K = new J2(11, this);
        C0327mg G = AbstractC0353ng.G(context, attributeSet, i, i2);
        int i3 = G.a;
        if (i3 != 0 && i3 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        c(null);
        if (i3 != this.t) {
            this.t = i3;
            Y7 y7 = this.r;
            this.r = this.s;
            this.s = y7;
            l0();
        }
        int i4 = G.b;
        c(null);
        if (i4 != this.p) {
            k1.d();
            l0();
            this.p = i4;
            this.y = new BitSet(this.p);
            this.q = new Ai[this.p];
            for (int i5 = 0; i5 < this.p; i5++) {
                this.q[i5] = new Ai(this, i5);
            }
            l0();
        }
        boolean z = G.c;
        c(null);
        C0657zi c0657zi = this.F;
        if (c0657zi != null && c0657zi.h != z) {
            c0657zi.h = z;
        }
        this.w = z;
        l0();
        ?? obj = new Object();
        obj.a = true;
        obj.f = 0;
        obj.g = 0;
        this.v = obj;
        this.r = Y7.a(this, this.t);
        this.s = Y7.a(this, 1 - this.t);
    }

    public static int d1(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    public final int A0(int i) {
        if (v() == 0) {
            return this.x ? 1 : -1;
        }
        return (i < K0()) != this.x ? -1 : 1;
    }

    public final boolean B0() {
        int K0;
        if (v() != 0 && this.C != 0 && this.g) {
            if (this.x) {
                K0 = L0();
                K0();
            } else {
                K0 = K0();
                L0();
            }
            K1 k1 = this.B;
            if (K0 == 0 && P0() != null) {
                k1.d();
                this.f = true;
                l0();
                return true;
            }
        }
        return false;
    }

    public final int C0(Ag ag) {
        if (v() == 0) {
            return 0;
        }
        Y7 y7 = this.r;
        boolean z = !this.I;
        return AbstractC0145ff.g(ag, y7, H0(z), G0(z), this, this.I);
    }

    public final int D0(Ag ag) {
        if (v() == 0) {
            return 0;
        }
        Y7 y7 = this.r;
        boolean z = !this.I;
        return AbstractC0145ff.h(ag, y7, H0(z), G0(z), this, this.I, this.x);
    }

    public final int E0(Ag ag) {
        if (v() == 0) {
            return 0;
        }
        Y7 y7 = this.r;
        boolean z = !this.I;
        return AbstractC0145ff.i(ag, y7, H0(z), G0(z), this, this.I);
    }

    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [int, boolean] */
    public final int F0(C0530ug c0530ug, Pb pb, Ag ag) {
        Ai ai;
        ?? r6;
        int i;
        int h;
        int c;
        int k;
        int c2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = 0;
        int i7 = 1;
        this.y.set(0, this.p, true);
        Pb pb2 = this.v;
        int i8 = pb2.i ? pb.e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE : pb.e == 1 ? pb.g + pb.b : pb.f - pb.b;
        int i9 = pb.e;
        for (int i10 = 0; i10 < this.p; i10++) {
            if (!this.q[i10].a.isEmpty()) {
                c1(this.q[i10], i9, i8);
            }
        }
        int g = this.x ? this.r.g() : this.r.k();
        boolean z = false;
        while (true) {
            int i11 = pb.c;
            if (((i11 < 0 || i11 >= ag.b()) ? i6 : i7) == 0 || (!pb2.i && this.y.isEmpty())) {
                break;
            }
            View view = c0530ug.k(pb.c, Long.MAX_VALUE).a;
            pb.c += pb.d;
            C0607xi c0607xi = (C0607xi) view.getLayoutParams();
            int d = c0607xi.a.d();
            K1 k1 = this.B;
            int[] iArr = (int[]) k1.b;
            int i12 = (iArr == null || d >= iArr.length) ? -1 : iArr[d];
            if (i12 == -1) {
                if (T0(pb.e)) {
                    i5 = this.p - i7;
                    i4 = -1;
                    i3 = -1;
                } else {
                    i3 = i7;
                    i4 = this.p;
                    i5 = i6;
                }
                Ai ai2 = null;
                if (pb.e == i7) {
                    int k2 = this.r.k();
                    int i13 = Integer.MAX_VALUE;
                    while (i5 != i4) {
                        Ai ai3 = this.q[i5];
                        int f = ai3.f(k2);
                        if (f < i13) {
                            i13 = f;
                            ai2 = ai3;
                        }
                        i5 += i3;
                    }
                } else {
                    int g2 = this.r.g();
                    int i14 = Integer.MIN_VALUE;
                    while (i5 != i4) {
                        Ai ai4 = this.q[i5];
                        int h2 = ai4.h(g2);
                        if (h2 > i14) {
                            ai2 = ai4;
                            i14 = h2;
                        }
                        i5 += i3;
                    }
                }
                ai = ai2;
                k1.v(d);
                ((int[]) k1.b)[d] = ai.e;
            } else {
                ai = this.q[i12];
            }
            c0607xi.e = ai;
            if (pb.e == 1) {
                r6 = 0;
                b(view, -1, false);
            } else {
                r6 = 0;
                b(view, 0, false);
            }
            if (this.t == 1) {
                i = 1;
                R0(view, AbstractC0353ng.w(this.u, this.l, r6, ((ViewGroup.MarginLayoutParams) c0607xi).width, r6), AbstractC0353ng.w(this.o, this.m, B() + E(), ((ViewGroup.MarginLayoutParams) c0607xi).height, true));
            } else {
                i = 1;
                R0(view, AbstractC0353ng.w(this.n, this.l, D() + C(), ((ViewGroup.MarginLayoutParams) c0607xi).width, true), AbstractC0353ng.w(this.u, this.m, 0, ((ViewGroup.MarginLayoutParams) c0607xi).height, false));
            }
            if (pb.e == i) {
                c = ai.f(g);
                h = this.r.c(view) + c;
            } else {
                h = ai.h(g);
                c = h - this.r.c(view);
            }
            if (pb.e == 1) {
                Ai ai5 = c0607xi.e;
                ai5.getClass();
                C0607xi c0607xi2 = (C0607xi) view.getLayoutParams();
                c0607xi2.e = ai5;
                ArrayList arrayList = ai5.a;
                arrayList.add(view);
                ai5.c = Integer.MIN_VALUE;
                if (arrayList.size() == 1) {
                    ai5.b = Integer.MIN_VALUE;
                }
                if (c0607xi2.a.k() || c0607xi2.a.n()) {
                    ai5.d = ai5.f.r.c(view) + ai5.d;
                }
            } else {
                Ai ai6 = c0607xi.e;
                ai6.getClass();
                C0607xi c0607xi3 = (C0607xi) view.getLayoutParams();
                c0607xi3.e = ai6;
                ArrayList arrayList2 = ai6.a;
                arrayList2.add(0, view);
                ai6.b = Integer.MIN_VALUE;
                if (arrayList2.size() == 1) {
                    ai6.c = Integer.MIN_VALUE;
                }
                if (c0607xi3.a.k() || c0607xi3.a.n()) {
                    ai6.d = ai6.f.r.c(view) + ai6.d;
                }
            }
            if (Q0() && this.t == 1) {
                c2 = this.s.g() - (((this.p - 1) - ai.e) * this.u);
                k = c2 - this.s.c(view);
            } else {
                k = this.s.k() + (ai.e * this.u);
                c2 = this.s.c(view) + k;
            }
            if (this.t == 1) {
                AbstractC0353ng.L(view, k, c, c2, h);
            } else {
                AbstractC0353ng.L(view, c, k, h, c2);
            }
            c1(ai, pb2.e, i8);
            V0(c0530ug, pb2);
            if (pb2.h && view.hasFocusable()) {
                i2 = 0;
                this.y.set(ai.e, false);
            } else {
                i2 = 0;
            }
            i6 = i2;
            i7 = 1;
            z = true;
        }
        int i15 = i6;
        if (!z) {
            V0(c0530ug, pb2);
        }
        int k3 = pb2.e == -1 ? this.r.k() - N0(this.r.k()) : M0(this.r.g()) - this.r.g();
        return k3 > 0 ? Math.min(pb.b, k3) : i15;
    }

    public final View G0(boolean z) {
        int k = this.r.k();
        int g = this.r.g();
        View view = null;
        for (int v = v() - 1; v >= 0; v--) {
            View u = u(v);
            int e = this.r.e(u);
            int b = this.r.b(u);
            if (b > k && e < g) {
                if (b <= g || !z) {
                    return u;
                }
                if (view == null) {
                    view = u;
                }
            }
        }
        return view;
    }

    public final View H0(boolean z) {
        int k = this.r.k();
        int g = this.r.g();
        int v = v();
        View view = null;
        for (int i = 0; i < v; i++) {
            View u = u(i);
            int e = this.r.e(u);
            if (this.r.b(u) > k && e < g) {
                if (e >= k || !z) {
                    return u;
                }
                if (view == null) {
                    view = u;
                }
            }
        }
        return view;
    }

    public final void I0(C0530ug c0530ug, Ag ag, boolean z) {
        int g;
        int M0 = M0(Integer.MIN_VALUE);
        if (M0 != Integer.MIN_VALUE && (g = this.r.g() - M0) > 0) {
            int i = g - (-Z0(-g, c0530ug, ag));
            if (!z || i <= 0) {
                return;
            }
            this.r.p(i);
        }
    }

    @Override // defpackage.AbstractC0353ng
    public final boolean J() {
        return this.C != 0;
    }

    public final void J0(C0530ug c0530ug, Ag ag, boolean z) {
        int k;
        int N0 = N0(Integer.MAX_VALUE);
        if (N0 != Integer.MAX_VALUE && (k = N0 - this.r.k()) > 0) {
            int Z0 = k - Z0(k, c0530ug, ag);
            if (!z || Z0 <= 0) {
                return;
            }
            this.r.p(-Z0);
        }
    }

    public final int K0() {
        if (v() == 0) {
            return 0;
        }
        return AbstractC0353ng.F(u(0));
    }

    public final int L0() {
        int v = v();
        if (v == 0) {
            return 0;
        }
        return AbstractC0353ng.F(u(v - 1));
    }

    @Override // defpackage.AbstractC0353ng
    public final void M(int i) {
        super.M(i);
        for (int i2 = 0; i2 < this.p; i2++) {
            Ai ai = this.q[i2];
            int i3 = ai.b;
            if (i3 != Integer.MIN_VALUE) {
                ai.b = i3 + i;
            }
            int i4 = ai.c;
            if (i4 != Integer.MIN_VALUE) {
                ai.c = i4 + i;
            }
        }
    }

    public final int M0(int i) {
        int f = this.q[0].f(i);
        for (int i2 = 1; i2 < this.p; i2++) {
            int f2 = this.q[i2].f(i);
            if (f2 > f) {
                f = f2;
            }
        }
        return f;
    }

    @Override // defpackage.AbstractC0353ng
    public final void N(int i) {
        super.N(i);
        for (int i2 = 0; i2 < this.p; i2++) {
            Ai ai = this.q[i2];
            int i3 = ai.b;
            if (i3 != Integer.MIN_VALUE) {
                ai.b = i3 + i;
            }
            int i4 = ai.c;
            if (i4 != Integer.MIN_VALUE) {
                ai.c = i4 + i;
            }
        }
    }

    public final int N0(int i) {
        int h = this.q[0].h(i);
        for (int i2 = 1; i2 < this.p; i2++) {
            int h2 = this.q[i2].h(i);
            if (h2 < h) {
                h = h2;
            }
        }
        return h;
    }

    @Override // defpackage.AbstractC0353ng
    public final void O() {
        this.B.d();
        for (int i = 0; i < this.p; i++) {
            this.q[i].b();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00cc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void O0(int r11, int r12, int r13) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.O0(int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ff A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x002c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View P0() {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.P0():android.view.View");
    }

    @Override // defpackage.AbstractC0353ng
    public final void Q(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.b;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(this.K);
        }
        for (int i = 0; i < this.p; i++) {
            this.q[i].b();
        }
        recyclerView.requestLayout();
    }

    public final boolean Q0() {
        return A() == 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x004d, code lost:
    
        if (r8.t == 1) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0052, code lost:
    
        if (r8.t == 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x005f, code lost:
    
        if (Q0() == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x006c, code lost:
    
        if (Q0() == false) goto L46;
     */
    @Override // defpackage.AbstractC0353ng
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View R(android.view.View r9, int r10, defpackage.C0530ug r11, defpackage.Ag r12) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.R(android.view.View, int, ug, Ag):android.view.View");
    }

    public final void R0(View view, int i, int i2) {
        RecyclerView recyclerView = this.b;
        Rect rect = this.G;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.O(view));
        }
        C0607xi c0607xi = (C0607xi) view.getLayoutParams();
        int d1 = d1(i, ((ViewGroup.MarginLayoutParams) c0607xi).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) c0607xi).rightMargin + rect.right);
        int d12 = d1(i2, ((ViewGroup.MarginLayoutParams) c0607xi).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) c0607xi).bottomMargin + rect.bottom);
        if (u0(view, d1, d12, c0607xi)) {
            view.measure(d1, d12);
        }
    }

    @Override // defpackage.AbstractC0353ng
    public final void S(AccessibilityEvent accessibilityEvent) {
        super.S(accessibilityEvent);
        if (v() > 0) {
            View H0 = H0(false);
            View G0 = G0(false);
            if (H0 == null || G0 == null) {
                return;
            }
            int F = AbstractC0353ng.F(H0);
            int F2 = AbstractC0353ng.F(G0);
            if (F < F2) {
                accessibilityEvent.setFromIndex(F);
                accessibilityEvent.setToIndex(F2);
            } else {
                accessibilityEvent.setFromIndex(F2);
                accessibilityEvent.setToIndex(F);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:254:0x0402, code lost:
    
        if (B0() != false) goto L247;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void S0(defpackage.C0530ug r17, defpackage.Ag r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 1056
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.S0(ug, Ag, boolean):void");
    }

    public final boolean T0(int i) {
        if (this.t == 0) {
            return (i == -1) != this.x;
        }
        return ((i == -1) == this.x) == Q0();
    }

    public final void U0(int i, Ag ag) {
        int K0;
        int i2;
        if (i > 0) {
            K0 = L0();
            i2 = 1;
        } else {
            K0 = K0();
            i2 = -1;
        }
        Pb pb = this.v;
        pb.a = true;
        b1(K0, ag);
        a1(i2);
        pb.c = K0 + pb.d;
        pb.b = Math.abs(i);
    }

    public final void V0(C0530ug c0530ug, Pb pb) {
        if (!pb.a || pb.i) {
            return;
        }
        if (pb.b == 0) {
            if (pb.e == -1) {
                W0(c0530ug, pb.g);
                return;
            } else {
                X0(c0530ug, pb.f);
                return;
            }
        }
        int i = 1;
        if (pb.e == -1) {
            int i2 = pb.f;
            int h = this.q[0].h(i2);
            while (i < this.p) {
                int h2 = this.q[i].h(i2);
                if (h2 > h) {
                    h = h2;
                }
                i++;
            }
            int i3 = i2 - h;
            W0(c0530ug, i3 < 0 ? pb.g : pb.g - Math.min(i3, pb.b));
            return;
        }
        int i4 = pb.g;
        int f = this.q[0].f(i4);
        while (i < this.p) {
            int f2 = this.q[i].f(i4);
            if (f2 < f) {
                f = f2;
            }
            i++;
        }
        int i5 = f - pb.g;
        X0(c0530ug, i5 < 0 ? pb.f : Math.min(i5, pb.b) + pb.f);
    }

    @Override // defpackage.AbstractC0353ng
    public final void W(int i, int i2) {
        O0(i, i2, 1);
    }

    public final void W0(C0530ug c0530ug, int i) {
        for (int v = v() - 1; v >= 0; v--) {
            View u = u(v);
            if (this.r.e(u) < i || this.r.o(u) < i) {
                return;
            }
            C0607xi c0607xi = (C0607xi) u.getLayoutParams();
            c0607xi.getClass();
            if (c0607xi.e.a.size() == 1) {
                return;
            }
            Ai ai = c0607xi.e;
            ArrayList arrayList = ai.a;
            int size = arrayList.size();
            View view = (View) arrayList.remove(size - 1);
            C0607xi c0607xi2 = (C0607xi) view.getLayoutParams();
            c0607xi2.e = null;
            if (c0607xi2.a.k() || c0607xi2.a.n()) {
                ai.d -= ai.f.r.c(view);
            }
            if (size == 1) {
                ai.b = Integer.MIN_VALUE;
            }
            ai.c = Integer.MIN_VALUE;
            i0(u, c0530ug);
        }
    }

    @Override // defpackage.AbstractC0353ng
    public final void X() {
        this.B.d();
        l0();
    }

    public final void X0(C0530ug c0530ug, int i) {
        while (v() > 0) {
            View u = u(0);
            if (this.r.b(u) > i || this.r.n(u) > i) {
                return;
            }
            C0607xi c0607xi = (C0607xi) u.getLayoutParams();
            c0607xi.getClass();
            if (c0607xi.e.a.size() == 1) {
                return;
            }
            Ai ai = c0607xi.e;
            ArrayList arrayList = ai.a;
            View view = (View) arrayList.remove(0);
            C0607xi c0607xi2 = (C0607xi) view.getLayoutParams();
            c0607xi2.e = null;
            if (arrayList.size() == 0) {
                ai.c = Integer.MIN_VALUE;
            }
            if (c0607xi2.a.k() || c0607xi2.a.n()) {
                ai.d -= ai.f.r.c(view);
            }
            ai.b = Integer.MIN_VALUE;
            i0(u, c0530ug);
        }
    }

    @Override // defpackage.AbstractC0353ng
    public final void Y(int i, int i2) {
        O0(i, i2, 8);
    }

    public final void Y0() {
        if (this.t == 1 || !Q0()) {
            this.x = this.w;
        } else {
            this.x = !this.w;
        }
    }

    @Override // defpackage.AbstractC0353ng
    public final void Z(int i, int i2) {
        O0(i, i2, 2);
    }

    public final int Z0(int i, C0530ug c0530ug, Ag ag) {
        if (v() == 0 || i == 0) {
            return 0;
        }
        U0(i, ag);
        Pb pb = this.v;
        int F0 = F0(c0530ug, pb, ag);
        if (pb.b >= F0) {
            i = i < 0 ? -F0 : F0;
        }
        this.r.p(-i);
        this.D = this.x;
        pb.b = 0;
        V0(c0530ug, pb);
        return i;
    }

    @Override // defpackage.InterfaceC0655zg
    public final PointF a(int i) {
        int A0 = A0(i);
        PointF pointF = new PointF();
        if (A0 == 0) {
            return null;
        }
        if (this.t == 0) {
            pointF.x = A0;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = A0;
        }
        return pointF;
    }

    @Override // defpackage.AbstractC0353ng
    public final void a0(int i, int i2) {
        O0(i, i2, 4);
    }

    public final void a1(int i) {
        Pb pb = this.v;
        pb.e = i;
        pb.d = this.x != (i == -1) ? -1 : 1;
    }

    @Override // defpackage.AbstractC0353ng
    public final void b0(C0530ug c0530ug, Ag ag) {
        S0(c0530ug, ag, true);
    }

    public final void b1(int i, Ag ag) {
        int i2;
        int i3;
        int i4;
        Pb pb = this.v;
        boolean z = false;
        pb.b = 0;
        pb.c = i;
        C0297lc c0297lc = this.e;
        if (!(c0297lc != null && c0297lc.e) || (i4 = ag.a) == -1) {
            i2 = 0;
            i3 = 0;
        } else {
            if (this.x == (i4 < i)) {
                i2 = this.r.l();
                i3 = 0;
            } else {
                i3 = this.r.l();
                i2 = 0;
            }
        }
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || !recyclerView.h) {
            pb.g = this.r.f() + i2;
            pb.f = -i3;
        } else {
            pb.f = this.r.k() - i3;
            pb.g = this.r.g() + i2;
        }
        pb.h = false;
        pb.a = true;
        if (this.r.i() == 0 && this.r.f() == 0) {
            z = true;
        }
        pb.i = z;
    }

    @Override // defpackage.AbstractC0353ng
    public final void c(String str) {
        if (this.F == null) {
            super.c(str);
        }
    }

    @Override // defpackage.AbstractC0353ng
    public final void c0(Ag ag) {
        this.z = -1;
        this.A = Integer.MIN_VALUE;
        this.F = null;
        this.H.a();
    }

    public final void c1(Ai ai, int i, int i2) {
        int i3 = ai.d;
        int i4 = ai.e;
        if (i != -1) {
            int i5 = ai.c;
            if (i5 == Integer.MIN_VALUE) {
                ai.a();
                i5 = ai.c;
            }
            if (i5 - i3 >= i2) {
                this.y.set(i4, false);
                return;
            }
            return;
        }
        int i6 = ai.b;
        if (i6 == Integer.MIN_VALUE) {
            View view = (View) ai.a.get(0);
            C0607xi c0607xi = (C0607xi) view.getLayoutParams();
            ai.b = ai.f.r.e(view);
            c0607xi.getClass();
            i6 = ai.b;
        }
        if (i6 + i3 <= i2) {
            this.y.set(i4, false);
        }
    }

    @Override // defpackage.AbstractC0353ng
    public final boolean d() {
        return this.t == 0;
    }

    @Override // defpackage.AbstractC0353ng
    public final void d0(Parcelable parcelable) {
        if (parcelable instanceof C0657zi) {
            C0657zi c0657zi = (C0657zi) parcelable;
            this.F = c0657zi;
            if (this.z != -1) {
                c0657zi.d = null;
                c0657zi.c = 0;
                c0657zi.a = -1;
                c0657zi.b = -1;
                c0657zi.d = null;
                c0657zi.c = 0;
                c0657zi.e = 0;
                c0657zi.f = null;
                c0657zi.g = null;
            }
            l0();
        }
    }

    @Override // defpackage.AbstractC0353ng
    public final boolean e() {
        return this.t == 1;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.os.Parcelable, java.lang.Object, zi] */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.os.Parcelable, java.lang.Object, zi] */
    @Override // defpackage.AbstractC0353ng
    public final Parcelable e0() {
        int h;
        int k;
        int[] iArr;
        C0657zi c0657zi = this.F;
        if (c0657zi != null) {
            ?? obj = new Object();
            obj.c = c0657zi.c;
            obj.a = c0657zi.a;
            obj.b = c0657zi.b;
            obj.d = c0657zi.d;
            obj.e = c0657zi.e;
            obj.f = c0657zi.f;
            obj.h = c0657zi.h;
            obj.i = c0657zi.i;
            obj.j = c0657zi.j;
            obj.g = c0657zi.g;
            return obj;
        }
        ?? obj2 = new Object();
        obj2.h = this.w;
        obj2.i = this.D;
        obj2.j = this.E;
        K1 k1 = this.B;
        if (k1 == null || (iArr = (int[]) k1.b) == null) {
            obj2.e = 0;
        } else {
            obj2.f = iArr;
            obj2.e = iArr.length;
            obj2.g = (ArrayList) k1.c;
        }
        if (v() > 0) {
            obj2.a = this.D ? L0() : K0();
            View G0 = this.x ? G0(true) : H0(true);
            obj2.b = G0 != null ? AbstractC0353ng.F(G0) : -1;
            int i = this.p;
            obj2.c = i;
            obj2.d = new int[i];
            for (int i2 = 0; i2 < this.p; i2++) {
                if (this.D) {
                    h = this.q[i2].f(Integer.MIN_VALUE);
                    if (h != Integer.MIN_VALUE) {
                        k = this.r.g();
                        h -= k;
                        obj2.d[i2] = h;
                    } else {
                        obj2.d[i2] = h;
                    }
                } else {
                    h = this.q[i2].h(Integer.MIN_VALUE);
                    if (h != Integer.MIN_VALUE) {
                        k = this.r.k();
                        h -= k;
                        obj2.d[i2] = h;
                    } else {
                        obj2.d[i2] = h;
                    }
                }
            }
        } else {
            obj2.a = -1;
            obj2.b = -1;
            obj2.c = 0;
        }
        return obj2;
    }

    @Override // defpackage.AbstractC0353ng
    public final boolean f(C0379og c0379og) {
        return c0379og instanceof C0607xi;
    }

    @Override // defpackage.AbstractC0353ng
    public final void f0(int i) {
        if (i == 0) {
            B0();
        }
    }

    @Override // defpackage.AbstractC0353ng
    public final void h(int i, int i2, Ag ag, C0474sa c0474sa) {
        Pb pb;
        int f;
        int i3;
        if (this.t != 0) {
            i = i2;
        }
        if (v() == 0 || i == 0) {
            return;
        }
        U0(i, ag);
        int[] iArr = this.J;
        if (iArr == null || iArr.length < this.p) {
            this.J = new int[this.p];
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = this.p;
            pb = this.v;
            if (i4 >= i6) {
                break;
            }
            if (pb.d == -1) {
                f = pb.f;
                i3 = this.q[i4].h(f);
            } else {
                f = this.q[i4].f(pb.g);
                i3 = pb.g;
            }
            int i7 = f - i3;
            if (i7 >= 0) {
                this.J[i5] = i7;
                i5++;
            }
            i4++;
        }
        Arrays.sort(this.J, 0, i5);
        for (int i8 = 0; i8 < i5; i8++) {
            int i9 = pb.c;
            if (i9 < 0 || i9 >= ag.b()) {
                return;
            }
            c0474sa.a(pb.c, this.J[i8]);
            pb.c += pb.d;
        }
    }

    @Override // defpackage.AbstractC0353ng
    public final int j(Ag ag) {
        return C0(ag);
    }

    @Override // defpackage.AbstractC0353ng
    public final int k(Ag ag) {
        return D0(ag);
    }

    @Override // defpackage.AbstractC0353ng
    public final int l(Ag ag) {
        return E0(ag);
    }

    @Override // defpackage.AbstractC0353ng
    public final int m(Ag ag) {
        return C0(ag);
    }

    @Override // defpackage.AbstractC0353ng
    public final int m0(int i, C0530ug c0530ug, Ag ag) {
        return Z0(i, c0530ug, ag);
    }

    @Override // defpackage.AbstractC0353ng
    public final int n(Ag ag) {
        return D0(ag);
    }

    @Override // defpackage.AbstractC0353ng
    public final void n0(int i) {
        C0657zi c0657zi = this.F;
        if (c0657zi != null && c0657zi.a != i) {
            c0657zi.d = null;
            c0657zi.c = 0;
            c0657zi.a = -1;
            c0657zi.b = -1;
        }
        this.z = i;
        this.A = Integer.MIN_VALUE;
        l0();
    }

    @Override // defpackage.AbstractC0353ng
    public final int o(Ag ag) {
        return E0(ag);
    }

    @Override // defpackage.AbstractC0353ng
    public final int o0(int i, C0530ug c0530ug, Ag ag) {
        return Z0(i, c0530ug, ag);
    }

    @Override // defpackage.AbstractC0353ng
    public final C0379og r() {
        return this.t == 0 ? new C0379og(-2, -1) : new C0379og(-1, -2);
    }

    @Override // defpackage.AbstractC0353ng
    public final void r0(Rect rect, int i, int i2) {
        int g;
        int g2;
        int i3 = this.p;
        int D = D() + C();
        int B = B() + E();
        if (this.t == 1) {
            int height = rect.height() + B;
            RecyclerView recyclerView = this.b;
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            g2 = AbstractC0353ng.g(i2, height, Rm.d(recyclerView));
            g = AbstractC0353ng.g(i, (this.u * i3) + D, Rm.e(this.b));
        } else {
            int width = rect.width() + D;
            RecyclerView recyclerView2 = this.b;
            WeakHashMap weakHashMap2 = AbstractC0205hn.a;
            g = AbstractC0353ng.g(i, width, Rm.e(recyclerView2));
            g2 = AbstractC0353ng.g(i2, (this.u * i3) + B, Rm.d(this.b));
        }
        this.b.setMeasuredDimension(g, g2);
    }

    @Override // defpackage.AbstractC0353ng
    public final C0379og s(Context context, AttributeSet attributeSet) {
        return new C0379og(context, attributeSet);
    }

    @Override // defpackage.AbstractC0353ng
    public final C0379og t(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0379og((ViewGroup.MarginLayoutParams) layoutParams) : new C0379og(layoutParams);
    }

    @Override // defpackage.AbstractC0353ng
    public final void x0(RecyclerView recyclerView, int i) {
        C0297lc c0297lc = new C0297lc(recyclerView.getContext());
        c0297lc.a = i;
        y0(c0297lc);
    }

    @Override // defpackage.AbstractC0353ng
    public final boolean z0() {
        return this.F == null;
    }
}
