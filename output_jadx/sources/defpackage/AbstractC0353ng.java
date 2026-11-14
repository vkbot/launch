package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: ng, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0353ng {
    public C0367o4 a;
    public RecyclerView b;
    public final K1 c;
    public final K1 d;
    public C0297lc e;
    public boolean f;
    public boolean g;
    public final boolean h;
    public final boolean i;
    public int j;
    public boolean k;
    public int l;
    public int m;
    public int n;
    public int o;

    public AbstractC0353ng() {
        C0301lg c0301lg = new C0301lg(this, 0);
        C0301lg c0301lg2 = new C0301lg(this, 1);
        this.c = new K1(c0301lg);
        this.d = new K1(c0301lg2);
        this.f = false;
        this.g = false;
        this.h = true;
        this.i = true;
    }

    public static int F(View view) {
        return ((C0379og) view.getLayoutParams()).a.d();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, mg] */
    public static C0327mg G(Context context, AttributeSet attributeSet, int i, int i2) {
        ?? obj = new Object();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Xf.a, i, i2);
        obj.a = obtainStyledAttributes.getInt(0, 1);
        obj.b = obtainStyledAttributes.getInt(10, 1);
        obj.c = obtainStyledAttributes.getBoolean(9, false);
        obj.d = obtainStyledAttributes.getBoolean(11, false);
        obtainStyledAttributes.recycle();
        return obj;
    }

    public static boolean K(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (i3 > 0 && i != i3) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i;
        }
        return true;
    }

    public static void L(View view, int i, int i2, int i3, int i4) {
        C0379og c0379og = (C0379og) view.getLayoutParams();
        Rect rect = c0379og.b;
        view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) c0379og).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) c0379og).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) c0379og).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) c0379og).bottomMargin);
    }

    public static int g(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i2, i3) : size : Math.min(size, Math.max(i2, i3));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0018, code lost:
    
        if (r5 == 1073741824) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int w(int r4, int r5, int r6, int r7, boolean r8) {
        /*
            int r4 = r4 - r6
            r6 = 0
            int r4 = java.lang.Math.max(r6, r4)
            r0 = -2
            r1 = -1
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 1073741824(0x40000000, float:2.0)
            if (r8 == 0) goto L1d
            if (r7 < 0) goto L12
        L10:
            r5 = r3
            goto L30
        L12:
            if (r7 != r1) goto L1a
            if (r5 == r2) goto L22
            if (r5 == 0) goto L1a
            if (r5 == r3) goto L22
        L1a:
            r5 = r6
            r7 = r5
            goto L30
        L1d:
            if (r7 < 0) goto L20
            goto L10
        L20:
            if (r7 != r1) goto L24
        L22:
            r7 = r4
            goto L30
        L24:
            if (r7 != r0) goto L1a
            if (r5 == r2) goto L2e
            if (r5 != r3) goto L2b
            goto L2e
        L2b:
            r7 = r4
            r5 = r6
            goto L30
        L2e:
            r7 = r4
            r5 = r2
        L30:
            int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r7, r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC0353ng.w(int, int, int, int, boolean):int");
    }

    public final int A() {
        RecyclerView recyclerView = this.b;
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        return Sm.d(recyclerView);
    }

    public final int B() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingBottom();
        }
        return 0;
    }

    public final int C() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }

    public final int D() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingRight();
        }
        return 0;
    }

    public final int E() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    public int H(C0530ug c0530ug, Ag ag) {
        return -1;
    }

    public final void I(View view, Rect rect) {
        Matrix matrix;
        Rect rect2 = ((C0379og) view.getLayoutParams()).b;
        rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        if (this.b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.b.l;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public boolean J() {
        return false;
    }

    public void M(int i) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            int e = recyclerView.f.e();
            for (int i2 = 0; i2 < e; i2++) {
                recyclerView.f.d(i2).offsetLeftAndRight(i);
            }
        }
    }

    public void N(int i) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            int e = recyclerView.f.e();
            for (int i2 = 0; i2 < e; i2++) {
                recyclerView.f.d(i2).offsetTopAndBottom(i);
            }
        }
    }

    public void O() {
    }

    public void P(RecyclerView recyclerView) {
    }

    public abstract void Q(RecyclerView recyclerView);

    public abstract View R(View view, int i, C0530ug c0530ug, Ag ag);

    public void S(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.b;
        C0530ug c0530ug = recyclerView.c;
        if (accessibilityEvent == null) {
            return;
        }
        boolean z = true;
        if (!recyclerView.canScrollVertically(1) && !this.b.canScrollVertically(-1) && !this.b.canScrollHorizontally(-1) && !this.b.canScrollHorizontally(1)) {
            z = false;
        }
        accessibilityEvent.setScrollable(z);
        AbstractC0146fg abstractC0146fg = this.b.m;
        if (abstractC0146fg != null) {
            accessibilityEvent.setItemCount(abstractC0146fg.a());
        }
    }

    public void T(C0530ug c0530ug, Ag ag, J j) {
        boolean canScrollVertically = this.b.canScrollVertically(-1);
        AccessibilityNodeInfo accessibilityNodeInfo = j.a;
        if (canScrollVertically || this.b.canScrollHorizontally(-1)) {
            j.a(8192);
            accessibilityNodeInfo.setScrollable(true);
        }
        if (this.b.canScrollVertically(1) || this.b.canScrollHorizontally(1)) {
            j.a(4096);
            accessibilityNodeInfo.setScrollable(true);
        }
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(H(c0530ug, ag), x(c0530ug, ag), false, 0));
    }

    public void U(C0530ug c0530ug, Ag ag, View view, J j) {
    }

    public final void V(View view, J j) {
        Eg N = RecyclerView.N(view);
        if (N == null || N.k() || this.a.c.contains(N.a)) {
            return;
        }
        RecyclerView recyclerView = this.b;
        U(recyclerView.c, recyclerView.h0, view, j);
    }

    public void W(int i, int i2) {
    }

    public void X() {
    }

    public void Y(int i, int i2) {
    }

    public void Z(int i, int i2) {
    }

    public void a0(int i, int i2) {
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(android.view.View r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC0353ng.b(android.view.View, int, boolean):void");
    }

    public abstract void b0(C0530ug c0530ug, Ag ag);

    public void c(String str) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            recyclerView.k(str);
        }
    }

    public abstract void c0(Ag ag);

    public abstract boolean d();

    public void d0(Parcelable parcelable) {
    }

    public abstract boolean e();

    public Parcelable e0() {
        return null;
    }

    public boolean f(C0379og c0379og) {
        return c0379og != null;
    }

    public void f0(int i) {
    }

    public final void g0(C0530ug c0530ug) {
        for (int v = v() - 1; v >= 0; v--) {
            if (!RecyclerView.N(u(v)).r()) {
                View u = u(v);
                j0(v);
                c0530ug.h(u);
            }
        }
    }

    public void h(int i, int i2, Ag ag, C0474sa c0474sa) {
    }

    public final void h0(C0530ug c0530ug) {
        ArrayList arrayList;
        int size = c0530ug.a.size();
        int i = size - 1;
        while (true) {
            arrayList = c0530ug.a;
            if (i < 0) {
                break;
            }
            View view = ((Eg) arrayList.get(i)).a;
            Eg N = RecyclerView.N(view);
            if (!N.r()) {
                N.q(false);
                if (N.m()) {
                    this.b.removeDetachedView(view, false);
                }
                AbstractC0249jg abstractC0249jg = this.b.M;
                if (abstractC0249jg != null) {
                    abstractC0249jg.d(N);
                }
                N.q(true);
                Eg N2 = RecyclerView.N(view);
                N2.n = null;
                N2.o = false;
                N2.j &= -33;
                c0530ug.i(N2);
            }
            i--;
        }
        arrayList.clear();
        ArrayList arrayList2 = c0530ug.b;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        if (size > 0) {
            this.b.invalidate();
        }
    }

    public void i(int i, C0474sa c0474sa) {
    }

    public final void i0(View view, C0530ug c0530ug) {
        C0367o4 c0367o4 = this.a;
        C0120eg c0120eg = c0367o4.a;
        int i = c0367o4.d;
        if (i == 1) {
            throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
        }
        if (i == 2) {
            throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
        }
        try {
            c0367o4.d = 1;
            c0367o4.e = view;
            int indexOfChild = c0120eg.a.indexOfChild(view);
            if (indexOfChild >= 0) {
                if (c0367o4.b.f(indexOfChild)) {
                    c0367o4.j(view);
                }
                c0120eg.h(indexOfChild);
            }
            c0367o4.d = 0;
            c0367o4.e = null;
            c0530ug.h(view);
        } catch (Throwable th) {
            c0367o4.d = 0;
            c0367o4.e = null;
            throw th;
        }
    }

    public abstract int j(Ag ag);

    public final void j0(int i) {
        if (u(i) != null) {
            C0367o4 c0367o4 = this.a;
            C0120eg c0120eg = c0367o4.a;
            int i2 = c0367o4.d;
            if (i2 == 1) {
                throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
            }
            if (i2 == 2) {
                throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
            }
            try {
                int f = c0367o4.f(i);
                View childAt = c0120eg.a.getChildAt(f);
                if (childAt != null) {
                    c0367o4.d = 1;
                    c0367o4.e = childAt;
                    if (c0367o4.b.f(f)) {
                        c0367o4.j(childAt);
                    }
                    c0120eg.h(f);
                }
            } finally {
                c0367o4.d = 0;
                c0367o4.e = null;
            }
        }
    }

    public abstract int k(Ag ag);

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00ab, code lost:
    
        if ((r5.bottom - r10) > r2) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean k0(androidx.recyclerview.widget.RecyclerView r9, android.view.View r10, android.graphics.Rect r11, boolean r12, boolean r13) {
        /*
            r8 = this;
            int r0 = r8.C()
            int r1 = r8.E()
            int r2 = r8.n
            int r3 = r8.D()
            int r2 = r2 - r3
            int r3 = r8.o
            int r4 = r8.B()
            int r3 = r3 - r4
            int r4 = r10.getLeft()
            int r5 = r11.left
            int r4 = r4 + r5
            int r5 = r10.getScrollX()
            int r4 = r4 - r5
            int r5 = r10.getTop()
            int r6 = r11.top
            int r5 = r5 + r6
            int r10 = r10.getScrollY()
            int r5 = r5 - r10
            int r10 = r11.width()
            int r10 = r10 + r4
            int r11 = r11.height()
            int r11 = r11 + r5
            int r4 = r4 - r0
            r0 = 0
            int r6 = java.lang.Math.min(r0, r4)
            int r5 = r5 - r1
            int r1 = java.lang.Math.min(r0, r5)
            int r10 = r10 - r2
            int r2 = java.lang.Math.max(r0, r10)
            int r11 = r11 - r3
            int r11 = java.lang.Math.max(r0, r11)
            int r3 = r8.A()
            r7 = 1
            if (r3 != r7) goto L5c
            if (r2 == 0) goto L57
            goto L64
        L57:
            int r2 = java.lang.Math.max(r6, r10)
            goto L64
        L5c:
            if (r6 == 0) goto L5f
            goto L63
        L5f:
            int r6 = java.lang.Math.min(r4, r2)
        L63:
            r2 = r6
        L64:
            if (r1 == 0) goto L67
            goto L6b
        L67:
            int r1 = java.lang.Math.min(r5, r11)
        L6b:
            int[] r10 = new int[]{r2, r1}
            r11 = r10[r0]
            r10 = r10[r7]
            if (r13 == 0) goto Lae
            android.view.View r13 = r9.getFocusedChild()
            if (r13 != 0) goto L7c
            goto Lb3
        L7c:
            int r1 = r8.C()
            int r2 = r8.E()
            int r3 = r8.n
            int r4 = r8.D()
            int r3 = r3 - r4
            int r4 = r8.o
            int r5 = r8.B()
            int r4 = r4 - r5
            androidx.recyclerview.widget.RecyclerView r5 = r8.b
            android.graphics.Rect r5 = r5.j
            r8.y(r13, r5)
            int r8 = r5.left
            int r8 = r8 - r11
            if (r8 >= r3) goto Lb3
            int r8 = r5.right
            int r8 = r8 - r11
            if (r8 <= r1) goto Lb3
            int r8 = r5.top
            int r8 = r8 - r10
            if (r8 >= r4) goto Lb3
            int r8 = r5.bottom
            int r8 = r8 - r10
            if (r8 > r2) goto Lae
            goto Lb3
        Lae:
            if (r11 != 0) goto Lb4
            if (r10 == 0) goto Lb3
            goto Lb4
        Lb3:
            return r0
        Lb4:
            if (r12 == 0) goto Lba
            r9.scrollBy(r11, r10)
            goto Lbd
        Lba:
            r9.k0(r11, r10, r0)
        Lbd:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC0353ng.k0(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
    }

    public abstract int l(Ag ag);

    public final void l0() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    public abstract int m(Ag ag);

    public abstract int m0(int i, C0530ug c0530ug, Ag ag);

    public abstract int n(Ag ag);

    public abstract void n0(int i);

    public abstract int o(Ag ag);

    public abstract int o0(int i, C0530ug c0530ug, Ag ag);

    public final void p(C0530ug c0530ug) {
        for (int v = v() - 1; v >= 0; v--) {
            View u = u(v);
            Eg N = RecyclerView.N(u);
            if (N.r()) {
                if (RecyclerView.B0) {
                    Log.d("RecyclerView", "ignoring view " + N);
                }
            } else if (!N.i() || N.k() || this.b.m.b) {
                u(v);
                this.a.c(v);
                c0530ug.j(u);
                this.b.g.L(N);
            } else {
                j0(v);
                c0530ug.i(N);
            }
        }
    }

    public final void p0(RecyclerView recyclerView) {
        q0(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }

    public View q(int i) {
        int v = v();
        for (int i2 = 0; i2 < v; i2++) {
            View u = u(i2);
            Eg N = RecyclerView.N(u);
            if (N != null && N.d() == i && !N.r() && (this.b.h0.g || !N.k())) {
                return u;
            }
        }
        return null;
    }

    public final void q0(int i, int i2) {
        this.n = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        this.l = mode;
        if (mode == 0 && !RecyclerView.E0) {
            this.n = 0;
        }
        this.o = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        this.m = mode2;
        if (mode2 != 0 || RecyclerView.E0) {
            return;
        }
        this.o = 0;
    }

    public abstract C0379og r();

    public void r0(Rect rect, int i, int i2) {
        int D = D() + C() + rect.width();
        int B = B() + E() + rect.height();
        RecyclerView recyclerView = this.b;
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        RecyclerView.g(this.b, g(i, D, Rm.e(recyclerView)), g(i2, B, Rm.d(this.b)));
    }

    public C0379og s(Context context, AttributeSet attributeSet) {
        return new C0379og(context, attributeSet);
    }

    public final void s0(int i, int i2) {
        int v = v();
        if (v == 0) {
            this.b.q(i, i2);
            return;
        }
        int i3 = Integer.MIN_VALUE;
        int i4 = Integer.MAX_VALUE;
        int i5 = Integer.MIN_VALUE;
        int i6 = Integer.MAX_VALUE;
        for (int i7 = 0; i7 < v; i7++) {
            View u = u(i7);
            Rect rect = this.b.j;
            y(u, rect);
            int i8 = rect.left;
            if (i8 < i6) {
                i6 = i8;
            }
            int i9 = rect.right;
            if (i9 > i3) {
                i3 = i9;
            }
            int i10 = rect.top;
            if (i10 < i4) {
                i4 = i10;
            }
            int i11 = rect.bottom;
            if (i11 > i5) {
                i5 = i11;
            }
        }
        this.b.j.set(i6, i4, i3, i5);
        r0(this.b.j, i, i2);
    }

    public C0379og t(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0379og ? new C0379og((C0379og) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0379og((ViewGroup.MarginLayoutParams) layoutParams) : new C0379og(layoutParams);
    }

    public final void t0(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.b = null;
            this.a = null;
            this.n = 0;
            this.o = 0;
        } else {
            this.b = recyclerView;
            this.a = recyclerView.f;
            this.n = recyclerView.getWidth();
            this.o = recyclerView.getHeight();
        }
        this.l = 1073741824;
        this.m = 1073741824;
    }

    public final View u(int i) {
        C0367o4 c0367o4 = this.a;
        if (c0367o4 != null) {
            return c0367o4.d(i);
        }
        return null;
    }

    public final boolean u0(View view, int i, int i2, C0379og c0379og) {
        return (!view.isLayoutRequested() && this.h && K(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) c0379og).width) && K(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) c0379og).height)) ? false : true;
    }

    public final int v() {
        C0367o4 c0367o4 = this.a;
        if (c0367o4 != null) {
            return c0367o4.e();
        }
        return 0;
    }

    public boolean v0() {
        return false;
    }

    public final boolean w0(View view, int i, int i2, C0379og c0379og) {
        return (this.h && K(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) c0379og).width) && K(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) c0379og).height)) ? false : true;
    }

    public int x(C0530ug c0530ug, Ag ag) {
        return -1;
    }

    public abstract void x0(RecyclerView recyclerView, int i);

    public void y(View view, Rect rect) {
        boolean z = RecyclerView.A0;
        C0379og c0379og = (C0379og) view.getLayoutParams();
        Rect rect2 = c0379og.b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) c0379og).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) c0379og).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) c0379og).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) c0379og).bottomMargin);
    }

    public final void y0(C0297lc c0297lc) {
        C0297lc c0297lc2 = this.e;
        if (c0297lc2 != null && c0297lc != c0297lc2 && c0297lc2.e) {
            c0297lc2.i();
        }
        this.e = c0297lc;
        RecyclerView recyclerView = this.b;
        Dg dg = recyclerView.e0;
        dg.g.removeCallbacks(dg);
        dg.c.abortAnimation();
        if (c0297lc.h) {
            Log.w("RecyclerView", "An instance of " + c0297lc.getClass().getSimpleName() + " was started more than once. Each instance of" + c0297lc.getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        c0297lc.b = recyclerView;
        c0297lc.c = this;
        int i = c0297lc.a;
        if (i == -1) {
            throw new IllegalArgumentException("Invalid target position");
        }
        recyclerView.h0.a = i;
        c0297lc.e = true;
        c0297lc.d = true;
        c0297lc.f = recyclerView.n.q(i);
        c0297lc.b.e0.b();
        c0297lc.h = true;
    }

    public final int z() {
        RecyclerView recyclerView = this.b;
        AbstractC0146fg adapter = recyclerView != null ? recyclerView.getAdapter() : null;
        if (adapter != null) {
            return adapter.a();
        }
        return 0;
    }

    public boolean z0() {
        return false;
    }
}
