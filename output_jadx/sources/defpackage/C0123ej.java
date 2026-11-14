package defpackage;

import android.view.View;
import android.view.ViewParent;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.util.WeakHashMap;

/* renamed from: ej, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0123ej extends AbstractC0171gf {
    public int a;
    public int b = -1;
    public final /* synthetic */ SwipeDismissBehavior c;

    public C0123ej(SwipeDismissBehavior swipeDismissBehavior) {
        this.c = swipeDismissBehavior;
    }

    @Override // defpackage.AbstractC0171gf
    public final int c(View view, int i) {
        int width;
        int width2;
        int width3;
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        boolean z = Sm.d(view) == 1;
        int i2 = this.c.d;
        if (i2 == 0) {
            if (z) {
                width = this.a - view.getWidth();
                width2 = this.a;
            } else {
                width = this.a;
                width3 = view.getWidth();
                width2 = width3 + width;
            }
        } else if (i2 != 1) {
            width = this.a - view.getWidth();
            width2 = this.a + view.getWidth();
        } else if (z) {
            width = this.a;
            width3 = view.getWidth();
            width2 = width3 + width;
        } else {
            width = this.a - view.getWidth();
            width2 = this.a;
        }
        return Math.min(Math.max(width, i), width2);
    }

    @Override // defpackage.AbstractC0171gf
    public final int d(View view, int i) {
        return view.getTop();
    }

    @Override // defpackage.AbstractC0171gf
    public final int g(View view) {
        return view.getWidth();
    }

    @Override // defpackage.AbstractC0171gf
    public final void o(View view, int i) {
        this.b = i;
        this.a = view.getLeft();
        ViewParent parent = view.getParent();
        if (parent != null) {
            SwipeDismissBehavior swipeDismissBehavior = this.c;
            swipeDismissBehavior.c = true;
            parent.requestDisallowInterceptTouchEvent(true);
            swipeDismissBehavior.c = false;
        }
    }

    @Override // defpackage.AbstractC0171gf
    public final void p(int i) {
        this.c.getClass();
    }

    @Override // defpackage.AbstractC0171gf
    public final void q(View view, int i, int i2) {
        float width = view.getWidth();
        SwipeDismissBehavior swipeDismissBehavior = this.c;
        float f = width * swipeDismissBehavior.e;
        float width2 = view.getWidth() * swipeDismissBehavior.f;
        float abs = Math.abs(i - this.a);
        if (abs <= f) {
            view.setAlpha(1.0f);
        } else if (abs >= width2) {
            view.setAlpha(0.0f);
        } else {
            view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((abs - f) / (width2 - f))), 1.0f));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0053, code lost:
    
        if (java.lang.Math.abs(r1) >= java.lang.Math.round(r5 * 0.5f)) goto L27;
     */
    @Override // defpackage.AbstractC0171gf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void r(android.view.View r9, float r10, float r11) {
        /*
            r8 = this;
            r11 = -1
            r8.b = r11
            int r11 = r9.getWidth()
            r0 = 0
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            r2 = 1
            com.google.android.material.behavior.SwipeDismissBehavior r3 = r8.c
            r4 = 0
            if (r1 == 0) goto L39
            java.util.WeakHashMap r5 = defpackage.AbstractC0205hn.a
            int r5 = defpackage.Sm.d(r9)
            if (r5 != r2) goto L1a
            r5 = r2
            goto L1b
        L1a:
            r5 = r4
        L1b:
            int r6 = r3.d
            r7 = 2
            if (r6 != r7) goto L21
            goto L55
        L21:
            if (r6 != 0) goto L2d
            if (r5 == 0) goto L2a
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 >= 0) goto L69
            goto L55
        L2a:
            if (r1 <= 0) goto L69
            goto L55
        L2d:
            if (r6 != r2) goto L69
            if (r5 == 0) goto L34
            if (r1 <= 0) goto L69
            goto L55
        L34:
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 >= 0) goto L69
            goto L55
        L39:
            int r1 = r9.getLeft()
            int r5 = r8.a
            int r1 = r1 - r5
            int r5 = r9.getWidth()
            float r5 = (float) r5
            r3.getClass()
            r6 = 1056964608(0x3f000000, float:0.5)
            float r5 = r5 * r6
            int r5 = java.lang.Math.round(r5)
            int r1 = java.lang.Math.abs(r1)
            if (r1 < r5) goto L69
        L55:
            int r10 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r10 < 0) goto L64
            int r10 = r9.getLeft()
            int r0 = r8.a
            if (r10 >= r0) goto L62
            goto L64
        L62:
            int r0 = r0 + r11
            goto L6c
        L64:
            int r8 = r8.a
            int r0 = r8 - r11
            goto L6c
        L69:
            int r0 = r8.a
            r2 = r4
        L6c:
            kn r8 = r3.a
            int r10 = r9.getTop()
            boolean r8 = r8.o(r0, r10)
            if (r8 == 0) goto L82
            j0 r8 = new j0
            r8.<init>(r3, r9, r2)
            java.util.WeakHashMap r10 = defpackage.AbstractC0205hn.a
            defpackage.Rm.m(r9, r8)
        L82:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0123ej.r(android.view.View, float, float):void");
    }

    @Override // defpackage.AbstractC0171gf
    public final boolean w(View view, int i) {
        int i2 = this.b;
        return (i2 == -1 || i2 == i) && this.c.r(view);
    }
}
