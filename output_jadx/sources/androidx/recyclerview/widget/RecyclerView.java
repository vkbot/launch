package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import defpackage.AbstractC0076cn;
import defpackage.AbstractC0078d;
import defpackage.AbstractC0146fg;
import defpackage.AbstractC0152fm;
import defpackage.AbstractC0205hn;
import defpackage.AbstractC0223ig;
import defpackage.AbstractC0230in;
import defpackage.AbstractC0249jg;
import defpackage.AbstractC0275kg;
import defpackage.AbstractC0353ng;
import defpackage.AbstractC0405pg;
import defpackage.AbstractC0407pi;
import defpackage.AbstractC0455rg;
import defpackage.AbstractC0538v;
import defpackage.AbstractC0554vf;
import defpackage.Ag;
import defpackage.Be;
import defpackage.Bg;
import defpackage.C0120eg;
import defpackage.C0277ki;
import defpackage.C0297lc;
import defpackage.C0360nn;
import defpackage.C0367o4;
import defpackage.C0379og;
import defpackage.C0474sa;
import defpackage.C0480sg;
import defpackage.C0505tg;
import defpackage.C0530ug;
import defpackage.C0550vb;
import defpackage.C0579wf;
import defpackage.C0580wg;
import defpackage.C0589x0;
import defpackage.C0605xg;
import defpackage.C0614y0;
import defpackage.C0628ye;
import defpackage.Cg;
import defpackage.Dg;
import defpackage.Eg;
import defpackage.Gg;
import defpackage.InterfaceC0198hg;
import defpackage.InterfaceC0431qg;
import defpackage.InterfaceC0555vg;
import defpackage.InterpolatorC0500tb;
import defpackage.K1;
import defpackage.M4;
import defpackage.Qc;
import defpackage.Rm;
import defpackage.RunnableC0095dg;
import defpackage.RunnableC0524ua;
import defpackage.Tl;
import defpackage.Xf;
import defpackage.Xm;
import defpackage.Y8;
import defpackage.Zm;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup {
    public static boolean A0 = false;
    public static boolean B0 = false;
    public static final int[] C0 = {R.attr.nestedScrollingEnabled};
    public static final float D0 = (float) (Math.log(0.78d) / Math.log(0.9d));
    public static final boolean E0 = true;
    public static final boolean F0 = true;
    public static final boolean G0 = true;
    public static final Class[] H0;
    public static final InterpolatorC0500tb I0;
    public static final Bg J0;
    public boolean A;
    public final AccessibilityManager B;
    public ArrayList C;
    public boolean D;
    public boolean E;
    public int F;
    public int G;
    public AbstractC0223ig H;
    public EdgeEffect I;
    public EdgeEffect J;
    public EdgeEffect K;
    public EdgeEffect L;
    public AbstractC0249jg M;
    public int N;
    public int O;
    public VelocityTracker P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public AbstractC0405pg V;
    public final int W;
    public final float a;
    public final int a0;
    public final C0580wg b;
    public final float b0;
    public final C0530ug c;
    public final float c0;
    public C0605xg d;
    public boolean d0;
    public final C0614y0 e;
    public final Dg e0;
    public final C0367o4 f;
    public RunnableC0524ua f0;
    public final K1 g;
    public final C0474sa g0;
    public boolean h;
    public final Ag h0;
    public final RunnableC0095dg i;
    public AbstractC0455rg i0;
    public final Rect j;
    public ArrayList j0;
    public final Rect k;
    public boolean k0;
    public final RectF l;
    public boolean l0;
    public AbstractC0146fg m;
    public final C0120eg m0;
    public AbstractC0353ng n;
    public boolean n0;
    public final ArrayList o;
    public Gg o0;
    public final ArrayList p;
    public final int[] p0;
    public final ArrayList q;
    public C0628ye q0;
    public InterfaceC0431qg r;
    public final int[] r0;
    public boolean s;
    public final int[] s0;
    public boolean t;
    public final int[] t0;
    public boolean u;
    public final ArrayList u0;
    public int v;
    public final RunnableC0095dg v0;
    public boolean w;
    public boolean w0;
    public boolean x;
    public int x0;
    public boolean y;
    public int y0;
    public int z;
    public final C0120eg z0;

    /* JADX WARN: Type inference failed for: r0v10, types: [Bg, java.lang.Object] */
    static {
        Class cls = Integer.TYPE;
        H0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        I0 = new InterpolatorC0500tb(2);
        J0 = new Object();
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.omoda.launcher.R.attr.recyclerViewStyle);
    }

    public static RecyclerView I(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView I = I(viewGroup.getChildAt(i));
            if (I != null) {
                return I;
            }
        }
        return null;
    }

    public static Eg N(View view) {
        if (view == null) {
            return null;
        }
        return ((C0379og) view.getLayoutParams()).a;
    }

    private C0628ye getScrollingChildHelper() {
        if (this.q0 == null) {
            this.q0 = new C0628ye(this);
        }
        return this.q0;
    }

    public static void l(Eg eg) {
        WeakReference weakReference = eg.b;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view == eg.a) {
                    return;
                }
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            eg.b = null;
        }
    }

    public static int o(int i, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i2) {
        if (i > 0 && edgeEffect != null && AbstractC0152fm.n(edgeEffect) != 0.0f) {
            int round = Math.round(AbstractC0152fm.A(edgeEffect, ((-i) * 4.0f) / i2, 0.5f) * ((-i2) / 4.0f));
            if (round != i) {
                edgeEffect.finish();
            }
            return i - round;
        }
        if (i >= 0 || edgeEffect2 == null || AbstractC0152fm.n(edgeEffect2) == 0.0f) {
            return i;
        }
        float f = i2;
        int round2 = Math.round(AbstractC0152fm.A(edgeEffect2, (i * 4.0f) / f, 0.5f) * (f / 4.0f));
        if (round2 != i) {
            edgeEffect2.finish();
        }
        return i - round2;
    }

    public static void setDebugAssertionsEnabled(boolean z) {
        A0 = z;
    }

    public static void setVerboseLoggingEnabled(boolean z) {
        B0 = z;
    }

    public final void A() {
        if (this.K != null) {
            return;
        }
        ((Bg) this.H).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.K = edgeEffect;
        if (this.h) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void B() {
        if (this.J != null) {
            return;
        }
        ((Bg) this.H).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.J = edgeEffect;
        if (this.h) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final String C() {
        return " " + super.toString() + ", adapter:" + this.m + ", layout:" + this.n + ", context:" + getContext();
    }

    public final void D(Ag ag) {
        if (getScrollState() != 2) {
            ag.getClass();
            return;
        }
        OverScroller overScroller = this.e0.c;
        overScroller.getFinalX();
        overScroller.getCurrX();
        ag.getClass();
        overScroller.getFinalY();
        overScroller.getCurrY();
    }

    public final View E(float f, float f2) {
        for (int e = this.f.e() - 1; e >= 0; e--) {
            View d = this.f.d(e);
            float translationX = d.getTranslationX();
            float translationY = d.getTranslationY();
            if (f >= d.getLeft() + translationX && f <= d.getRight() + translationX && f2 >= d.getTop() + translationY && f2 <= d.getBottom() + translationY) {
                return d;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:?, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View F(android.view.View r3) {
        /*
            r2 = this;
            android.view.ViewParent r0 = r3.getParent()
        L4:
            if (r0 == 0) goto L14
            if (r0 == r2) goto L14
            boolean r1 = r0 instanceof android.view.View
            if (r1 == 0) goto L14
            r3 = r0
            android.view.View r3 = (android.view.View) r3
            android.view.ViewParent r0 = r3.getParent()
            goto L4
        L14:
            if (r0 != r2) goto L17
            goto L18
        L17:
            r3 = 0
        L18:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.F(android.view.View):android.view.View");
    }

    public final boolean G(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        ArrayList arrayList = this.q;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            InterfaceC0431qg interfaceC0431qg = (InterfaceC0431qg) arrayList.get(i);
            if (interfaceC0431qg.b(this, motionEvent) && action != 3) {
                this.r = interfaceC0431qg;
                return true;
            }
        }
        return false;
    }

    public final void H(int[] iArr) {
        int e = this.f.e();
        if (e == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < e; i3++) {
            Eg N = N(this.f.d(i3));
            if (!N.r()) {
                int d = N.d();
                if (d < i) {
                    i = d;
                }
                if (d > i2) {
                    i2 = d;
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    public final Eg J(int i) {
        Eg eg = null;
        if (this.D) {
            return null;
        }
        int h = this.f.h();
        for (int i2 = 0; i2 < h; i2++) {
            Eg N = N(this.f.g(i2));
            if (N != null && !N.k() && K(N) == i) {
                if (!this.f.c.contains(N.a)) {
                    return N;
                }
                eg = N;
            }
        }
        return eg;
    }

    public final int K(Eg eg) {
        if (eg.f(524) || !eg.h()) {
            return -1;
        }
        C0614y0 c0614y0 = this.e;
        int i = eg.c;
        ArrayList arrayList = (ArrayList) c0614y0.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0589x0 c0589x0 = (C0589x0) arrayList.get(i2);
            int i3 = c0589x0.a;
            if (i3 != 1) {
                if (i3 == 2) {
                    int i4 = c0589x0.b;
                    if (i4 <= i) {
                        int i5 = c0589x0.d;
                        if (i4 + i5 > i) {
                            return -1;
                        }
                        i -= i5;
                    } else {
                        continue;
                    }
                } else if (i3 == 8) {
                    int i6 = c0589x0.b;
                    if (i6 == i) {
                        i = c0589x0.d;
                    } else {
                        if (i6 < i) {
                            i--;
                        }
                        if (c0589x0.d <= i) {
                            i++;
                        }
                    }
                }
            } else if (c0589x0.b <= i) {
                i += c0589x0.d;
            }
        }
        return i;
    }

    public final long L(Eg eg) {
        return this.m.b ? eg.e : eg.c;
    }

    public final Eg M(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return N(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    public final Rect O(View view) {
        C0379og c0379og = (C0379og) view.getLayoutParams();
        boolean z = c0379og.c;
        Rect rect = c0379og.b;
        if (!z) {
            return rect;
        }
        Ag ag = this.h0;
        if (ag.g && (c0379og.a.n() || c0379og.a.i())) {
            return rect;
        }
        rect.set(0, 0, 0, 0);
        ArrayList arrayList = this.p;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Rect rect2 = this.j;
            rect2.set(0, 0, 0, 0);
            ((AbstractC0275kg) arrayList.get(i)).d(rect2, view, this, ag);
            rect.left += rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        c0379og.c = false;
        return rect;
    }

    public final boolean P() {
        return !this.u || this.D || this.e.j();
    }

    public final boolean Q() {
        return this.F > 0;
    }

    public final void R(int i) {
        if (this.n == null) {
            return;
        }
        setScrollState(2);
        this.n.n0(i);
        awakenScrollBars();
    }

    public final void S() {
        int h = this.f.h();
        for (int i = 0; i < h; i++) {
            ((C0379og) this.f.g(i).getLayoutParams()).c = true;
        }
        ArrayList arrayList = this.c.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0379og c0379og = (C0379og) ((Eg) arrayList.get(i2)).a.getLayoutParams();
            if (c0379og != null) {
                c0379og.c = true;
            }
        }
    }

    public final void T(int i, int i2, boolean z) {
        int i3 = i + i2;
        int h = this.f.h();
        for (int i4 = 0; i4 < h; i4++) {
            Eg N = N(this.f.g(i4));
            if (N != null && !N.r()) {
                int i5 = N.c;
                Ag ag = this.h0;
                if (i5 >= i3) {
                    if (B0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove attached child " + i4 + " holder " + N + " now at position " + (N.c - i2));
                    }
                    N.o(-i2, z);
                    ag.f = true;
                } else if (i5 >= i) {
                    if (B0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove attached child " + i4 + " holder " + N + " now REMOVED");
                    }
                    N.a(8);
                    N.o(-i2, z);
                    N.c = i - 1;
                    ag.f = true;
                }
            }
        }
        C0530ug c0530ug = this.c;
        ArrayList arrayList = c0530ug.c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Eg eg = (Eg) arrayList.get(size);
            if (eg != null) {
                int i6 = eg.c;
                if (i6 >= i3) {
                    if (B0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove cached " + size + " holder " + eg + " now at position " + (eg.c - i2));
                    }
                    eg.o(-i2, z);
                } else if (i6 >= i) {
                    eg.a(8);
                    c0530ug.g(size);
                }
            }
        }
        requestLayout();
    }

    public final void U() {
        this.F++;
    }

    public final void V(boolean z) {
        int i;
        AccessibilityManager accessibilityManager;
        int i2 = this.F - 1;
        this.F = i2;
        if (i2 < 1) {
            if (A0 && i2 < 0) {
                throw new IllegalStateException(AbstractC0407pi.g(this, new StringBuilder("layout or scroll counter cannot go below zero.Some calls are not matching")));
            }
            this.F = 0;
            if (z) {
                int i3 = this.z;
                this.z = 0;
                if (i3 != 0 && (accessibilityManager = this.B) != null && accessibilityManager.isEnabled()) {
                    AccessibilityEvent obtain = AccessibilityEvent.obtain();
                    obtain.setEventType(2048);
                    AbstractC0538v.b(obtain, i3);
                    sendAccessibilityEventUnchecked(obtain);
                }
                ArrayList arrayList = this.u0;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    Eg eg = (Eg) arrayList.get(size);
                    if (eg.a.getParent() == this && !eg.r() && (i = eg.q) != -1) {
                        WeakHashMap weakHashMap = AbstractC0205hn.a;
                        Rm.s(eg.a, i);
                        eg.q = -1;
                    }
                }
                arrayList.clear();
            }
        }
    }

    public final void W(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.O) {
            int i = actionIndex == 0 ? 1 : 0;
            this.O = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.S = x;
            this.Q = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.T = y;
            this.R = y;
        }
    }

    public final void X() {
        if (this.n0 || !this.s) {
            return;
        }
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        Rm.m(this, this.v0);
        this.n0 = true;
    }

    public final void Y() {
        boolean z;
        boolean z2 = false;
        if (this.D) {
            C0614y0 c0614y0 = this.e;
            c0614y0.q((ArrayList) c0614y0.c);
            c0614y0.q((ArrayList) c0614y0.d);
            c0614y0.a = 0;
            if (this.E) {
                this.n.X();
            }
        }
        if (this.M == null || !this.n.z0()) {
            this.e.d();
        } else {
            this.e.p();
        }
        boolean z3 = this.k0 || this.l0;
        boolean z4 = this.u && this.M != null && ((z = this.D) || z3 || this.n.f) && (!z || this.m.b);
        Ag ag = this.h0;
        ag.j = z4;
        if (z4 && z3 && !this.D && this.M != null && this.n.z0()) {
            z2 = true;
        }
        ag.k = z2;
    }

    public final void Z(boolean z) {
        this.E = z | this.E;
        this.D = true;
        int h = this.f.h();
        for (int i = 0; i < h; i++) {
            Eg N = N(this.f.g(i));
            if (N != null && !N.r()) {
                N.a(6);
            }
        }
        S();
        C0530ug c0530ug = this.c;
        ArrayList arrayList = c0530ug.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Eg eg = (Eg) arrayList.get(i2);
            if (eg != null) {
                eg.a(6);
                eg.a(1024);
            }
        }
        AbstractC0146fg abstractC0146fg = c0530ug.h.m;
        if (abstractC0146fg == null || !abstractC0146fg.b) {
            c0530ug.f();
        }
    }

    public final void a0(Eg eg, Be be) {
        eg.j &= -8193;
        boolean z = this.h0.h;
        K1 k1 = this.g;
        if (z && eg.n() && !eg.k() && !eg.r()) {
            ((Qc) k1.c).d(L(eg), eg);
        }
        C0277ki c0277ki = (C0277ki) k1.b;
        C0360nn c0360nn = (C0360nn) c0277ki.getOrDefault(eg, null);
        if (c0360nn == null) {
            c0360nn = C0360nn.a();
            c0277ki.put(eg, c0360nn);
        }
        c0360nn.b = be;
        c0360nn.a |= 4;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng != null) {
            abstractC0353ng.getClass();
        }
        super.addFocusables(arrayList, i, i2);
    }

    public final int b0(int i, float f) {
        float height = f / getHeight();
        float width = i / getWidth();
        EdgeEffect edgeEffect = this.I;
        float f2 = 0.0f;
        if (edgeEffect == null || AbstractC0152fm.n(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.K;
            if (edgeEffect2 != null && AbstractC0152fm.n(edgeEffect2) != 0.0f) {
                if (canScrollHorizontally(1)) {
                    this.K.onRelease();
                } else {
                    float A = AbstractC0152fm.A(this.K, width, height);
                    if (AbstractC0152fm.n(this.K) == 0.0f) {
                        this.K.onRelease();
                    }
                    f2 = A;
                }
                invalidate();
            }
        } else {
            if (canScrollHorizontally(-1)) {
                this.I.onRelease();
            } else {
                float f3 = -AbstractC0152fm.A(this.I, -width, 1.0f - height);
                if (AbstractC0152fm.n(this.I) == 0.0f) {
                    this.I.onRelease();
                }
                f2 = f3;
            }
            invalidate();
        }
        return Math.round(f2 * getWidth());
    }

    public final int c0(int i, float f) {
        float width = f / getWidth();
        float height = i / getHeight();
        EdgeEffect edgeEffect = this.J;
        float f2 = 0.0f;
        if (edgeEffect == null || AbstractC0152fm.n(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.L;
            if (edgeEffect2 != null && AbstractC0152fm.n(edgeEffect2) != 0.0f) {
                if (canScrollVertically(1)) {
                    this.L.onRelease();
                } else {
                    float A = AbstractC0152fm.A(this.L, height, 1.0f - width);
                    if (AbstractC0152fm.n(this.L) == 0.0f) {
                        this.L.onRelease();
                    }
                    f2 = A;
                }
                invalidate();
            }
        } else {
            if (canScrollVertically(-1)) {
                this.J.onRelease();
            } else {
                float f3 = -AbstractC0152fm.A(this.J, -height, width);
                if (AbstractC0152fm.n(this.J) == 0.0f) {
                    this.J.onRelease();
                }
                f2 = f3;
            }
            invalidate();
        }
        return Math.round(f2 * getHeight());
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0379og) && this.n.f((C0379og) layoutParams);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng != null && abstractC0353ng.d()) {
            return this.n.j(this.h0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng != null && abstractC0353ng.d()) {
            return this.n.k(this.h0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng != null && abstractC0353ng.d()) {
            return this.n.l(this.h0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng != null && abstractC0353ng.e()) {
            return this.n.m(this.h0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng != null && abstractC0353ng.e()) {
            return this.n.n(this.h0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng != null && abstractC0353ng.e()) {
            return this.n.o(this.h0);
        }
        return 0;
    }

    public final void d0(AbstractC0275kg abstractC0275kg) {
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng != null) {
            abstractC0353ng.c("Cannot remove item decoration during a scroll  or layout");
        }
        ArrayList arrayList = this.p;
        arrayList.remove(abstractC0275kg);
        if (arrayList.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        S();
        requestLayout();
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().a(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().b(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().d(i, i2, i3, i4, iArr, 0, null);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        ArrayList arrayList = this.p;
        int size = arrayList.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            ((AbstractC0275kg) arrayList.get(i)).f(canvas, this);
        }
        EdgeEffect edgeEffect = this.I;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.h ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.I;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.J;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.h) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.J;
            z |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.K;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.h ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.K;
            z |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.L;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.h) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.L;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z2 = true;
            }
            z |= z2;
            canvas.restoreToCount(save4);
        }
        if ((z || this.M == null || arrayList.size() <= 0 || !this.M.f()) ? z : true) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            Rm.k(this);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    public final void e0(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        int width = view3.getWidth();
        int height = view3.getHeight();
        Rect rect = this.j;
        rect.set(0, 0, width, height);
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof C0379og) {
            C0379og c0379og = (C0379og) layoutParams;
            if (!c0379og.c) {
                int i = rect.left;
                Rect rect2 = c0379og.b;
                rect.left = i - rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, rect);
            offsetRectIntoDescendantCoords(view, rect);
        }
        this.n.k0(this, view, this.j, !this.u, view2 == null);
    }

    public final void f0() {
        VelocityTracker velocityTracker = this.P;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean z = false;
        n0(0);
        EdgeEffect edgeEffect = this.I;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.I.isFinished();
        }
        EdgeEffect edgeEffect2 = this.J;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z |= this.J.isFinished();
        }
        EdgeEffect edgeEffect3 = this.K;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z |= this.K.isFinished();
        }
        EdgeEffect edgeEffect4 = this.L;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z |= this.L.isFinished();
        }
        if (z) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            Rm.k(this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x017d, code lost:
    
        if (r5 < 0) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0185, code lost:
    
        if ((r5 * r6) <= 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x018d, code lost:
    
        if ((r5 * r6) >= 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0160, code lost:
    
        if (r7 > 0) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0177, code lost:
    
        if (r5 > 0) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x017a, code lost:
    
        if (r7 < 0) goto L279;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View focusSearch(android.view.View r17, int r18) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.focusSearch(android.view.View, int):android.view.View");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean g0(int r19, int r20, android.view.MotionEvent r21, int r22) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.g0(int, int, android.view.MotionEvent, int):boolean");
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng != null) {
            return abstractC0353ng.r();
        }
        throw new IllegalStateException(AbstractC0407pi.g(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng != null) {
            return abstractC0353ng.s(getContext(), attributeSet);
        }
        throw new IllegalStateException(AbstractC0407pi.g(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public AbstractC0146fg getAdapter() {
        return this.m;
    }

    @Override // android.view.View
    public int getBaseline() {
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng == null) {
            return super.getBaseline();
        }
        abstractC0353ng.getClass();
        return -1;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        return super.getChildDrawingOrder(i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.h;
    }

    public Gg getCompatAccessibilityDelegate() {
        return this.o0;
    }

    public AbstractC0223ig getEdgeEffectFactory() {
        return this.H;
    }

    public AbstractC0249jg getItemAnimator() {
        return this.M;
    }

    public int getItemDecorationCount() {
        return this.p.size();
    }

    public AbstractC0353ng getLayoutManager() {
        return this.n;
    }

    public int getMaxFlingVelocity() {
        return this.a0;
    }

    public int getMinFlingVelocity() {
        return this.W;
    }

    public long getNanoTime() {
        if (G0) {
            return System.nanoTime();
        }
        return 0L;
    }

    public AbstractC0405pg getOnFlingListener() {
        return this.V;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.d0;
    }

    public C0505tg getRecycledViewPool() {
        return this.c.c();
    }

    public int getScrollState() {
        return this.N;
    }

    public final void h(Eg eg) {
        View view = eg.a;
        boolean z = view.getParent() == this;
        this.c.l(M(view));
        if (eg.m()) {
            this.f.b(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z) {
            this.f.a(view, -1, true);
            return;
        }
        C0367o4 c0367o4 = this.f;
        int indexOfChild = c0367o4.a.a.indexOfChild(view);
        if (indexOfChild >= 0) {
            c0367o4.b.h(indexOfChild);
            c0367o4.i(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    public final void h0(int i, int i2, int[] iArr) {
        Eg eg;
        l0();
        U();
        Tl.a("RV Scroll");
        Ag ag = this.h0;
        D(ag);
        C0530ug c0530ug = this.c;
        int m0 = i != 0 ? this.n.m0(i, c0530ug, ag) : 0;
        int o0 = i2 != 0 ? this.n.o0(i2, c0530ug, ag) : 0;
        Tl.b();
        int e = this.f.e();
        for (int i3 = 0; i3 < e; i3++) {
            View d = this.f.d(i3);
            Eg M = M(d);
            if (M != null && (eg = M.i) != null) {
                int left = d.getLeft();
                int top = d.getTop();
                View view = eg.a;
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        V(true);
        m0(false);
        if (iArr != null) {
            iArr[0] = m0;
            iArr[1] = o0;
        }
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().f(0);
    }

    public final void i(AbstractC0275kg abstractC0275kg) {
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng != null) {
            abstractC0353ng.c("Cannot add item decoration during a scroll  or layout");
        }
        ArrayList arrayList = this.p;
        if (arrayList.isEmpty()) {
            setWillNotDraw(false);
        }
        arrayList.add(abstractC0275kg);
        S();
        requestLayout();
    }

    public final void i0(int i) {
        C0297lc c0297lc;
        if (this.x) {
            return;
        }
        setScrollState(0);
        Dg dg = this.e0;
        dg.g.removeCallbacks(dg);
        dg.c.abortAnimation();
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng != null && (c0297lc = abstractC0353ng.e) != null) {
            c0297lc.i();
        }
        AbstractC0353ng abstractC0353ng2 = this.n;
        if (abstractC0353ng2 == null) {
            Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            abstractC0353ng2.n0(i);
            awakenScrollBars();
        }
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.s;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.x;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().d;
    }

    public final void j(AbstractC0455rg abstractC0455rg) {
        if (this.j0 == null) {
            this.j0 = new ArrayList();
        }
        this.j0.add(abstractC0455rg);
    }

    public final boolean j0(EdgeEffect edgeEffect, int i, int i2) {
        if (i > 0) {
            return true;
        }
        float n = AbstractC0152fm.n(edgeEffect) * i2;
        float abs = Math.abs(-i) * 0.35f;
        float f = this.a * 0.015f;
        double log = Math.log(abs / f);
        double d = D0;
        return ((float) (Math.exp((d / (d - 1.0d)) * log) * ((double) f))) < n;
    }

    public final void k(String str) {
        if (Q()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException(AbstractC0407pi.g(this, new StringBuilder("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        }
        if (this.G > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(AbstractC0407pi.g(this, new StringBuilder(""))));
        }
    }

    public final void k0(int i, int i2, boolean z) {
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.x) {
            return;
        }
        if (!abstractC0353ng.d()) {
            i = 0;
        }
        if (!this.n.e()) {
            i2 = 0;
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        if (z) {
            int i3 = i != 0 ? 1 : 0;
            if (i2 != 0) {
                i3 |= 2;
            }
            getScrollingChildHelper().g(i3, 1);
        }
        this.e0.c(i, i2, Integer.MIN_VALUE, null);
    }

    public final void l0() {
        int i = this.v + 1;
        this.v = i;
        if (i != 1 || this.x) {
            return;
        }
        this.w = false;
    }

    public final void m() {
        int h = this.f.h();
        for (int i = 0; i < h; i++) {
            Eg N = N(this.f.g(i));
            if (!N.r()) {
                N.d = -1;
                N.g = -1;
            }
        }
        C0530ug c0530ug = this.c;
        ArrayList arrayList = c0530ug.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Eg eg = (Eg) arrayList.get(i2);
            eg.d = -1;
            eg.g = -1;
        }
        ArrayList arrayList2 = c0530ug.a;
        int size2 = arrayList2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            Eg eg2 = (Eg) arrayList2.get(i3);
            eg2.d = -1;
            eg2.g = -1;
        }
        ArrayList arrayList3 = c0530ug.b;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i4 = 0; i4 < size3; i4++) {
                Eg eg3 = (Eg) c0530ug.b.get(i4);
                eg3.d = -1;
                eg3.g = -1;
            }
        }
    }

    public final void m0(boolean z) {
        if (this.v < 1) {
            if (A0) {
                throw new IllegalStateException(AbstractC0407pi.g(this, new StringBuilder("stopInterceptRequestLayout was called more times than startInterceptRequestLayout.")));
            }
            this.v = 1;
        }
        if (!z && !this.x) {
            this.w = false;
        }
        if (this.v == 1) {
            if (z && this.w && !this.x && this.n != null && this.m != null) {
                s();
            }
            if (!this.x) {
                this.w = false;
            }
        }
        this.v--;
    }

    public final void n(int i, int i2) {
        boolean z;
        EdgeEffect edgeEffect = this.I;
        if (edgeEffect == null || edgeEffect.isFinished() || i <= 0) {
            z = false;
        } else {
            this.I.onRelease();
            z = this.I.isFinished();
        }
        EdgeEffect edgeEffect2 = this.K;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i < 0) {
            this.K.onRelease();
            z |= this.K.isFinished();
        }
        EdgeEffect edgeEffect3 = this.J;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i2 > 0) {
            this.J.onRelease();
            z |= this.J.isFinished();
        }
        EdgeEffect edgeEffect4 = this.L;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i2 < 0) {
            this.L.onRelease();
            z |= this.L.isFinished();
        }
        if (z) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            Rm.k(this);
        }
    }

    public final void n0(int i) {
        getScrollingChildHelper().h(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0063, code lost:
    
        if (r1 >= 30.0f) goto L55;
     */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, ua] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onAttachedToWindow() {
        /*
            r5 = this;
            super.onAttachedToWindow()
            r0 = 0
            r5.F = r0
            r1 = 1
            r5.s = r1
            boolean r2 = r5.u
            if (r2 == 0) goto L15
            boolean r2 = r5.isLayoutRequested()
            if (r2 != 0) goto L15
            r2 = r1
            goto L16
        L15:
            r2 = r0
        L16:
            r5.u = r2
            ug r2 = r5.c
            r2.d()
            ng r2 = r5.n
            if (r2 == 0) goto L26
            r2.g = r1
            r2.P(r5)
        L26:
            r5.n0 = r0
            boolean r0 = androidx.recyclerview.widget.RecyclerView.G0
            if (r0 == 0) goto L91
            java.lang.ThreadLocal r0 = defpackage.RunnableC0524ua.e
            java.lang.Object r1 = r0.get()
            ua r1 = (defpackage.RunnableC0524ua) r1
            r5.f0 = r1
            if (r1 != 0) goto L74
            ua r1 = new ua
            r1.<init>()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.a = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.d = r2
            r5.f0 = r1
            java.util.WeakHashMap r1 = defpackage.AbstractC0205hn.a
            android.view.Display r1 = defpackage.Sm.b(r5)
            boolean r2 = r5.isInEditMode()
            if (r2 != 0) goto L66
            if (r1 == 0) goto L66
            float r1 = r1.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r2 < 0) goto L66
            goto L68
        L66:
            r1 = 1114636288(0x42700000, float:60.0)
        L68:
            ua r2 = r5.f0
            r3 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r3 = r3 / r1
            long r3 = (long) r3
            r2.c = r3
            r0.set(r2)
        L74:
            ua r0 = r5.f0
            r0.getClass()
            boolean r1 = androidx.recyclerview.widget.RecyclerView.A0
            java.util.ArrayList r0 = r0.a
            if (r1 == 0) goto L8e
            boolean r1 = r0.contains(r5)
            if (r1 != 0) goto L86
            goto L8e
        L86:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "RecyclerView already present in worker list!"
            r5.<init>(r0)
            throw r5
        L8e:
            r0.add(r5)
        L91:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        C0530ug c0530ug;
        RunnableC0524ua runnableC0524ua;
        C0297lc c0297lc;
        super.onDetachedFromWindow();
        AbstractC0249jg abstractC0249jg = this.M;
        if (abstractC0249jg != null) {
            abstractC0249jg.e();
        }
        int i = 0;
        setScrollState(0);
        Dg dg = this.e0;
        dg.g.removeCallbacks(dg);
        dg.c.abortAnimation();
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng != null && (c0297lc = abstractC0353ng.e) != null) {
            c0297lc.i();
        }
        this.s = false;
        AbstractC0353ng abstractC0353ng2 = this.n;
        if (abstractC0353ng2 != null) {
            abstractC0353ng2.g = false;
            abstractC0353ng2.Q(this);
        }
        this.u0.clear();
        removeCallbacks(this.v0);
        this.g.getClass();
        do {
        } while (C0360nn.d.a() != null);
        int i2 = 0;
        while (true) {
            c0530ug = this.c;
            ArrayList arrayList = c0530ug.c;
            if (i2 >= arrayList.size()) {
                break;
            }
            AbstractC0554vf.d(((Eg) arrayList.get(i2)).a);
            i2++;
        }
        c0530ug.e(c0530ug.h.m, false);
        while (i < getChildCount()) {
            int i3 = i + 1;
            View childAt = getChildAt(i);
            if (childAt == null) {
                throw new IndexOutOfBoundsException();
            }
            C0579wf c0579wf = (C0579wf) childAt.getTag(com.omoda.launcher.R.id.pooling_container_listener_holder_tag);
            if (c0579wf == null) {
                c0579wf = new C0579wf();
                childAt.setTag(com.omoda.launcher.R.id.pooling_container_listener_holder_tag, c0579wf);
            }
            ArrayList arrayList2 = c0579wf.a;
            int o0 = M4.o0(arrayList2);
            if (-1 < o0) {
                arrayList2.get(o0).getClass();
                throw new ClassCastException();
            }
            i = i3;
        }
        if (!G0 || (runnableC0524ua = this.f0) == null) {
            return;
        }
        boolean remove = runnableC0524ua.a.remove(this);
        if (A0 && !remove) {
            throw new IllegalStateException("RecyclerView removal failed!");
        }
        this.f0 = null;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList arrayList = this.p;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC0275kg) arrayList.get(i)).e(canvas, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0085  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onGenericMotionEvent(android.view.MotionEvent r17) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        if (this.x) {
            return false;
        }
        this.r = null;
        if (G(motionEvent)) {
            f0();
            setScrollState(0);
            return true;
        }
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng == null) {
            return false;
        }
        boolean d = abstractC0353ng.d();
        boolean e = this.n.e();
        if (this.P == null) {
            this.P = VelocityTracker.obtain();
        }
        this.P.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.y) {
                this.y = false;
            }
            this.O = motionEvent.getPointerId(0);
            int x = (int) (motionEvent.getX() + 0.5f);
            this.S = x;
            this.Q = x;
            int y = (int) (motionEvent.getY() + 0.5f);
            this.T = y;
            this.R = y;
            EdgeEffect edgeEffect = this.I;
            if (edgeEffect == null || AbstractC0152fm.n(edgeEffect) == 0.0f || canScrollHorizontally(-1)) {
                z = false;
            } else {
                AbstractC0152fm.A(this.I, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
                z = true;
            }
            EdgeEffect edgeEffect2 = this.K;
            boolean z3 = z;
            if (edgeEffect2 != null) {
                z3 = z;
                if (AbstractC0152fm.n(edgeEffect2) != 0.0f) {
                    z3 = z;
                    if (!canScrollHorizontally(1)) {
                        AbstractC0152fm.A(this.K, 0.0f, motionEvent.getY() / getHeight());
                        z3 = true;
                    }
                }
            }
            EdgeEffect edgeEffect3 = this.J;
            boolean z4 = z3;
            if (edgeEffect3 != null) {
                z4 = z3;
                if (AbstractC0152fm.n(edgeEffect3) != 0.0f) {
                    z4 = z3;
                    if (!canScrollVertically(-1)) {
                        AbstractC0152fm.A(this.J, 0.0f, motionEvent.getX() / getWidth());
                        z4 = true;
                    }
                }
            }
            EdgeEffect edgeEffect4 = this.L;
            boolean z5 = z4;
            if (edgeEffect4 != null) {
                z5 = z4;
                if (AbstractC0152fm.n(edgeEffect4) != 0.0f) {
                    z5 = z4;
                    if (!canScrollVertically(1)) {
                        AbstractC0152fm.A(this.L, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
                        z5 = true;
                    }
                }
            }
            if (z5 || this.N == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                n0(1);
            }
            int[] iArr = this.s0;
            iArr[1] = 0;
            iArr[0] = 0;
            int i = d;
            if (e) {
                i = (d ? 1 : 0) | 2;
            }
            getScrollingChildHelper().g(i, 0);
        } else if (actionMasked == 1) {
            this.P.clear();
            n0(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.O);
            if (findPointerIndex < 0) {
                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.O + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.N != 1) {
                int i2 = x2 - this.Q;
                int i3 = y2 - this.R;
                if (d == 0 || Math.abs(i2) <= this.U) {
                    z2 = false;
                } else {
                    this.S = x2;
                    z2 = true;
                }
                if (e && Math.abs(i3) > this.U) {
                    this.T = y2;
                    z2 = true;
                }
                if (z2) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            f0();
            setScrollState(0);
        } else if (actionMasked == 5) {
            this.O = motionEvent.getPointerId(actionIndex);
            int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.S = x3;
            this.Q = x3;
            int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.T = y3;
            this.R = y3;
        } else if (actionMasked == 6) {
            W(motionEvent);
        }
        return this.N == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Tl.a("RV OnLayout");
        s();
        Tl.b();
        this.u = true;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng == null) {
            q(i, i2);
            return;
        }
        boolean J = abstractC0353ng.J();
        boolean z = false;
        Ag ag = this.h0;
        if (J) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.n.b.q(i, i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z = true;
            }
            this.w0 = z;
            if (z || this.m == null) {
                return;
            }
            if (ag.d == 1) {
                t();
            }
            this.n.q0(i, i2);
            ag.i = true;
            u();
            this.n.s0(i, i2);
            if (this.n.v0()) {
                this.n.q0(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                ag.i = true;
                u();
                this.n.s0(i, i2);
            }
            this.x0 = getMeasuredWidth();
            this.y0 = getMeasuredHeight();
            return;
        }
        if (this.t) {
            this.n.b.q(i, i2);
            return;
        }
        if (this.A) {
            l0();
            U();
            Y();
            V(true);
            if (ag.k) {
                ag.g = true;
            } else {
                this.e.d();
                ag.g = false;
            }
            this.A = false;
            m0(false);
        } else if (ag.k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        AbstractC0146fg abstractC0146fg = this.m;
        if (abstractC0146fg != null) {
            ag.e = abstractC0146fg.a();
        } else {
            ag.e = 0;
        }
        l0();
        this.n.b.q(i, i2);
        m0(false);
        ag.g = false;
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (Q()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0605xg)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0605xg c0605xg = (C0605xg) parcelable;
        this.d = c0605xg;
        super.onRestoreInstanceState(c0605xg.a);
        requestLayout();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.Parcelable, d, xg] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? abstractC0078d = new AbstractC0078d(super.onSaveInstanceState());
        C0605xg c0605xg = this.d;
        if (c0605xg != null) {
            abstractC0078d.c = c0605xg.c;
        } else {
            AbstractC0353ng abstractC0353ng = this.n;
            if (abstractC0353ng != null) {
                abstractC0078d.c = abstractC0353ng.e0();
            } else {
                abstractC0078d.c = null;
            }
        }
        return abstractC0078d;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        this.L = null;
        this.J = null;
        this.K = null;
        this.I = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:230:0x03f4, code lost:
    
        if (r8 < r14) goto L597;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:128:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02a0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02b8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0481  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0116  */
    /* JADX WARN: Type inference failed for: r4v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v6 */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r23) {
        /*
            Method dump skipped, instructions count: 1268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p() {
        if (!this.u || this.D) {
            Tl.a("RV FullInvalidate");
            s();
            Tl.b();
            return;
        }
        if (this.e.j()) {
            C0614y0 c0614y0 = this.e;
            int i = c0614y0.a;
            if ((i & 4) == 0 || (i & 11) != 0) {
                if (c0614y0.j()) {
                    Tl.a("RV FullInvalidate");
                    s();
                    Tl.b();
                    return;
                }
                return;
            }
            Tl.a("RV PartialInvalidate");
            l0();
            U();
            this.e.p();
            if (!this.w) {
                int e = this.f.e();
                int i2 = 0;
                while (true) {
                    if (i2 < e) {
                        Eg N = N(this.f.d(i2));
                        if (N != null && !N.r() && N.n()) {
                            s();
                            break;
                        }
                        i2++;
                    } else {
                        this.e.c();
                        break;
                    }
                }
            }
            m0(true);
            V(true);
            Tl.b();
        }
    }

    public final void q(int i, int i2) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        setMeasuredDimension(AbstractC0353ng.g(i, paddingRight, Rm.e(this)), AbstractC0353ng.g(i2, getPaddingBottom() + getPaddingTop(), Rm.d(this)));
    }

    public final void r(View view) {
        N(view);
        ArrayList arrayList = this.C;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                C0550vb c0550vb = (C0550vb) this.C.get(size);
                c0550vb.p(view);
                Eg M = c0550vb.r.M(view);
                if (M != null) {
                    Eg eg = c0550vb.c;
                    if (eg == null || M != eg) {
                        c0550vb.k(M, false);
                        if (c0550vb.a.remove(M.a)) {
                            c0550vb.m.a(c0550vb.r, M);
                        }
                    } else {
                        c0550vb.q(null, 0);
                    }
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z) {
        Eg N = N(view);
        if (N != null) {
            if (N.m()) {
                N.j &= -257;
            } else if (!N.r()) {
                StringBuilder sb = new StringBuilder("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(N);
                throw new IllegalArgumentException(AbstractC0407pi.g(this, sb));
            }
        } else if (A0) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            throw new IllegalArgumentException(AbstractC0407pi.g(this, sb2));
        }
        view.clearAnimation();
        r(view);
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        C0297lc c0297lc = this.n.e;
        if ((c0297lc == null || !c0297lc.e) && !Q() && view2 != null) {
            e0(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.n.k0(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        ArrayList arrayList = this.q;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((InterfaceC0431qg) arrayList.get(i)).a(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.v != 0 || this.x) {
            this.w = true;
        } else {
            super.requestLayout();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:156:0x0332, code lost:
    
        if (r19.f.c.contains(getFocusedChild()) == false) goto L476;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x038d, code lost:
    
        if (r6.hasFocusable() != false) goto L442;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [Eg] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r13v7, types: [Be, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v0, types: [K1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void s() {
        /*
            Method dump skipped, instructions count: 1014
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.s():void");
    }

    @Override // android.view.View
    public final void scrollBy(int i, int i2) {
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.x) {
            return;
        }
        boolean d = abstractC0353ng.d();
        boolean e = this.n.e();
        if (d || e) {
            if (!d) {
                i = 0;
            }
            if (!e) {
                i2 = 0;
            }
            g0(i, i2, null, 0);
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!Q()) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        } else {
            int a = accessibilityEvent != null ? AbstractC0538v.a(accessibilityEvent) : 0;
            this.z |= a != 0 ? a : 0;
        }
    }

    public void setAccessibilityDelegateCompat(Gg gg) {
        this.o0 = gg;
        AbstractC0205hn.h(this, gg);
    }

    public void setAdapter(AbstractC0146fg abstractC0146fg) {
        setLayoutFrozen(false);
        AbstractC0146fg abstractC0146fg2 = this.m;
        C0580wg c0580wg = this.b;
        if (abstractC0146fg2 != null) {
            abstractC0146fg2.a.unregisterObserver(c0580wg);
            this.m.getClass();
        }
        AbstractC0249jg abstractC0249jg = this.M;
        if (abstractC0249jg != null) {
            abstractC0249jg.e();
        }
        AbstractC0353ng abstractC0353ng = this.n;
        C0530ug c0530ug = this.c;
        if (abstractC0353ng != null) {
            abstractC0353ng.g0(c0530ug);
            this.n.h0(c0530ug);
        }
        c0530ug.a.clear();
        c0530ug.f();
        C0614y0 c0614y0 = this.e;
        c0614y0.q((ArrayList) c0614y0.c);
        c0614y0.q((ArrayList) c0614y0.d);
        c0614y0.a = 0;
        AbstractC0146fg abstractC0146fg3 = this.m;
        this.m = abstractC0146fg;
        if (abstractC0146fg != null) {
            abstractC0146fg.a.registerObserver(c0580wg);
        }
        AbstractC0353ng abstractC0353ng2 = this.n;
        if (abstractC0353ng2 != null) {
            abstractC0353ng2.O();
        }
        AbstractC0146fg abstractC0146fg4 = this.m;
        c0530ug.a.clear();
        c0530ug.f();
        c0530ug.e(abstractC0146fg3, true);
        C0505tg c = c0530ug.c();
        if (abstractC0146fg3 != null) {
            c.b--;
        }
        if (c.b == 0) {
            int i = 0;
            while (true) {
                SparseArray sparseArray = c.a;
                if (i >= sparseArray.size()) {
                    break;
                }
                C0480sg c0480sg = (C0480sg) sparseArray.valueAt(i);
                Iterator it = c0480sg.a.iterator();
                while (it.hasNext()) {
                    AbstractC0554vf.d(((Eg) it.next()).a);
                }
                c0480sg.a.clear();
                i++;
            }
        }
        if (abstractC0146fg4 != null) {
            c.b++;
        }
        c0530ug.d();
        this.h0.f = true;
        Z(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(InterfaceC0198hg interfaceC0198hg) {
        if (interfaceC0198hg == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(interfaceC0198hg != null);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.h) {
            this.L = null;
            this.J = null;
            this.K = null;
            this.I = null;
        }
        this.h = z;
        super.setClipToPadding(z);
        if (this.u) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(AbstractC0223ig abstractC0223ig) {
        abstractC0223ig.getClass();
        this.H = abstractC0223ig;
        this.L = null;
        this.J = null;
        this.K = null;
        this.I = null;
    }

    public void setHasFixedSize(boolean z) {
        this.t = z;
    }

    public void setItemAnimator(AbstractC0249jg abstractC0249jg) {
        AbstractC0249jg abstractC0249jg2 = this.M;
        if (abstractC0249jg2 != null) {
            abstractC0249jg2.e();
            this.M.a = null;
        }
        this.M = abstractC0249jg;
        if (abstractC0249jg != null) {
            abstractC0249jg.a = this.m0;
        }
    }

    public void setItemViewCacheSize(int i) {
        C0530ug c0530ug = this.c;
        c0530ug.e = i;
        c0530ug.m();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(AbstractC0353ng abstractC0353ng) {
        RecyclerView recyclerView;
        C0297lc c0297lc;
        if (abstractC0353ng == this.n) {
            return;
        }
        setScrollState(0);
        Dg dg = this.e0;
        dg.g.removeCallbacks(dg);
        dg.c.abortAnimation();
        AbstractC0353ng abstractC0353ng2 = this.n;
        if (abstractC0353ng2 != null && (c0297lc = abstractC0353ng2.e) != null) {
            c0297lc.i();
        }
        AbstractC0353ng abstractC0353ng3 = this.n;
        C0530ug c0530ug = this.c;
        if (abstractC0353ng3 != null) {
            AbstractC0249jg abstractC0249jg = this.M;
            if (abstractC0249jg != null) {
                abstractC0249jg.e();
            }
            this.n.g0(c0530ug);
            this.n.h0(c0530ug);
            c0530ug.a.clear();
            c0530ug.f();
            if (this.s) {
                AbstractC0353ng abstractC0353ng4 = this.n;
                abstractC0353ng4.g = false;
                abstractC0353ng4.Q(this);
            }
            this.n.t0(null);
            this.n = null;
        } else {
            c0530ug.a.clear();
            c0530ug.f();
        }
        C0367o4 c0367o4 = this.f;
        c0367o4.b.g();
        ArrayList arrayList = c0367o4.c;
        int size = arrayList.size() - 1;
        while (true) {
            recyclerView = c0367o4.a.a;
            if (size < 0) {
                break;
            }
            Eg N = N((View) arrayList.get(size));
            if (N != null) {
                int i = N.p;
                if (recyclerView.Q()) {
                    N.q = i;
                    recyclerView.u0.add(N);
                } else {
                    WeakHashMap weakHashMap = AbstractC0205hn.a;
                    Rm.s(N.a, i);
                }
                N.p = 0;
            }
            arrayList.remove(size);
            size--;
        }
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            recyclerView.r(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeAllViews();
        this.n = abstractC0353ng;
        if (abstractC0353ng != null) {
            if (abstractC0353ng.b != null) {
                StringBuilder sb = new StringBuilder("LayoutManager ");
                sb.append(abstractC0353ng);
                sb.append(" is already attached to a RecyclerView:");
                throw new IllegalArgumentException(AbstractC0407pi.g(abstractC0353ng.b, sb));
            }
            abstractC0353ng.t0(this);
            if (this.s) {
                AbstractC0353ng abstractC0353ng5 = this.n;
                abstractC0353ng5.g = true;
                abstractC0353ng5.P(this);
            }
        }
        c0530ug.m();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        C0628ye scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.d) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            Xm.z(scrollingChildHelper.c);
        }
        scrollingChildHelper.d = z;
    }

    public void setOnFlingListener(AbstractC0405pg abstractC0405pg) {
        this.V = abstractC0405pg;
    }

    @Deprecated
    public void setOnScrollListener(AbstractC0455rg abstractC0455rg) {
        this.i0 = abstractC0455rg;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.d0 = z;
    }

    public void setRecycledViewPool(C0505tg c0505tg) {
        C0530ug c0530ug = this.c;
        RecyclerView recyclerView = c0530ug.h;
        c0530ug.e(recyclerView.m, false);
        if (c0530ug.g != null) {
            r1.b--;
        }
        c0530ug.g = c0505tg;
        if (c0505tg != null && recyclerView.getAdapter() != null) {
            c0530ug.g.b++;
        }
        c0530ug.d();
    }

    @Deprecated
    public void setRecyclerListener(InterfaceC0555vg interfaceC0555vg) {
    }

    public void setScrollState(int i) {
        C0297lc c0297lc;
        if (i == this.N) {
            return;
        }
        if (B0) {
            Log.d("RecyclerView", "setting scroll state to " + i + " from " + this.N, new Exception());
        }
        this.N = i;
        if (i != 2) {
            Dg dg = this.e0;
            dg.g.removeCallbacks(dg);
            dg.c.abortAnimation();
            AbstractC0353ng abstractC0353ng = this.n;
            if (abstractC0353ng != null && (c0297lc = abstractC0353ng.e) != null) {
                c0297lc.i();
            }
        }
        AbstractC0353ng abstractC0353ng2 = this.n;
        if (abstractC0353ng2 != null) {
            abstractC0353ng2.f0(i);
        }
        AbstractC0455rg abstractC0455rg = this.i0;
        if (abstractC0455rg != null) {
            abstractC0455rg.a(this, i);
        }
        ArrayList arrayList = this.j0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((AbstractC0455rg) this.j0.get(size)).a(this, i);
            }
        }
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 0) {
            if (i == 1) {
                this.U = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
        }
        this.U = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(Cg cg) {
        this.c.getClass();
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return getScrollingChildHelper().g(i, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        getScrollingChildHelper().h(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        C0297lc c0297lc;
        if (z != this.x) {
            k("Do not suppressLayout in layout or scroll");
            if (!z) {
                this.x = false;
                if (this.w && this.n != null && this.m != null) {
                    requestLayout();
                }
                this.w = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.x = true;
            this.y = true;
            setScrollState(0);
            Dg dg = this.e0;
            dg.g.removeCallbacks(dg);
            dg.c.abortAnimation();
            AbstractC0353ng abstractC0353ng = this.n;
            if (abstractC0353ng == null || (c0297lc = abstractC0353ng.e) == null) {
                return;
            }
            c0297lc.i();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v11, types: [Be, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v2, types: [Be, java.lang.Object] */
    public final void t() {
        View F;
        C0360nn c0360nn;
        Ag ag = this.h0;
        ag.a(1);
        D(ag);
        ag.i = false;
        l0();
        K1 k1 = this.g;
        ((C0277ki) k1.b).clear();
        Qc qc = (Qc) k1.c;
        qc.a();
        U();
        Y();
        View focusedChild = (this.d0 && hasFocus() && this.m != null) ? getFocusedChild() : null;
        Eg M = (focusedChild == null || (F = F(focusedChild)) == null) ? null : M(F);
        if (M == null) {
            ag.m = -1L;
            ag.l = -1;
            ag.n = -1;
        } else {
            ag.m = this.m.b ? M.e : -1L;
            ag.l = this.D ? -1 : M.k() ? M.d : M.b();
            View view = M.a;
            int id = view.getId();
            while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
                view = ((ViewGroup) view).getFocusedChild();
                if (view.getId() != -1) {
                    id = view.getId();
                }
            }
            ag.n = id;
        }
        ag.h = ag.j && this.l0;
        this.l0 = false;
        this.k0 = false;
        ag.g = ag.k;
        ag.e = this.m.a();
        H(this.p0);
        boolean z = ag.j;
        C0277ki c0277ki = (C0277ki) k1.b;
        if (z) {
            int e = this.f.e();
            for (int i = 0; i < e; i++) {
                Eg N = N(this.f.d(i));
                if (!N.r() && (!N.i() || this.m.b)) {
                    AbstractC0249jg abstractC0249jg = this.M;
                    AbstractC0249jg.b(N);
                    N.e();
                    abstractC0249jg.getClass();
                    ?? obj = new Object();
                    obj.a(N);
                    C0360nn c0360nn2 = (C0360nn) c0277ki.getOrDefault(N, null);
                    if (c0360nn2 == null) {
                        c0360nn2 = C0360nn.a();
                        c0277ki.put(N, c0360nn2);
                    }
                    c0360nn2.b = obj;
                    c0360nn2.a |= 4;
                    if (ag.h && N.n() && !N.k() && !N.r() && !N.i()) {
                        qc.d(L(N), N);
                    }
                }
            }
        }
        if (ag.k) {
            int h = this.f.h();
            for (int i2 = 0; i2 < h; i2++) {
                Eg N2 = N(this.f.g(i2));
                if (A0 && N2.c == -1 && !N2.k()) {
                    throw new IllegalStateException(AbstractC0407pi.g(this, new StringBuilder("view holder cannot have position -1 unless it is removed")));
                }
                if (!N2.r() && N2.d == -1) {
                    N2.d = N2.c;
                }
            }
            boolean z2 = ag.f;
            ag.f = false;
            this.n.b0(this.c, ag);
            ag.f = z2;
            for (int i3 = 0; i3 < this.f.e(); i3++) {
                Eg N3 = N(this.f.d(i3));
                if (!N3.r() && ((c0360nn = (C0360nn) c0277ki.getOrDefault(N3, null)) == null || (c0360nn.a & 4) == 0)) {
                    AbstractC0249jg.b(N3);
                    boolean f = N3.f(8192);
                    AbstractC0249jg abstractC0249jg2 = this.M;
                    N3.e();
                    abstractC0249jg2.getClass();
                    ?? obj2 = new Object();
                    obj2.a(N3);
                    if (f) {
                        a0(N3, obj2);
                    } else {
                        C0360nn c0360nn3 = (C0360nn) c0277ki.getOrDefault(N3, null);
                        if (c0360nn3 == null) {
                            c0360nn3 = C0360nn.a();
                            c0277ki.put(N3, c0360nn3);
                        }
                        c0360nn3.a |= 2;
                        c0360nn3.b = obj2;
                    }
                }
            }
            m();
        } else {
            m();
        }
        V(true);
        m0(false);
        ag.d = 2;
    }

    public final void u() {
        l0();
        U();
        Ag ag = this.h0;
        ag.a(6);
        this.e.d();
        ag.e = this.m.a();
        ag.c = 0;
        if (this.d != null) {
            AbstractC0146fg abstractC0146fg = this.m;
            int p = AbstractC0407pi.p(abstractC0146fg.c);
            if (p == 1 ? abstractC0146fg.a() > 0 : p != 2) {
                Parcelable parcelable = this.d.c;
                if (parcelable != null) {
                    this.n.d0(parcelable);
                }
                this.d = null;
            }
        }
        ag.g = false;
        this.n.b0(this.c, ag);
        ag.f = false;
        ag.j = ag.j && this.M != null;
        ag.d = 4;
        V(true);
        m0(false);
    }

    public final boolean v(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().c(i, i2, iArr, iArr2, i3);
    }

    public final void w(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        getScrollingChildHelper().d(i, i2, i3, i4, iArr, i5, iArr2);
    }

    public final void x(int i, int i2) {
        this.G++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        AbstractC0455rg abstractC0455rg = this.i0;
        if (abstractC0455rg != null) {
            abstractC0455rg.b(this, i, i2);
        }
        ArrayList arrayList = this.j0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((AbstractC0455rg) this.j0.get(size)).b(this, i, i2);
            }
        }
        this.G--;
    }

    public final void y() {
        if (this.L != null) {
            return;
        }
        ((Bg) this.H).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.L = edgeEffect;
        if (this.h) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final void z() {
        if (this.I != null) {
            return;
        }
        ((Bg) this.H).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.I = edgeEffect;
        if (this.h) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [Q6, java.lang.Object, jg] */
    /* JADX WARN: Type inference failed for: r1v20, types: [Ag, java.lang.Object] */
    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        char c;
        int i2;
        ClassLoader classLoader;
        Object[] objArr;
        Constructor constructor;
        this.b = new C0580wg(this);
        this.c = new C0530ug(this);
        this.g = new K1(19);
        this.i = new RunnableC0095dg(this, 0);
        this.j = new Rect();
        this.k = new Rect();
        this.l = new RectF();
        this.o = new ArrayList();
        this.p = new ArrayList();
        this.q = new ArrayList();
        this.v = 0;
        this.D = false;
        this.E = false;
        this.F = 0;
        this.G = 0;
        this.H = J0;
        ?? obj = new Object();
        obj.a = null;
        obj.b = new ArrayList();
        obj.c = 120L;
        obj.d = 120L;
        obj.e = 250L;
        obj.f = 250L;
        obj.g = true;
        obj.h = new ArrayList();
        obj.i = new ArrayList();
        obj.j = new ArrayList();
        obj.k = new ArrayList();
        obj.l = new ArrayList();
        obj.m = new ArrayList();
        obj.n = new ArrayList();
        obj.o = new ArrayList();
        obj.p = new ArrayList();
        obj.q = new ArrayList();
        obj.r = new ArrayList();
        this.M = obj;
        this.N = 0;
        this.O = -1;
        this.b0 = Float.MIN_VALUE;
        this.c0 = Float.MIN_VALUE;
        this.d0 = true;
        this.e0 = new Dg(this);
        this.g0 = G0 ? new Object() : null;
        ?? obj2 = new Object();
        obj2.a = -1;
        obj2.b = 0;
        obj2.c = 0;
        obj2.d = 1;
        obj2.e = 0;
        obj2.f = false;
        obj2.g = false;
        obj2.h = false;
        obj2.i = false;
        obj2.j = false;
        obj2.k = false;
        this.h0 = obj2;
        this.k0 = false;
        this.l0 = false;
        C0120eg c0120eg = new C0120eg(this);
        this.m0 = c0120eg;
        this.n0 = false;
        this.p0 = new int[2];
        this.r0 = new int[2];
        this.s0 = new int[2];
        this.t0 = new int[2];
        this.u0 = new ArrayList();
        this.v0 = new RunnableC0095dg(this, 1);
        this.x0 = 0;
        this.y0 = 0;
        this.z0 = new C0120eg(this);
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.U = viewConfiguration.getScaledTouchSlop();
        this.b0 = AbstractC0230in.a(viewConfiguration);
        this.c0 = AbstractC0230in.b(viewConfiguration);
        this.W = viewConfiguration.getScaledMinimumFlingVelocity();
        this.a0 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.a = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        this.M.a = c0120eg;
        this.e = new C0614y0(new C0120eg(this));
        this.f = new C0367o4(new C0120eg(this));
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        if (Zm.c(this) == 0) {
            Zm.m(this, 8);
        }
        if (Rm.c(this) == 0) {
            Rm.s(this, 1);
        }
        this.B = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new Gg(this));
        int[] iArr = Xf.a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        AbstractC0076cn.d(this, context, iArr, attributeSet, obtainStyledAttributes, i, 0);
        String string = obtainStyledAttributes.getString(8);
        if (obtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.h = obtainStyledAttributes.getBoolean(1, true);
        if (obtainStyledAttributes.getBoolean(3, false)) {
            StateListDrawable stateListDrawable = (StateListDrawable) obtainStyledAttributes.getDrawable(6);
            Drawable drawable = obtainStyledAttributes.getDrawable(7);
            StateListDrawable stateListDrawable2 = (StateListDrawable) obtainStyledAttributes.getDrawable(4);
            Drawable drawable2 = obtainStyledAttributes.getDrawable(5);
            if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
                Resources resources = getContext().getResources();
                c = 2;
                i2 = 4;
                new Y8(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(com.omoda.launcher.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(com.omoda.launcher.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(com.omoda.launcher.R.dimen.fastscroll_margin));
            } else {
                throw new IllegalArgumentException(AbstractC0407pi.g(this, new StringBuilder("Trying to set fast scroller without both required drawables.")));
            }
        } else {
            c = 2;
            i2 = 4;
        }
        obtainStyledAttributes.recycle();
        if (string != null) {
            String trim = string.trim();
            if (!trim.isEmpty()) {
                if (trim.charAt(0) == '.') {
                    trim = context.getPackageName() + trim;
                } else if (!trim.contains(".")) {
                    trim = RecyclerView.class.getPackage().getName() + '.' + trim;
                }
                try {
                    if (isInEditMode()) {
                        classLoader = getClass().getClassLoader();
                    } else {
                        classLoader = context.getClassLoader();
                    }
                    Class<? extends U> asSubclass = Class.forName(trim, false, classLoader).asSubclass(AbstractC0353ng.class);
                    try {
                        constructor = asSubclass.getConstructor(H0);
                        objArr = new Object[i2];
                        objArr[0] = context;
                        objArr[1] = attributeSet;
                        objArr[c] = Integer.valueOf(i);
                        objArr[3] = 0;
                    } catch (NoSuchMethodException e) {
                        try {
                            objArr = null;
                            constructor = asSubclass.getConstructor(null);
                        } catch (NoSuchMethodException e2) {
                            e2.initCause(e);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + trim, e2);
                        }
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((AbstractC0353ng) constructor.newInstance(objArr));
                } catch (ClassCastException e3) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + trim, e3);
                } catch (ClassNotFoundException e4) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + trim, e4);
                } catch (IllegalAccessException e5) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + trim, e5);
                } catch (InstantiationException e6) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + trim, e6);
                } catch (InvocationTargetException e7) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + trim, e7);
                }
            }
        }
        int[] iArr2 = C0;
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i, 0);
        AbstractC0076cn.d(this, context, iArr2, attributeSet, obtainStyledAttributes2, i, 0);
        boolean z = obtainStyledAttributes2.getBoolean(0, true);
        obtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z);
        setTag(com.omoda.launcher.R.id.is_pooling_container_tag, Boolean.TRUE);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AbstractC0353ng abstractC0353ng = this.n;
        if (abstractC0353ng != null) {
            return abstractC0353ng.t(layoutParams);
        }
        throw new IllegalStateException(AbstractC0407pi.g(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }
}
