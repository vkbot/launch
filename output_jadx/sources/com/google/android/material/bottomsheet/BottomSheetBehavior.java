package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.PathInterpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.omoda.launcher.R;
import defpackage.A3;
import defpackage.AbstractC0076cn;
import defpackage.AbstractC0094df;
import defpackage.AbstractC0205hn;
import defpackage.AbstractC0348nb;
import defpackage.AbstractC0407pi;
import defpackage.B3;
import defpackage.C0231io;
import defpackage.C0257jo;
import defpackage.C0282kn;
import defpackage.C0488t;
import defpackage.C0558vj;
import defpackage.C0617y3;
import defpackage.C0642z3;
import defpackage.C3;
import defpackage.C6;
import defpackage.D;
import defpackage.Dd;
import defpackage.Ed;
import defpackage.I5;
import defpackage.K1;
import defpackage.Rm;
import defpackage.RunnableC0106e2;
import defpackage.Sm;
import defpackage.Um;
import defpackage.V5;
import defpackage.Vh;
import defpackage.ViewOnApplyWindowInsetsListenerC0206ho;
import defpackage.Vm;
import defpackage.Xm;
import defpackage.Y5;
import defpackage.Yf;
import defpackage.r;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends V5 {
    public final C3 A;
    public final ValueAnimator B;
    public final int C;
    public int D;
    public int E;
    public final float F;
    public int G;
    public final float H;
    public boolean I;
    public boolean J;
    public final boolean K;
    public int L;
    public C0282kn M;
    public boolean N;
    public int O;
    public boolean P;
    public final float Q;
    public int R;
    public int S;
    public int T;
    public WeakReference U;
    public WeakReference V;
    public final ArrayList W;
    public VelocityTracker X;
    public int Y;
    public int Z;
    public final int a;
    public boolean a0;
    public boolean b;
    public HashMap b0;
    public final float c;
    public final SparseIntArray c0;
    public final int d;
    public final A3 d0;
    public int e;
    public boolean f;
    public int g;
    public final int h;
    public final Ed i;
    public final ColorStateList j;
    public final int k;
    public final int l;
    public int m;
    public final boolean n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public final boolean t;
    public final boolean u;
    public int v;
    public int w;
    public final boolean x;
    public final Vh y;
    public boolean z;

    public BottomSheetBehavior() {
        this.a = 0;
        this.b = true;
        this.k = -1;
        this.l = -1;
        this.A = new C3(this);
        this.F = 0.5f;
        this.H = -1.0f;
        this.K = true;
        this.L = 4;
        this.Q = 0.1f;
        this.W = new ArrayList();
        this.Z = -1;
        this.c0 = new SparseIntArray();
        this.d0 = new A3(this, 0);
    }

    public static View v(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        if (Xm.p(view)) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View v = v(viewGroup.getChildAt(i));
                if (v != null) {
                    return v;
                }
            }
        }
        return null;
    }

    public static int w(int i, int i2, int i3, int i4) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, i2, i4);
        if (i3 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i3), 1073741824);
        }
        if (size != 0) {
            i3 = Math.min(size, i3);
        }
        return View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
    }

    public final void A(int i) {
        if (i == -1) {
            if (this.f) {
                return;
            } else {
                this.f = true;
            }
        } else {
            if (!this.f && this.e == i) {
                return;
            }
            this.f = false;
            this.e = Math.max(0, i);
        }
        I();
    }

    public final void B(int i) {
        if (i == 1 || i == 2) {
            StringBuilder sb = new StringBuilder("STATE_");
            sb.append(i == 1 ? "DRAGGING" : "SETTLING");
            sb.append(" should not be set externally.");
            throw new IllegalArgumentException(sb.toString());
        }
        if (!this.I && i == 5) {
            Log.w("BottomSheetBehavior", "Cannot set state: " + i);
            return;
        }
        int i2 = (i == 6 && this.b && y(i) <= this.D) ? 3 : i;
        WeakReference weakReference = this.U;
        if (weakReference == null || weakReference.get() == null) {
            C(i);
            return;
        }
        View view = (View) this.U.get();
        RunnableC0106e2 runnableC0106e2 = new RunnableC0106e2(this, view, i2);
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested()) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            if (Um.b(view)) {
                view.post(runnableC0106e2);
                return;
            }
        }
        runnableC0106e2.run();
    }

    public final void C(int i) {
        if (this.L == i) {
            return;
        }
        this.L = i;
        if (i != 4 && i != 3 && i != 6) {
            boolean z = this.I;
        }
        WeakReference weakReference = this.U;
        if (weakReference == null || ((View) weakReference.get()) == null) {
            return;
        }
        if (i == 3) {
            H(true);
        } else if (i == 6 || i == 5 || i == 4) {
            H(false);
        }
        G(i, true);
        ArrayList arrayList = this.W;
        if (arrayList.size() <= 0) {
            F();
        } else {
            arrayList.get(0).getClass();
            throw new ClassCastException();
        }
    }

    public final boolean D(View view, float f) {
        if (this.J) {
            return true;
        }
        if (view.getTop() < this.G) {
            return false;
        }
        return Math.abs(((f * this.Q) + ((float) view.getTop())) - ((float) this.G)) / ((float) t()) > 0.5f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
    
        if (r3 != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
    
        if (r1.o(r3.getLeft(), r0) != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0032, code lost:
    
        C(2);
        G(r4, true);
        r2.A.a(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void E(android.view.View r3, int r4, boolean r5) {
        /*
            r2 = this;
            int r0 = r2.y(r4)
            kn r1 = r2.M
            if (r1 == 0) goto L40
            if (r5 == 0) goto L15
            int r3 = r3.getLeft()
            boolean r3 = r1.o(r3, r0)
            if (r3 == 0) goto L40
            goto L32
        L15:
            int r5 = r3.getLeft()
            r1.r = r3
            r3 = -1
            r1.c = r3
            r3 = 0
            boolean r3 = r1.h(r5, r0, r3, r3)
            if (r3 != 0) goto L30
            int r5 = r1.a
            if (r5 != 0) goto L30
            android.view.View r5 = r1.r
            if (r5 == 0) goto L30
            r5 = 0
            r1.r = r5
        L30:
            if (r3 == 0) goto L40
        L32:
            r3 = 2
            r2.C(r3)
            r3 = 1
            r2.G(r4, r3)
            C3 r2 = r2.A
            r2.a(r4)
            goto L43
        L40:
            r2.C(r4)
        L43:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.E(android.view.View, int, boolean):void");
    }

    public final void F() {
        View view;
        int i;
        WeakReference weakReference = this.U;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        AbstractC0205hn.f(view, 524288);
        AbstractC0205hn.d(view, 0);
        AbstractC0205hn.f(view, 262144);
        AbstractC0205hn.d(view, 0);
        AbstractC0205hn.f(view, 1048576);
        AbstractC0205hn.d(view, 0);
        SparseIntArray sparseIntArray = this.c0;
        int i2 = sparseIntArray.get(0, -1);
        if (i2 != -1) {
            AbstractC0205hn.f(view, i2);
            AbstractC0205hn.d(view, 0);
            sparseIntArray.delete(0);
        }
        if (!this.b && this.L != 6) {
            String string = view.getResources().getString(R.string.bottomsheet_action_expand_halfway);
            C0558vj c0558vj = new C0558vj(this, 6);
            ArrayList b = AbstractC0205hn.b(view);
            int i3 = 0;
            while (true) {
                if (i3 >= b.size()) {
                    int i4 = 0;
                    int i5 = -1;
                    while (true) {
                        int[] iArr = AbstractC0205hn.b;
                        if (i4 >= iArr.length || i5 != -1) {
                            break;
                        }
                        int i6 = iArr[i4];
                        boolean z = true;
                        for (int i7 = 0; i7 < b.size(); i7++) {
                            z &= ((D) b.get(i7)).a() != i6;
                        }
                        if (z) {
                            i5 = i6;
                        }
                        i4++;
                    }
                    i = i5;
                } else {
                    if (TextUtils.equals(string, ((AccessibilityNodeInfo.AccessibilityAction) ((D) b.get(i3)).a).getLabel())) {
                        i = ((D) b.get(i3)).a();
                        break;
                    }
                    i3++;
                }
            }
            if (i != -1) {
                D d = new D(null, i, string, c0558vj, null);
                View.AccessibilityDelegate a = AbstractC0076cn.a(view);
                C0488t c0488t = a == null ? null : a instanceof r ? ((r) a).a : new C0488t(a);
                if (c0488t == null) {
                    c0488t = new C0488t();
                }
                AbstractC0205hn.h(view, c0488t);
                AbstractC0205hn.f(view, d.a());
                AbstractC0205hn.b(view).add(d);
                AbstractC0205hn.d(view, 0);
            }
            sparseIntArray.put(0, i);
        }
        if (this.I && this.L != 5) {
            AbstractC0205hn.g(view, D.j, new C0558vj(this, 5));
        }
        int i8 = this.L;
        if (i8 == 3) {
            AbstractC0205hn.g(view, D.i, new C0558vj(this, this.b ? 4 : 6));
            return;
        }
        if (i8 == 4) {
            AbstractC0205hn.g(view, D.h, new C0558vj(this, this.b ? 3 : 6));
        } else {
            if (i8 != 6) {
                return;
            }
            AbstractC0205hn.g(view, D.i, new C0558vj(this, 4));
            AbstractC0205hn.g(view, D.h, new C0558vj(this, 3));
        }
    }

    public final void G(int i, boolean z) {
        Ed ed = this.i;
        ValueAnimator valueAnimator = this.B;
        if (i == 2) {
            return;
        }
        boolean z2 = this.L == 3 && (this.x || z());
        if (this.z == z2 || ed == null) {
            return;
        }
        this.z = z2;
        if (z && valueAnimator != null) {
            if (valueAnimator.isRunning()) {
                valueAnimator.reverse();
                return;
            } else {
                valueAnimator.setFloatValues(ed.a.i, z2 ? s() : 1.0f);
                valueAnimator.start();
                return;
            }
        }
        if (valueAnimator != null && valueAnimator.isRunning()) {
            valueAnimator.cancel();
        }
        float s = this.z ? s() : 1.0f;
        Dd dd = ed.a;
        if (dd.i != s) {
            dd.i = s;
            ed.e = true;
            ed.invalidateSelf();
        }
    }

    public final void H(boolean z) {
        WeakReference weakReference = this.U;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z) {
                if (this.b0 != null) {
                    return;
                } else {
                    this.b0 = new HashMap(childCount);
                }
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt != this.U.get() && z) {
                    this.b0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z) {
                return;
            }
            this.b0 = null;
        }
    }

    public final void I() {
        View view;
        if (this.U != null) {
            r();
            if (this.L != 4 || (view = (View) this.U.get()) == null) {
                return;
            }
            view.requestLayout();
        }
    }

    @Override // defpackage.V5
    public final void c(Y5 y5) {
        this.U = null;
        this.M = null;
    }

    @Override // defpackage.V5
    public final void e() {
        this.U = null;
        this.M = null;
    }

    @Override // defpackage.V5
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int i;
        C0282kn c0282kn;
        if (!view.isShown() || !this.K) {
            this.N = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.Y = -1;
            this.Z = -1;
            VelocityTracker velocityTracker = this.X;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.X = null;
            }
        }
        if (this.X == null) {
            this.X = VelocityTracker.obtain();
        }
        this.X.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.Z = (int) motionEvent.getY();
            if (this.L != 2) {
                WeakReference weakReference = this.V;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && coordinatorLayout.o(view2, x, this.Z)) {
                    this.Y = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.a0 = true;
                }
            }
            this.N = this.Y == -1 && !coordinatorLayout.o(view, x, this.Z);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.a0 = false;
            this.Y = -1;
            if (this.N) {
                this.N = false;
                return false;
            }
        }
        if (!this.N && (c0282kn = this.M) != null && c0282kn.p(motionEvent)) {
            return true;
        }
        WeakReference weakReference2 = this.V;
        View view3 = weakReference2 != null ? (View) weakReference2.get() : null;
        return (actionMasked != 2 || view3 == null || this.N || this.L == 1 || coordinatorLayout.o(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.M == null || (i = this.Z) == -1 || Math.abs(((float) i) - motionEvent.getY()) <= ((float) this.M.b)) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.lang.Object, Bn] */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.lang.Object, android.view.View$OnAttachStateChangeListener] */
    @Override // defpackage.V5
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, int i) {
        int i2 = this.l;
        Ed ed = this.i;
        boolean z = false;
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        if (Rm.b(coordinatorLayout) && !Rm.b(view)) {
            view.setFitsSystemWindows(true);
        }
        if (this.U == null) {
            this.g = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            boolean z2 = (this.n || this.f) ? false : true;
            if (this.o || this.p || this.q || this.s || this.t || this.u || z2) {
                C0642z3 c0642z3 = new C0642z3(this, z2);
                int f = Sm.f(view);
                view.getPaddingTop();
                int e = Sm.e(view);
                int paddingBottom = view.getPaddingBottom();
                ?? obj = new Object();
                obj.a = f;
                obj.b = e;
                obj.c = paddingBottom;
                Xm.u(view, new K1(c0642z3, obj, 20, z));
                if (Um.b(view)) {
                    Vm.c(view);
                } else {
                    view.addOnAttachStateChangeListener(new Object());
                }
            }
            I5 i5 = new I5(view);
            if (Build.VERSION.SDK_INT >= 30) {
                view.setWindowInsetsAnimationCallback(new C0257jo(i5));
            } else {
                PathInterpolator pathInterpolator = C0231io.e;
                Object tag = view.getTag(R.id.tag_on_apply_window_listener);
                ViewOnApplyWindowInsetsListenerC0206ho viewOnApplyWindowInsetsListenerC0206ho = new ViewOnApplyWindowInsetsListenerC0206ho(view, i5);
                view.setTag(R.id.tag_window_insets_animation_callback, viewOnApplyWindowInsetsListenerC0206ho);
                if (tag == null) {
                    view.setOnApplyWindowInsetsListener(viewOnApplyWindowInsetsListenerC0206ho);
                }
            }
            this.U = new WeakReference(view);
            Context context = view.getContext();
            C6.M(context, R.attr.motionEasingStandardDecelerateInterpolator, AbstractC0094df.b(0.0f, 0.0f, 0.0f, 1.0f));
            C6.L(context, R.attr.motionDurationMedium2, 300);
            C6.L(context, R.attr.motionDurationShort3, 150);
            C6.L(context, R.attr.motionDurationShort2, 100);
            Resources resources = view.getResources();
            resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_x_distance);
            resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_y_distance);
            if (ed != null) {
                Rm.q(view, ed);
                float f2 = this.H;
                if (f2 == -1.0f) {
                    f2 = Xm.i(view);
                }
                ed.h(f2);
            } else {
                ColorStateList colorStateList = this.j;
                if (colorStateList != null) {
                    Xm.q(view, colorStateList);
                }
            }
            F();
            if (Rm.c(view) == 0) {
                Rm.s(view, 1);
            }
        }
        if (this.M == null) {
            this.M = new C0282kn(coordinatorLayout.getContext(), coordinatorLayout, this.d0);
        }
        int top = view.getTop();
        coordinatorLayout.q(view, i);
        this.S = coordinatorLayout.getWidth();
        this.T = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.R = height;
        int i3 = this.T;
        int i4 = i3 - height;
        int i6 = this.w;
        if (i4 < i6) {
            if (this.r) {
                if (i2 != -1) {
                    i3 = Math.min(i3, i2);
                }
                this.R = i3;
            } else {
                int i7 = i3 - i6;
                if (i2 != -1) {
                    i7 = Math.min(i7, i2);
                }
                this.R = i7;
            }
        }
        this.D = Math.max(0, this.T - this.R);
        this.E = (int) ((1.0f - this.F) * this.T);
        r();
        int i8 = this.L;
        if (i8 == 3) {
            view.offsetTopAndBottom(x());
        } else if (i8 == 6) {
            view.offsetTopAndBottom(this.E);
        } else if (this.I && i8 == 5) {
            view.offsetTopAndBottom(this.T);
        } else if (i8 == 4) {
            view.offsetTopAndBottom(this.G);
        } else if (i8 == 1 || i8 == 2) {
            view.offsetTopAndBottom(top - view.getTop());
        }
        G(this.L, false);
        this.V = new WeakReference(v(view));
        ArrayList arrayList = this.W;
        if (arrayList.size() <= 0) {
            return true;
        }
        arrayList.get(0).getClass();
        throw new ClassCastException();
    }

    @Override // defpackage.V5
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(w(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, this.k, marginLayoutParams.width), w(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, this.l, marginLayoutParams.height));
        return true;
    }

    @Override // defpackage.V5
    public final boolean i(View view) {
        WeakReference weakReference = this.V;
        return (weakReference == null || view != weakReference.get() || this.L == 3) ? false : true;
    }

    @Override // defpackage.V5
    public final void j(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
        boolean z = this.K;
        if (i3 == 1) {
            return;
        }
        WeakReference weakReference = this.V;
        if (view2 != (weakReference != null ? (View) weakReference.get() : null)) {
            return;
        }
        int top = view.getTop();
        int i4 = top - i2;
        if (i2 > 0) {
            if (i4 < x()) {
                int x = top - x();
                iArr[1] = x;
                WeakHashMap weakHashMap = AbstractC0205hn.a;
                view.offsetTopAndBottom(-x);
                C(3);
            } else {
                if (!z) {
                    return;
                }
                iArr[1] = i2;
                WeakHashMap weakHashMap2 = AbstractC0205hn.a;
                view.offsetTopAndBottom(-i2);
                C(1);
            }
        } else if (i2 < 0 && !view2.canScrollVertically(-1)) {
            int i5 = this.G;
            if (i4 > i5 && !this.I) {
                int i6 = top - i5;
                iArr[1] = i6;
                WeakHashMap weakHashMap3 = AbstractC0205hn.a;
                view.offsetTopAndBottom(-i6);
                C(4);
            } else {
                if (!z) {
                    return;
                }
                iArr[1] = i2;
                WeakHashMap weakHashMap4 = AbstractC0205hn.a;
                view.offsetTopAndBottom(-i2);
                C(1);
            }
        }
        u(view.getTop());
        this.O = i2;
        this.P = true;
    }

    @Override // defpackage.V5
    public final void k(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
    }

    @Override // defpackage.V5
    public final void m(View view, Parcelable parcelable) {
        B3 b3 = (B3) parcelable;
        int i = this.a;
        if (i != 0) {
            if (i == -1 || (i & 1) == 1) {
                this.e = b3.d;
            }
            if (i == -1 || (i & 2) == 2) {
                this.b = b3.e;
            }
            if (i == -1 || (i & 4) == 4) {
                this.I = b3.f;
            }
            if (i == -1 || (i & 8) == 8) {
                this.J = b3.g;
            }
        }
        int i2 = b3.c;
        if (i2 == 1 || i2 == 2) {
            this.L = 4;
        } else {
            this.L = i2;
        }
    }

    @Override // defpackage.V5
    public final Parcelable n(View view) {
        return new B3(View.BaseSavedState.EMPTY_STATE, this);
    }

    @Override // defpackage.V5
    public final boolean o(View view, int i, int i2) {
        this.O = 0;
        this.P = false;
        return (i & 2) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0030, code lost:
    
        if (r4.getTop() <= r3.E) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0071, code lost:
    
        if (java.lang.Math.abs(r5 - r3.D) < java.lang.Math.abs(r5 - r3.G)) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0080, code lost:
    
        if (r5 < java.lang.Math.abs(r5 - r3.G)) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0090, code lost:
    
        if (java.lang.Math.abs(r5 - r2) < java.lang.Math.abs(r5 - r3.G)) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ac, code lost:
    
        if (java.lang.Math.abs(r5 - r3.E) < java.lang.Math.abs(r5 - r3.G)) goto L50;
     */
    @Override // defpackage.V5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void p(android.view.View r4, android.view.View r5, int r6) {
        /*
            r3 = this;
            int r6 = r4.getTop()
            int r0 = r3.x()
            r1 = 3
            if (r6 != r0) goto Lf
            r3.C(r1)
            return
        Lf:
            java.lang.ref.WeakReference r6 = r3.V
            if (r6 == 0) goto Lb5
            java.lang.Object r6 = r6.get()
            if (r5 != r6) goto Lb5
            boolean r5 = r3.P
            if (r5 != 0) goto L1f
            goto Lb5
        L1f:
            int r5 = r3.O
            r6 = 6
            if (r5 <= 0) goto L34
            boolean r5 = r3.b
            if (r5 == 0) goto L2a
            goto Laf
        L2a:
            int r5 = r4.getTop()
            int r0 = r3.E
            if (r5 <= r0) goto Laf
            goto Lae
        L34:
            boolean r5 = r3.I
            if (r5 == 0) goto L55
            android.view.VelocityTracker r5 = r3.X
            if (r5 != 0) goto L3e
            r5 = 0
            goto L4d
        L3e:
            r0 = 1000(0x3e8, float:1.401E-42)
            float r2 = r3.c
            r5.computeCurrentVelocity(r0, r2)
            android.view.VelocityTracker r5 = r3.X
            int r0 = r3.Y
            float r5 = r5.getYVelocity(r0)
        L4d:
            boolean r5 = r3.D(r4, r5)
            if (r5 == 0) goto L55
            r1 = 5
            goto Laf
        L55:
            int r5 = r3.O
            r0 = 4
            if (r5 != 0) goto L93
            int r5 = r4.getTop()
            boolean r2 = r3.b
            if (r2 == 0) goto L74
            int r6 = r3.D
            int r6 = r5 - r6
            int r6 = java.lang.Math.abs(r6)
            int r2 = r3.G
            int r5 = r5 - r2
            int r5 = java.lang.Math.abs(r5)
            if (r6 >= r5) goto L97
            goto Laf
        L74:
            int r2 = r3.E
            if (r5 >= r2) goto L83
            int r0 = r3.G
            int r0 = r5 - r0
            int r0 = java.lang.Math.abs(r0)
            if (r5 >= r0) goto Lae
            goto Laf
        L83:
            int r1 = r5 - r2
            int r1 = java.lang.Math.abs(r1)
            int r2 = r3.G
            int r5 = r5 - r2
            int r5 = java.lang.Math.abs(r5)
            if (r1 >= r5) goto L97
            goto Lae
        L93:
            boolean r5 = r3.b
            if (r5 == 0) goto L99
        L97:
            r1 = r0
            goto Laf
        L99:
            int r5 = r4.getTop()
            int r1 = r3.E
            int r1 = r5 - r1
            int r1 = java.lang.Math.abs(r1)
            int r2 = r3.G
            int r5 = r5 - r2
            int r5 = java.lang.Math.abs(r5)
            if (r1 >= r5) goto L97
        Lae:
            r1 = r6
        Laf:
            r5 = 0
            r3.E(r4, r1, r5)
            r3.P = r5
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.p(android.view.View, android.view.View, int):void");
    }

    @Override // defpackage.V5
    public final boolean q(View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i = this.L;
        if (i == 1 && actionMasked == 0) {
            return true;
        }
        C0282kn c0282kn = this.M;
        if (c0282kn != null && (this.K || i == 1)) {
            c0282kn.j(motionEvent);
        }
        if (actionMasked == 0) {
            this.Y = -1;
            this.Z = -1;
            VelocityTracker velocityTracker = this.X;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.X = null;
            }
        }
        if (this.X == null) {
            this.X = VelocityTracker.obtain();
        }
        this.X.addMovement(motionEvent);
        if (this.M != null && ((this.K || this.L == 1) && actionMasked == 2 && !this.N)) {
            float abs = Math.abs(this.Z - motionEvent.getY());
            C0282kn c0282kn2 = this.M;
            if (abs > c0282kn2.b) {
                c0282kn2.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.N;
    }

    public final void r() {
        int t = t();
        if (this.b) {
            this.G = Math.max(this.T - t, this.D);
        } else {
            this.G = this.T - t;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float s() {
        /*
            r5 = this;
            Ed r0 = r5.i
            r1 = 0
            if (r0 == 0) goto L79
            java.lang.ref.WeakReference r0 = r5.U
            if (r0 == 0) goto L79
            java.lang.Object r0 = r0.get()
            if (r0 == 0) goto L79
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 31
            if (r0 < r2) goto L79
            java.lang.ref.WeakReference r0 = r5.U
            java.lang.Object r0 = r0.get()
            android.view.View r0 = (android.view.View) r0
            boolean r2 = r5.z()
            if (r2 == 0) goto L79
            android.view.WindowInsets r0 = r0.getRootWindowInsets()
            if (r0 == 0) goto L79
            Ed r2 = r5.i
            Dd r3 = r2.a
            Vh r3 = r3.a
            b6 r3 = r3.e
            android.graphics.RectF r2 = r2.e()
            float r2 = r3.a(r2)
            android.view.RoundedCorner r3 = defpackage.AbstractC0592x3.h(r0)
            if (r3 == 0) goto L4e
            int r3 = defpackage.AbstractC0592x3.c(r3)
            float r3 = (float) r3
            int r4 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r4 <= 0) goto L4e
            int r4 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r4 <= 0) goto L4e
            float r3 = r3 / r2
            goto L4f
        L4e:
            r3 = r1
        L4f:
            Ed r5 = r5.i
            Dd r2 = r5.a
            Vh r2 = r2.a
            b6 r2 = r2.f
            android.graphics.RectF r5 = r5.e()
            float r5 = r2.a(r5)
            android.view.RoundedCorner r0 = defpackage.AbstractC0592x3.m(r0)
            if (r0 == 0) goto L74
            int r0 = defpackage.AbstractC0592x3.c(r0)
            float r0 = (float) r0
            int r2 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r2 <= 0) goto L74
            int r2 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r2 <= 0) goto L74
            float r1 = r0 / r5
        L74:
            float r5 = java.lang.Math.max(r3, r1)
            return r5
        L79:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.s():float");
    }

    public final int t() {
        int i;
        int i2;
        int i3;
        if (this.f) {
            i = Math.min(Math.max(this.g, this.T - ((this.S * 9) / 16)), this.R);
            i2 = this.v;
        } else {
            if (!this.n && !this.o && (i3 = this.m) > 0) {
                return Math.max(this.e, i3 + this.h);
            }
            i = this.e;
            i2 = this.v;
        }
        return i + i2;
    }

    public final void u(int i) {
        if (((View) this.U.get()) != null) {
            ArrayList arrayList = this.W;
            if (arrayList.isEmpty()) {
                return;
            }
            int i2 = this.G;
            if (i <= i2 && i2 != x()) {
                x();
            }
            if (arrayList.size() <= 0) {
                return;
            }
            arrayList.get(0).getClass();
            throw new ClassCastException();
        }
    }

    public final int x() {
        if (this.b) {
            return this.D;
        }
        return Math.max(this.C, this.r ? 0 : this.w);
    }

    public final int y(int i) {
        if (i == 3) {
            return x();
        }
        if (i == 4) {
            return this.G;
        }
        if (i == 5) {
            return this.T;
        }
        if (i == 6) {
            return this.E;
        }
        throw new IllegalArgumentException(AbstractC0407pi.h("Invalid state to get top offset: ", i));
    }

    public final boolean z() {
        WeakReference weakReference = this.U;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        int[] iArr = new int[2];
        ((View) this.U.get()).getLocationOnScreen(iArr);
        return iArr[1] == 0;
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i;
        int i2 = 0;
        this.a = 0;
        this.b = true;
        this.k = -1;
        this.l = -1;
        this.A = new C3(this);
        this.F = 0.5f;
        this.H = -1.0f;
        this.K = true;
        this.L = 4;
        this.Q = 0.1f;
        this.W = new ArrayList();
        this.Z = -1;
        this.c0 = new SparseIntArray();
        this.d0 = new A3(this, i2);
        this.h = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Yf.a);
        if (obtainStyledAttributes.hasValue(3)) {
            this.j = AbstractC0348nb.B(context, obtainStyledAttributes, 3);
        }
        if (obtainStyledAttributes.hasValue(21)) {
            this.y = Vh.b(context, attributeSet, R.attr.bottomSheetStyle, R.style.Widget_Design_BottomSheet_Modal).a();
        }
        Vh vh = this.y;
        if (vh != null) {
            Ed ed = new Ed(vh);
            this.i = ed;
            ed.g(context);
            ColorStateList colorStateList = this.j;
            if (colorStateList != null) {
                this.i.i(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.i.setTint(typedValue.data);
            }
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(s(), 1.0f);
        this.B = ofFloat;
        ofFloat.setDuration(500L);
        this.B.addUpdateListener(new C0617y3(i2, this));
        this.H = obtainStyledAttributes.getDimension(2, -1.0f);
        if (obtainStyledAttributes.hasValue(0)) {
            this.k = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        if (obtainStyledAttributes.hasValue(1)) {
            this.l = obtainStyledAttributes.getDimensionPixelSize(1, -1);
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(9);
        if (peekValue != null && (i = peekValue.data) == -1) {
            A(i);
        } else {
            A(obtainStyledAttributes.getDimensionPixelSize(9, -1));
        }
        boolean z = obtainStyledAttributes.getBoolean(8, false);
        if (this.I != z) {
            this.I = z;
            if (!z && this.L == 5) {
                B(4);
            }
            F();
        }
        this.n = obtainStyledAttributes.getBoolean(13, false);
        boolean z2 = obtainStyledAttributes.getBoolean(6, true);
        if (this.b != z2) {
            this.b = z2;
            if (this.U != null) {
                r();
            }
            C((this.b && this.L == 6) ? 3 : this.L);
            G(this.L, true);
            F();
        }
        this.J = obtainStyledAttributes.getBoolean(12, false);
        this.K = obtainStyledAttributes.getBoolean(4, true);
        this.a = obtainStyledAttributes.getInt(10, 0);
        float f = obtainStyledAttributes.getFloat(7, 0.5f);
        if (f > 0.0f && f < 1.0f) {
            this.F = f;
            if (this.U != null) {
                this.E = (int) ((1.0f - f) * this.T);
            }
            TypedValue peekValue2 = obtainStyledAttributes.peekValue(5);
            if (peekValue2 != null && peekValue2.type == 16) {
                int i3 = peekValue2.data;
                if (i3 >= 0) {
                    this.C = i3;
                    G(this.L, true);
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            } else {
                int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(5, 0);
                if (dimensionPixelOffset >= 0) {
                    this.C = dimensionPixelOffset;
                    G(this.L, true);
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            }
            this.d = obtainStyledAttributes.getInt(11, 500);
            this.o = obtainStyledAttributes.getBoolean(17, false);
            this.p = obtainStyledAttributes.getBoolean(18, false);
            this.q = obtainStyledAttributes.getBoolean(19, false);
            this.r = obtainStyledAttributes.getBoolean(20, true);
            this.s = obtainStyledAttributes.getBoolean(14, false);
            this.t = obtainStyledAttributes.getBoolean(15, false);
            this.u = obtainStyledAttributes.getBoolean(16, false);
            this.x = obtainStyledAttributes.getBoolean(23, true);
            obtainStyledAttributes.recycle();
            this.c = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
            return;
        }
        throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
    }
}
