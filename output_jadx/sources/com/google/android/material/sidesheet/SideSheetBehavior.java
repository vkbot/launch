package com.google.android.material.sidesheet;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.omoda.launcher.R;
import defpackage.A3;
import defpackage.AbstractC0050bn;
import defpackage.AbstractC0094df;
import defpackage.AbstractC0145ff;
import defpackage.AbstractC0205hn;
import defpackage.AbstractC0348nb;
import defpackage.AbstractC0407pi;
import defpackage.C0103e;
import defpackage.C0251ji;
import defpackage.C0282kn;
import defpackage.C3;
import defpackage.C6;
import defpackage.D;
import defpackage.Ed;
import defpackage.Qb;
import defpackage.Rm;
import defpackage.Uh;
import defpackage.Um;
import defpackage.V5;
import defpackage.Vh;
import defpackage.X;
import defpackage.Xm;
import defpackage.Y5;
import defpackage.Yf;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class SideSheetBehavior<V extends View> extends V5 {
    public AbstractC0145ff a;
    public final Ed b;
    public final ColorStateList c;
    public final Vh d;
    public final C3 e;
    public final float f;
    public final boolean g;
    public int h;
    public C0282kn i;
    public boolean j;
    public final float k;
    public int l;
    public int m;
    public int n;
    public int o;
    public WeakReference p;
    public WeakReference q;
    public final int r;
    public VelocityTracker s;
    public int t;
    public final LinkedHashSet u;
    public final A3 v;

    public SideSheetBehavior() {
        this.e = new C3(this);
        this.g = true;
        this.h = 5;
        this.k = 0.1f;
        this.r = -1;
        this.u = new LinkedHashSet();
        this.v = new A3(this, 1);
    }

    @Override // defpackage.V5
    public final void c(Y5 y5) {
        this.p = null;
        this.i = null;
    }

    @Override // defpackage.V5
    public final void e() {
        this.p = null;
        this.i = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
    
        if (defpackage.AbstractC0050bn.b(r4) != null) goto L6;
     */
    @Override // defpackage.V5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean f(androidx.coordinatorlayout.widget.CoordinatorLayout r3, android.view.View r4, android.view.MotionEvent r5) {
        /*
            r2 = this;
            boolean r3 = r4.isShown()
            r0 = 1
            r1 = 0
            if (r3 != 0) goto L10
            java.util.WeakHashMap r3 = defpackage.AbstractC0205hn.a
            java.lang.CharSequence r3 = defpackage.AbstractC0050bn.b(r4)
            if (r3 == 0) goto L5a
        L10:
            boolean r3 = r2.g
            if (r3 == 0) goto L5a
            int r3 = r5.getActionMasked()
            if (r3 != 0) goto L24
            android.view.VelocityTracker r4 = r2.s
            if (r4 == 0) goto L24
            r4.recycle()
            r4 = 0
            r2.s = r4
        L24:
            android.view.VelocityTracker r4 = r2.s
            if (r4 != 0) goto L2e
            android.view.VelocityTracker r4 = android.view.VelocityTracker.obtain()
            r2.s = r4
        L2e:
            android.view.VelocityTracker r4 = r2.s
            r4.addMovement(r5)
            if (r3 == 0) goto L42
            if (r3 == r0) goto L3b
            r4 = 3
            if (r3 == r4) goto L3b
            goto L49
        L3b:
            boolean r3 = r2.j
            if (r3 == 0) goto L49
            r2.j = r1
            return r1
        L42:
            float r3 = r5.getX()
            int r3 = (int) r3
            r2.t = r3
        L49:
            boolean r3 = r2.j
            if (r3 != 0) goto L58
            kn r2 = r2.i
            if (r2 == 0) goto L58
            boolean r2 = r2.p(r5)
            if (r2 == 0) goto L58
            goto L59
        L58:
            r0 = r1
        L59:
            return r0
        L5a:
            r2.j = r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.sidesheet.SideSheetBehavior.f(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // defpackage.V5
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, int i) {
        View view2;
        View view3;
        int i2;
        View findViewById;
        int i3 = 0;
        int i4 = 1;
        Ed ed = this.b;
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        if (Rm.b(coordinatorLayout) && !Rm.b(view)) {
            view.setFitsSystemWindows(true);
        }
        if (this.p == null) {
            this.p = new WeakReference(view);
            Context context = view.getContext();
            C6.M(context, R.attr.motionEasingStandardDecelerateInterpolator, AbstractC0094df.b(0.0f, 0.0f, 0.0f, 1.0f));
            C6.L(context, R.attr.motionDurationMedium2, 300);
            C6.L(context, R.attr.motionDurationShort3, 150);
            C6.L(context, R.attr.motionDurationShort2, 100);
            Resources resources = view.getResources();
            resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_shrink);
            resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_grow);
            resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_y_distance);
            if (ed != null) {
                Rm.q(view, ed);
                float f = this.f;
                if (f == -1.0f) {
                    f = Xm.i(view);
                }
                ed.h(f);
            } else {
                ColorStateList colorStateList = this.c;
                if (colorStateList != null) {
                    Xm.q(view, colorStateList);
                }
            }
            int i5 = this.h == 5 ? 4 : 0;
            if (view.getVisibility() != i5) {
                view.setVisibility(i5);
            }
            u();
            if (Rm.c(view) == 0) {
                Rm.s(view, 1);
            }
            if (AbstractC0050bn.b(view) == null) {
                AbstractC0205hn.i(view, view.getResources().getString(R.string.side_sheet_accessibility_pane_title));
            }
        }
        int i6 = Gravity.getAbsoluteGravity(((Y5) view.getLayoutParams()).c, i) == 3 ? 1 : 0;
        AbstractC0145ff abstractC0145ff = this.a;
        if (abstractC0145ff == null || abstractC0145ff.t() != i6) {
            Vh vh = this.d;
            Y5 y5 = null;
            if (i6 == 0) {
                this.a = new Qb(this, i4);
                if (vh != null) {
                    WeakReference weakReference = this.p;
                    if (weakReference != null && (view3 = (View) weakReference.get()) != null && (view3.getLayoutParams() instanceof Y5)) {
                        y5 = (Y5) view3.getLayoutParams();
                    }
                    if (y5 == null || ((ViewGroup.MarginLayoutParams) y5).rightMargin <= 0) {
                        Uh e = vh.e();
                        e.f = new C0103e(0.0f);
                        e.g = new C0103e(0.0f);
                        Vh a = e.a();
                        if (ed != null) {
                            ed.setShapeAppearanceModel(a);
                        }
                    }
                }
            } else {
                if (i6 != 1) {
                    throw new IllegalArgumentException("Invalid sheet edge position value: " + i6 + ". Must be 0 or 1.");
                }
                this.a = new Qb(this, i3);
                if (vh != null) {
                    WeakReference weakReference2 = this.p;
                    if (weakReference2 != null && (view2 = (View) weakReference2.get()) != null && (view2.getLayoutParams() instanceof Y5)) {
                        y5 = (Y5) view2.getLayoutParams();
                    }
                    if (y5 == null || ((ViewGroup.MarginLayoutParams) y5).leftMargin <= 0) {
                        Uh e2 = vh.e();
                        e2.e = new C0103e(0.0f);
                        e2.h = new C0103e(0.0f);
                        Vh a2 = e2.a();
                        if (ed != null) {
                            ed.setShapeAppearanceModel(a2);
                        }
                    }
                }
            }
        }
        if (this.i == null) {
            this.i = new C0282kn(coordinatorLayout.getContext(), coordinatorLayout, this.v);
        }
        int r = this.a.r(view);
        coordinatorLayout.q(view, i);
        this.m = coordinatorLayout.getWidth();
        this.n = this.a.s(coordinatorLayout);
        this.l = view.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        this.o = marginLayoutParams != null ? this.a.a(marginLayoutParams) : 0;
        int i7 = this.h;
        if (i7 == 1 || i7 == 2) {
            i3 = r - this.a.r(view);
        } else if (i7 != 3) {
            if (i7 != 5) {
                throw new IllegalStateException("Unexpected value: " + this.h);
            }
            i3 = this.a.o();
        }
        view.offsetLeftAndRight(i3);
        if (this.q == null && (i2 = this.r) != -1 && (findViewById = coordinatorLayout.findViewById(i2)) != null) {
            this.q = new WeakReference(findViewById);
        }
        Iterator it = this.u.iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
        }
        return true;
    }

    @Override // defpackage.V5
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height));
        return true;
    }

    @Override // defpackage.V5
    public final void m(View view, Parcelable parcelable) {
        int i = ((C0251ji) parcelable).c;
        if (i == 1 || i == 2) {
            i = 5;
        }
        this.h = i;
    }

    @Override // defpackage.V5
    public final Parcelable n(View view) {
        return new C0251ji(View.BaseSavedState.EMPTY_STATE, this);
    }

    @Override // defpackage.V5
    public final boolean q(View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.h == 1 && actionMasked == 0) {
            return true;
        }
        if (s()) {
            this.i.j(motionEvent);
        }
        if (actionMasked == 0 && (velocityTracker = this.s) != null) {
            velocityTracker.recycle();
            this.s = null;
        }
        if (this.s == null) {
            this.s = VelocityTracker.obtain();
        }
        this.s.addMovement(motionEvent);
        if (s() && actionMasked == 2 && !this.j && s()) {
            float abs = Math.abs(this.t - motionEvent.getX());
            C0282kn c0282kn = this.i;
            if (abs > c0282kn.b) {
                c0282kn.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.j;
    }

    public final void r(int i) {
        View view;
        if (this.h == i) {
            return;
        }
        this.h = i;
        WeakReference weakReference = this.p;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i2 = this.h == 5 ? 4 : 0;
        if (view.getVisibility() != i2) {
            view.setVisibility(i2);
        }
        Iterator it = this.u.iterator();
        if (it.hasNext()) {
            throw AbstractC0407pi.f(it);
        }
        u();
    }

    public final boolean s() {
        return this.i != null && (this.g || this.h == 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002d, code lost:
    
        if (r1.o(r0, r3.getTop()) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004d, code lost:
    
        r(2);
        r2.e.a(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004b, code lost:
    
        if (r3 != false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void t(android.view.View r3, int r4, boolean r5) {
        /*
            r2 = this;
            r0 = 3
            if (r4 == r0) goto L19
            r0 = 5
            if (r4 != r0) goto Ld
            ff r0 = r2.a
            int r0 = r0.o()
            goto L1f
        Ld:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Invalid state to get outer edge offset: "
            java.lang.String r3 = defpackage.AbstractC0407pi.h(r3, r4)
            r2.<init>(r3)
            throw r2
        L19:
            ff r0 = r2.a
            int r0 = r0.n()
        L1f:
            kn r1 = r2.i
            if (r1 == 0) goto L57
            if (r5 == 0) goto L30
            int r3 = r3.getTop()
            boolean r3 = r1.o(r0, r3)
            if (r3 == 0) goto L57
            goto L4d
        L30:
            int r5 = r3.getTop()
            r1.r = r3
            r3 = -1
            r1.c = r3
            r3 = 0
            boolean r3 = r1.h(r0, r5, r3, r3)
            if (r3 != 0) goto L4b
            int r5 = r1.a
            if (r5 != 0) goto L4b
            android.view.View r5 = r1.r
            if (r5 == 0) goto L4b
            r5 = 0
            r1.r = r5
        L4b:
            if (r3 == 0) goto L57
        L4d:
            r3 = 2
            r2.r(r3)
            C3 r2 = r2.e
            r2.a(r4)
            goto L5a
        L57:
            r2.r(r4)
        L5a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.sidesheet.SideSheetBehavior.t(android.view.View, int, boolean):void");
    }

    public final void u() {
        View view;
        WeakReference weakReference = this.p;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        AbstractC0205hn.f(view, 262144);
        AbstractC0205hn.d(view, 0);
        AbstractC0205hn.f(view, 1048576);
        AbstractC0205hn.d(view, 0);
        final int i = 5;
        if (this.h != 5) {
            AbstractC0205hn.g(view, D.j, new X() { // from class: ii
                @Override // defpackage.X
                public final boolean h(View view2) {
                    int i2 = 1;
                    SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                    sideSheetBehavior.getClass();
                    int i3 = i;
                    if (i3 == 1 || i3 == 2) {
                        StringBuilder sb = new StringBuilder("STATE_");
                        sb.append(i3 == 1 ? "DRAGGING" : "SETTLING");
                        sb.append(" should not be set externally.");
                        throw new IllegalArgumentException(sb.toString());
                    }
                    WeakReference weakReference2 = sideSheetBehavior.p;
                    if (weakReference2 == null || weakReference2.get() == null) {
                        sideSheetBehavior.r(i3);
                    } else {
                        View view3 = (View) sideSheetBehavior.p.get();
                        RunnableC0096dh runnableC0096dh = new RunnableC0096dh(i3, i2, sideSheetBehavior);
                        ViewParent parent = view3.getParent();
                        if (parent != null && parent.isLayoutRequested()) {
                            WeakHashMap weakHashMap = AbstractC0205hn.a;
                            if (Um.b(view3)) {
                                view3.post(runnableC0096dh);
                            }
                        }
                        runnableC0096dh.run();
                    }
                    return true;
                }
            });
        }
        final int i2 = 3;
        if (this.h != 3) {
            AbstractC0205hn.g(view, D.h, new X() { // from class: ii
                @Override // defpackage.X
                public final boolean h(View view2) {
                    int i22 = 1;
                    SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                    sideSheetBehavior.getClass();
                    int i3 = i2;
                    if (i3 == 1 || i3 == 2) {
                        StringBuilder sb = new StringBuilder("STATE_");
                        sb.append(i3 == 1 ? "DRAGGING" : "SETTLING");
                        sb.append(" should not be set externally.");
                        throw new IllegalArgumentException(sb.toString());
                    }
                    WeakReference weakReference2 = sideSheetBehavior.p;
                    if (weakReference2 == null || weakReference2.get() == null) {
                        sideSheetBehavior.r(i3);
                    } else {
                        View view3 = (View) sideSheetBehavior.p.get();
                        RunnableC0096dh runnableC0096dh = new RunnableC0096dh(i3, i22, sideSheetBehavior);
                        ViewParent parent = view3.getParent();
                        if (parent != null && parent.isLayoutRequested()) {
                            WeakHashMap weakHashMap = AbstractC0205hn.a;
                            if (Um.b(view3)) {
                                view3.post(runnableC0096dh);
                            }
                        }
                        runnableC0096dh.run();
                    }
                    return true;
                }
            });
        }
    }

    public SideSheetBehavior(Context context, AttributeSet attributeSet) {
        this.e = new C3(this);
        this.g = true;
        this.h = 5;
        this.k = 0.1f;
        this.r = -1;
        this.u = new LinkedHashSet();
        this.v = new A3(this, 1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Yf.w);
        if (obtainStyledAttributes.hasValue(3)) {
            this.c = AbstractC0348nb.B(context, obtainStyledAttributes, 3);
        }
        if (obtainStyledAttributes.hasValue(6)) {
            this.d = Vh.b(context, attributeSet, 0, R.style.Widget_Material3_SideSheet).a();
        }
        if (obtainStyledAttributes.hasValue(5)) {
            int resourceId = obtainStyledAttributes.getResourceId(5, -1);
            this.r = resourceId;
            WeakReference weakReference = this.q;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.q = null;
            WeakReference weakReference2 = this.p;
            if (weakReference2 != null) {
                View view = (View) weakReference2.get();
                if (resourceId != -1) {
                    WeakHashMap weakHashMap = AbstractC0205hn.a;
                    if (Um.c(view)) {
                        view.requestLayout();
                    }
                }
            }
        }
        Vh vh = this.d;
        if (vh != null) {
            Ed ed = new Ed(vh);
            this.b = ed;
            ed.g(context);
            ColorStateList colorStateList = this.c;
            if (colorStateList != null) {
                this.b.i(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.b.setTint(typedValue.data);
            }
        }
        this.f = obtainStyledAttributes.getDimension(2, -1.0f);
        this.g = obtainStyledAttributes.getBoolean(4, true);
        obtainStyledAttributes.recycle();
        ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
