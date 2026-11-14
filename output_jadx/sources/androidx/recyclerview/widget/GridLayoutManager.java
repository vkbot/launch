package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.GridView;
import defpackage.AbstractC0205hn;
import defpackage.AbstractC0353ng;
import defpackage.AbstractC0407pi;
import defpackage.Ag;
import defpackage.C0194hc;
import defpackage.C0245jc;
import defpackage.C0379og;
import defpackage.C0474sa;
import defpackage.C0530ug;
import defpackage.C0624ya;
import defpackage.J;
import defpackage.K1;
import defpackage.Rm;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    public boolean E;
    public int F;
    public int[] G;
    public View[] H;
    public final SparseIntArray I;
    public final SparseIntArray J;
    public final K1 K;
    public final Rect L;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.E = false;
        this.F = -1;
        this.I = new SparseIntArray();
        this.J = new SparseIntArray();
        this.K = new K1(13);
        this.L = new Rect();
        m1(AbstractC0353ng.G(context, attributeSet, i, i2).b);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void B0(Ag ag, C0245jc c0245jc, C0474sa c0474sa) {
        int i;
        int i2 = this.F;
        for (int i3 = 0; i3 < this.F && (i = c0245jc.d) >= 0 && i < ag.b() && i2 > 0; i3++) {
            c0474sa.a(c0245jc.d, Math.max(0, c0245jc.g));
            this.K.getClass();
            i2--;
            c0245jc.d += c0245jc.e;
        }
    }

    @Override // defpackage.AbstractC0353ng
    public final int H(C0530ug c0530ug, Ag ag) {
        if (this.p == 0) {
            return this.F;
        }
        if (ag.b() < 1) {
            return 0;
        }
        return i1(ag.b() - 1, c0530ug, ag) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View O0(C0530ug c0530ug, Ag ag, boolean z, boolean z2) {
        int i;
        int i2;
        int v = v();
        int i3 = 1;
        if (z2) {
            i2 = v() - 1;
            i = -1;
            i3 = -1;
        } else {
            i = v;
            i2 = 0;
        }
        int b = ag.b();
        G0();
        int k = this.r.k();
        int g = this.r.g();
        View view = null;
        View view2 = null;
        while (i2 != i) {
            View u = u(i2);
            int F = AbstractC0353ng.F(u);
            if (F >= 0 && F < b && j1(F, c0530ug, ag) == 0) {
                if (((C0379og) u.getLayoutParams()).a.k()) {
                    if (view2 == null) {
                        view2 = u;
                    }
                } else {
                    if (this.r.e(u) < g && this.r.b(u) >= k) {
                        return u;
                    }
                    if (view == null) {
                        view = u;
                    }
                }
            }
            i2 += i3;
        }
        return view != null ? view : view2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x00df, code lost:
    
        if (r13 == (r2 > r15)) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0101, code lost:
    
        if (r13 == (r2 > r8)) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0020, code lost:
    
        if (r22.a.c.contains(r3) != false) goto L5;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x011a  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.AbstractC0353ng
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View R(android.view.View r23, int r24, defpackage.C0530ug r25, defpackage.Ag r26) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.R(android.view.View, int, ug, Ag):android.view.View");
    }

    @Override // defpackage.AbstractC0353ng
    public final void T(C0530ug c0530ug, Ag ag, J j) {
        super.T(c0530ug, ag, j);
        j.a.setClassName(GridView.class.getName());
    }

    @Override // defpackage.AbstractC0353ng
    public final void U(C0530ug c0530ug, Ag ag, View view, J j) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C0624ya)) {
            V(view, j);
            return;
        }
        C0624ya c0624ya = (C0624ya) layoutParams;
        int i1 = i1(c0624ya.a.d(), c0530ug, ag);
        int i = this.p;
        AccessibilityNodeInfo accessibilityNodeInfo = j.a;
        if (i == 0) {
            accessibilityNodeInfo.setCollectionItemInfo(AccessibilityNodeInfo.CollectionItemInfo.obtain(c0624ya.e, c0624ya.f, i1, 1, false, false));
        } else {
            accessibilityNodeInfo.setCollectionItemInfo(AccessibilityNodeInfo.CollectionItemInfo.obtain(i1, 1, c0624ya.e, c0624ya.f, false, false));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x009f, code lost:
    
        r22.b = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a1, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r8v31 */
    /* JADX WARN: Type inference failed for: r8v32 */
    /* JADX WARN: Type inference failed for: r8v37 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void U0(defpackage.C0530ug r19, defpackage.Ag r20, defpackage.C0245jc r21, defpackage.C0220ic r22) {
        /*
            Method dump skipped, instructions count: 637
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.U0(ug, Ag, jc, ic):void");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void V0(C0530ug c0530ug, Ag ag, C0194hc c0194hc, int i) {
        n1();
        if (ag.b() > 0 && !ag.g) {
            boolean z = i == 1;
            int j1 = j1(c0194hc.b, c0530ug, ag);
            if (z) {
                while (j1 > 0) {
                    int i2 = c0194hc.b;
                    if (i2 <= 0) {
                        break;
                    }
                    int i3 = i2 - 1;
                    c0194hc.b = i3;
                    j1 = j1(i3, c0530ug, ag);
                }
            } else {
                int b = ag.b() - 1;
                int i4 = c0194hc.b;
                while (i4 < b) {
                    int i5 = i4 + 1;
                    int j12 = j1(i5, c0530ug, ag);
                    if (j12 <= j1) {
                        break;
                    }
                    i4 = i5;
                    j1 = j12;
                }
                c0194hc.b = i4;
            }
        }
        g1();
    }

    @Override // defpackage.AbstractC0353ng
    public final void W(int i, int i2) {
        K1 k1 = this.K;
        k1.A();
        ((SparseIntArray) k1.c).clear();
    }

    @Override // defpackage.AbstractC0353ng
    public final void X() {
        K1 k1 = this.K;
        k1.A();
        ((SparseIntArray) k1.c).clear();
    }

    @Override // defpackage.AbstractC0353ng
    public final void Y(int i, int i2) {
        K1 k1 = this.K;
        k1.A();
        ((SparseIntArray) k1.c).clear();
    }

    @Override // defpackage.AbstractC0353ng
    public final void Z(int i, int i2) {
        K1 k1 = this.K;
        k1.A();
        ((SparseIntArray) k1.c).clear();
    }

    @Override // defpackage.AbstractC0353ng
    public final void a0(int i, int i2) {
        K1 k1 = this.K;
        k1.A();
        ((SparseIntArray) k1.c).clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.AbstractC0353ng
    public final void b0(C0530ug c0530ug, Ag ag) {
        boolean z = ag.g;
        SparseIntArray sparseIntArray = this.J;
        SparseIntArray sparseIntArray2 = this.I;
        if (z) {
            int v = v();
            for (int i = 0; i < v; i++) {
                C0624ya c0624ya = (C0624ya) u(i).getLayoutParams();
                int d = c0624ya.a.d();
                sparseIntArray2.put(d, c0624ya.f);
                sparseIntArray.put(d, c0624ya.e);
            }
        }
        super.b0(c0530ug, ag);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void b1(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.b1(false);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.AbstractC0353ng
    public final void c0(Ag ag) {
        super.c0(ag);
        this.E = false;
    }

    @Override // defpackage.AbstractC0353ng
    public final boolean f(C0379og c0379og) {
        return c0379og instanceof C0624ya;
    }

    public final void f1(int i) {
        int i2;
        int[] iArr = this.G;
        int i3 = this.F;
        if (iArr == null || iArr.length != i3 + 1 || iArr[iArr.length - 1] != i) {
            iArr = new int[i3 + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i / i3;
        int i6 = i % i3;
        int i7 = 0;
        for (int i8 = 1; i8 <= i3; i8++) {
            i4 += i6;
            if (i4 <= 0 || i3 - i4 >= i6) {
                i2 = i5;
            } else {
                i2 = i5 + 1;
                i4 -= i3;
            }
            i7 += i2;
            iArr[i8] = i7;
        }
        this.G = iArr;
    }

    public final void g1() {
        View[] viewArr = this.H;
        if (viewArr == null || viewArr.length != this.F) {
            this.H = new View[this.F];
        }
    }

    public final int h1(int i, int i2) {
        if (this.p != 1 || !T0()) {
            int[] iArr = this.G;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.G;
        int i3 = this.F;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    public final int i1(int i, C0530ug c0530ug, Ag ag) {
        boolean z = ag.g;
        K1 k1 = this.K;
        if (!z) {
            int i2 = this.F;
            k1.getClass();
            return K1.y(i, i2);
        }
        int b = c0530ug.b(i);
        if (b != -1) {
            int i3 = this.F;
            k1.getClass();
            return K1.y(b, i3);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
        return 0;
    }

    public final int j1(int i, C0530ug c0530ug, Ag ag) {
        boolean z = ag.g;
        K1 k1 = this.K;
        if (!z) {
            int i2 = this.F;
            k1.getClass();
            return i % i2;
        }
        int i3 = this.J.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int b = c0530ug.b(i);
        if (b != -1) {
            int i4 = this.F;
            k1.getClass();
            return b % i4;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 0;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.AbstractC0353ng
    public final int k(Ag ag) {
        return D0(ag);
    }

    public final int k1(int i, C0530ug c0530ug, Ag ag) {
        boolean z = ag.g;
        K1 k1 = this.K;
        if (!z) {
            k1.getClass();
            return 1;
        }
        int i2 = this.I.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        if (c0530ug.b(i) != -1) {
            k1.getClass();
            return 1;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.AbstractC0353ng
    public final int l(Ag ag) {
        return E0(ag);
    }

    public final void l1(View view, int i, boolean z) {
        int i2;
        int i3;
        C0624ya c0624ya = (C0624ya) view.getLayoutParams();
        Rect rect = c0624ya.b;
        int i4 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) c0624ya).topMargin + ((ViewGroup.MarginLayoutParams) c0624ya).bottomMargin;
        int i5 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) c0624ya).leftMargin + ((ViewGroup.MarginLayoutParams) c0624ya).rightMargin;
        int h1 = h1(c0624ya.e, c0624ya.f);
        if (this.p == 1) {
            i3 = AbstractC0353ng.w(h1, i, i5, ((ViewGroup.MarginLayoutParams) c0624ya).width, false);
            i2 = AbstractC0353ng.w(this.r.l(), this.m, i4, ((ViewGroup.MarginLayoutParams) c0624ya).height, true);
        } else {
            int w = AbstractC0353ng.w(h1, i, i4, ((ViewGroup.MarginLayoutParams) c0624ya).height, false);
            int w2 = AbstractC0353ng.w(this.r.l(), this.l, i5, ((ViewGroup.MarginLayoutParams) c0624ya).width, true);
            i2 = w;
            i3 = w2;
        }
        C0379og c0379og = (C0379og) view.getLayoutParams();
        if (z ? w0(view, i3, i2, c0379og) : u0(view, i3, i2, c0379og)) {
            view.measure(i3, i2);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.AbstractC0353ng
    public final int m0(int i, C0530ug c0530ug, Ag ag) {
        n1();
        g1();
        return super.m0(i, c0530ug, ag);
    }

    public final void m1(int i) {
        if (i == this.F) {
            return;
        }
        this.E = true;
        if (i < 1) {
            throw new IllegalArgumentException(AbstractC0407pi.h("Span count should be at least 1. Provided ", i));
        }
        this.F = i;
        this.K.A();
        l0();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.AbstractC0353ng
    public final int n(Ag ag) {
        return D0(ag);
    }

    public final void n1() {
        int B;
        int E;
        if (this.p == 1) {
            B = this.n - D();
            E = C();
        } else {
            B = this.o - B();
            E = E();
        }
        f1(B - E);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.AbstractC0353ng
    public final int o(Ag ag) {
        return E0(ag);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.AbstractC0353ng
    public final int o0(int i, C0530ug c0530ug, Ag ag) {
        n1();
        g1();
        return super.o0(i, c0530ug, ag);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.AbstractC0353ng
    public final C0379og r() {
        return this.p == 0 ? new C0624ya(-2, -1) : new C0624ya(-1, -2);
    }

    @Override // defpackage.AbstractC0353ng
    public final void r0(Rect rect, int i, int i2) {
        int g;
        int g2;
        if (this.G == null) {
            super.r0(rect, i, i2);
        }
        int D = D() + C();
        int B = B() + E();
        if (this.p == 1) {
            int height = rect.height() + B;
            RecyclerView recyclerView = this.b;
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            g2 = AbstractC0353ng.g(i2, height, Rm.d(recyclerView));
            int[] iArr = this.G;
            g = AbstractC0353ng.g(i, iArr[iArr.length - 1] + D, Rm.e(this.b));
        } else {
            int width = rect.width() + D;
            RecyclerView recyclerView2 = this.b;
            WeakHashMap weakHashMap2 = AbstractC0205hn.a;
            g = AbstractC0353ng.g(i, width, Rm.e(recyclerView2));
            int[] iArr2 = this.G;
            g2 = AbstractC0353ng.g(i2, iArr2[iArr2.length - 1] + B, Rm.d(this.b));
        }
        this.b.setMeasuredDimension(g, g2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [og, ya] */
    @Override // defpackage.AbstractC0353ng
    public final C0379og s(Context context, AttributeSet attributeSet) {
        ?? c0379og = new C0379og(context, attributeSet);
        c0379og.e = -1;
        c0379og.f = 0;
        return c0379og;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [og, ya] */
    /* JADX WARN: Type inference failed for: r2v3, types: [og, ya] */
    @Override // defpackage.AbstractC0353ng
    public final C0379og t(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ?? c0379og = new C0379og((ViewGroup.MarginLayoutParams) layoutParams);
            c0379og.e = -1;
            c0379og.f = 0;
            return c0379og;
        }
        ?? c0379og2 = new C0379og(layoutParams);
        c0379og2.e = -1;
        c0379og2.f = 0;
        return c0379og2;
    }

    @Override // defpackage.AbstractC0353ng
    public final int x(C0530ug c0530ug, Ag ag) {
        if (this.p == 1) {
            return this.F;
        }
        if (ag.b() < 1) {
            return 0;
        }
        return i1(ag.b() - 1, c0530ug, ag) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.AbstractC0353ng
    public final boolean z0() {
        return this.z == null && !this.E;
    }

    public GridLayoutManager(int i) {
        super(1);
        this.E = false;
        this.F = -1;
        this.I = new SparseIntArray();
        this.J = new SparseIntArray();
        this.K = new K1(13);
        this.L = new Rect();
        m1(i);
    }
}
