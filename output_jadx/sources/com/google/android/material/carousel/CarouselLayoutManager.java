package com.google.android.material.carousel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.carousel.CarouselLayoutManager;
import defpackage.AbstractC0353ng;
import defpackage.AbstractC0407pi;
import defpackage.Ag;
import defpackage.C0379og;
import defpackage.C0530ug;
import defpackage.InterfaceC0655zg;
import defpackage.S3;
import defpackage.T3;
import defpackage.T7;
import defpackage.U3;
import defpackage.Yf;

/* loaded from: classes.dex */
public class CarouselLayoutManager extends AbstractC0353ng implements InterfaceC0655zg {
    public U3 p;
    public final View.OnLayoutChangeListener q;

    public CarouselLayoutManager() {
        new T7(25);
        new T3();
        this.q = new View.OnLayoutChangeListener() { // from class: R3
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
                carouselLayoutManager.getClass();
                if (i == i5 && i2 == i6 && i3 == i7 && i4 == i8) {
                    return;
                }
                view.post(new O(3, carouselLayoutManager));
            }
        };
        l0();
        C0(0);
    }

    public final boolean A0() {
        return this.p.a == 0;
    }

    public final boolean B0() {
        return A0() && A() == 1;
    }

    public final void C0(int i) {
        U3 u3;
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(AbstractC0407pi.h("invalid orientation:", i));
        }
        c(null);
        U3 u32 = this.p;
        if (u32 == null || i != u32.a) {
            if (i == 0) {
                u3 = new U3(this, 1);
            } else {
                if (i != 1) {
                    throw new IllegalArgumentException("invalid orientation");
                }
                u3 = new U3(this, 0);
            }
            this.p = u3;
            l0();
        }
    }

    @Override // defpackage.AbstractC0353ng
    public final void P(RecyclerView recyclerView) {
        l0();
        recyclerView.addOnLayoutChangeListener(this.q);
    }

    @Override // defpackage.AbstractC0353ng
    public final void Q(RecyclerView recyclerView) {
        recyclerView.removeOnLayoutChangeListener(this.q);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x003a, code lost:
    
        if (r7 == 1) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0043, code lost:
    
        if (B0() != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0046, code lost:
    
        if (r7 == 1) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x004f, code lost:
    
        if (B0() != false) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0057  */
    @Override // defpackage.AbstractC0353ng
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View R(android.view.View r5, int r6, defpackage.C0530ug r7, defpackage.Ag r8) {
        /*
            r4 = this;
            int r7 = r4.v()
            r8 = 0
            if (r7 != 0) goto L8
            return r8
        L8:
            U3 r7 = r4.p
            int r7 = r7.a
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = -1
            r2 = 1
            if (r6 == r2) goto L53
            r3 = 2
            if (r6 == r3) goto L51
            r3 = 17
            if (r6 == r3) goto L49
            r3 = 33
            if (r6 == r3) goto L46
            r3 = 66
            if (r6 == r3) goto L3d
            r3 = 130(0x82, float:1.82E-43)
            if (r6 == r3) goto L3a
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r3 = "Unknown focus request:"
            r7.<init>(r3)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            java.lang.String r7 = "CarouselLayoutManager"
            android.util.Log.d(r7, r6)
        L38:
            r6 = r0
            goto L54
        L3a:
            if (r7 != r2) goto L38
            goto L51
        L3d:
            if (r7 != 0) goto L38
            boolean r6 = r4.B0()
            if (r6 == 0) goto L51
            goto L53
        L46:
            if (r7 != r2) goto L38
            goto L53
        L49:
            if (r7 != 0) goto L38
            boolean r6 = r4.B0()
            if (r6 == 0) goto L53
        L51:
            r6 = r2
            goto L54
        L53:
            r6 = r1
        L54:
            if (r6 != r0) goto L57
            return r8
        L57:
            r7 = 0
            if (r6 != r1) goto L8b
            int r5 = defpackage.AbstractC0353ng.F(r5)
            if (r5 != 0) goto L61
            return r8
        L61:
            android.view.View r5 = r4.u(r7)
            int r5 = defpackage.AbstractC0353ng.F(r5)
            int r5 = r5 - r2
            if (r5 < 0) goto L7a
            int r6 = r4.z()
            if (r5 < r6) goto L73
            goto L7a
        L73:
            U3 r4 = r4.p
            r4.a()
            r4 = 0
            throw r4
        L7a:
            boolean r5 = r4.B0()
            if (r5 == 0) goto L86
            int r5 = r4.v()
            int r7 = r5 + (-1)
        L86:
            android.view.View r4 = r4.u(r7)
            goto Lc6
        L8b:
            int r5 = defpackage.AbstractC0353ng.F(r5)
            int r6 = r4.z()
            int r6 = r6 - r2
            if (r5 != r6) goto L97
            return r8
        L97:
            int r5 = r4.v()
            int r5 = r5 - r2
            android.view.View r5 = r4.u(r5)
            int r5 = defpackage.AbstractC0353ng.F(r5)
            int r5 = r5 + r2
            if (r5 < 0) goto Lb5
            int r6 = r4.z()
            if (r5 < r6) goto Lae
            goto Lb5
        Lae:
            U3 r4 = r4.p
            r4.a()
            r4 = 0
            throw r4
        Lb5:
            boolean r5 = r4.B0()
            if (r5 == 0) goto Lbc
            goto Lc2
        Lbc:
            int r5 = r4.v()
            int r7 = r5 + (-1)
        Lc2:
            android.view.View r4 = r4.u(r7)
        Lc6:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.carousel.CarouselLayoutManager.R(android.view.View, int, ug, Ag):android.view.View");
    }

    @Override // defpackage.AbstractC0353ng
    public final void S(AccessibilityEvent accessibilityEvent) {
        super.S(accessibilityEvent);
        if (v() > 0) {
            accessibilityEvent.setFromIndex(AbstractC0353ng.F(u(0)));
            accessibilityEvent.setToIndex(AbstractC0353ng.F(u(v() - 1)));
        }
    }

    @Override // defpackage.AbstractC0353ng
    public final void W(int i, int i2) {
        z();
    }

    @Override // defpackage.AbstractC0353ng
    public final void Z(int i, int i2) {
        z();
    }

    @Override // defpackage.InterfaceC0655zg
    public final PointF a(int i) {
        return null;
    }

    @Override // defpackage.AbstractC0353ng
    public final void b0(C0530ug c0530ug, Ag ag) {
        if (ag.b() > 0) {
            if ((A0() ? this.n : this.o) > 0.0f) {
                B0();
                View view = c0530ug.k(0, Long.MAX_VALUE).a;
                throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
            }
        }
        g0(c0530ug);
    }

    @Override // defpackage.AbstractC0353ng
    public final void c0(Ag ag) {
        if (v() == 0) {
            return;
        }
        AbstractC0353ng.F(u(0));
    }

    @Override // defpackage.AbstractC0353ng
    public final boolean d() {
        return A0();
    }

    @Override // defpackage.AbstractC0353ng
    public final boolean e() {
        return !A0();
    }

    @Override // defpackage.AbstractC0353ng
    public final int j(Ag ag) {
        v();
        return 0;
    }

    @Override // defpackage.AbstractC0353ng
    public final int k(Ag ag) {
        return 0;
    }

    @Override // defpackage.AbstractC0353ng
    public final boolean k0(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
        return false;
    }

    @Override // defpackage.AbstractC0353ng
    public final int l(Ag ag) {
        return 0;
    }

    @Override // defpackage.AbstractC0353ng
    public final int m(Ag ag) {
        v();
        return 0;
    }

    @Override // defpackage.AbstractC0353ng
    public final int m0(int i, C0530ug c0530ug, Ag ag) {
        if (!A0() || v() == 0 || i == 0) {
            return 0;
        }
        View view = c0530ug.k(0, Long.MAX_VALUE).a;
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // defpackage.AbstractC0353ng
    public final int n(Ag ag) {
        return 0;
    }

    @Override // defpackage.AbstractC0353ng
    public final void n0(int i) {
    }

    @Override // defpackage.AbstractC0353ng
    public final int o(Ag ag) {
        return 0;
    }

    @Override // defpackage.AbstractC0353ng
    public final int o0(int i, C0530ug c0530ug, Ag ag) {
        if (!e() || v() == 0 || i == 0) {
            return 0;
        }
        View view = c0530ug.k(0, Long.MAX_VALUE).a;
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // defpackage.AbstractC0353ng
    public final C0379og r() {
        return new C0379og(-2, -2);
    }

    @Override // defpackage.AbstractC0353ng
    public final void x0(RecyclerView recyclerView, int i) {
        S3 s3 = new S3(this, recyclerView.getContext(), 0);
        s3.a = i;
        y0(s3);
    }

    @Override // defpackage.AbstractC0353ng
    public final void y(View view, Rect rect) {
        super.y(view, rect);
        rect.centerY();
        if (A0()) {
            rect.centerX();
        }
        throw null;
    }

    @SuppressLint({"UnknownNullness"})
    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        new T3();
        this.q = new View.OnLayoutChangeListener() { // from class: R3
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i3, int i22, int i32, int i4, int i5, int i6, int i7, int i8) {
                CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
                carouselLayoutManager.getClass();
                if (i3 == i5 && i22 == i6 && i32 == i7 && i4 == i8) {
                    return;
                }
                view.post(new O(3, carouselLayoutManager));
            }
        };
        new T7(25);
        l0();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Yf.b);
            obtainStyledAttributes.getInt(0, 0);
            l0();
            C0(obtainStyledAttributes.getInt(0, 0));
            obtainStyledAttributes.recycle();
        }
    }
}
