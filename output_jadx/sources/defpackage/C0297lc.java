package defpackage;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: lc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0297lc {
    public int a = -1;
    public RecyclerView b;
    public AbstractC0353ng c;
    public boolean d;
    public boolean e;
    public View f;
    public final C0630yg g;
    public boolean h;
    public final LinearInterpolator i;
    public final DecelerateInterpolator j;
    public PointF k;
    public final DisplayMetrics l;
    public boolean m;
    public float n;
    public int o;
    public int p;

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, yg] */
    public C0297lc(Context context) {
        ?? obj = new Object();
        obj.d = -1;
        obj.f = false;
        obj.g = 0;
        obj.a = 0;
        obj.b = 0;
        obj.c = Integer.MIN_VALUE;
        obj.e = null;
        this.g = obj;
        this.i = new LinearInterpolator();
        this.j = new DecelerateInterpolator();
        this.m = false;
        this.o = 0;
        this.p = 0;
        this.l = context.getResources().getDisplayMetrics();
    }

    public static int a(int i, int i2, int i3, int i4, int i5) {
        if (i5 == -1) {
            return i3 - i;
        }
        if (i5 != 0) {
            if (i5 == 1) {
                return i4 - i2;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i6 = i3 - i;
        if (i6 > 0) {
            return i6;
        }
        int i7 = i4 - i2;
        if (i7 < 0) {
            return i7;
        }
        return 0;
    }

    public int b(View view, int i) {
        AbstractC0353ng abstractC0353ng = this.c;
        if (abstractC0353ng == null || !abstractC0353ng.d()) {
            return 0;
        }
        C0379og c0379og = (C0379og) view.getLayoutParams();
        return a((view.getLeft() - ((C0379og) view.getLayoutParams()).b.left) - ((ViewGroup.MarginLayoutParams) c0379og).leftMargin, view.getRight() + ((C0379og) view.getLayoutParams()).b.right + ((ViewGroup.MarginLayoutParams) c0379og).rightMargin, abstractC0353ng.C(), abstractC0353ng.n - abstractC0353ng.D(), i);
    }

    public int c(View view, int i) {
        AbstractC0353ng abstractC0353ng = this.c;
        if (abstractC0353ng == null || !abstractC0353ng.e()) {
            return 0;
        }
        C0379og c0379og = (C0379og) view.getLayoutParams();
        return a((view.getTop() - ((C0379og) view.getLayoutParams()).b.top) - ((ViewGroup.MarginLayoutParams) c0379og).topMargin, view.getBottom() + ((C0379og) view.getLayoutParams()).b.bottom + ((ViewGroup.MarginLayoutParams) c0379og).bottomMargin, abstractC0353ng.E(), abstractC0353ng.o - abstractC0353ng.B(), i);
    }

    public float d(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public int e(int i) {
        float abs = Math.abs(i);
        if (!this.m) {
            this.n = d(this.l);
            this.m = true;
        }
        return (int) Math.ceil(abs * this.n);
    }

    public PointF f(int i) {
        Object obj = this.c;
        if (obj instanceof InterfaceC0655zg) {
            return ((InterfaceC0655zg) obj).a(i);
        }
        Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + InterfaceC0655zg.class.getCanonicalName());
        return null;
    }

    public final void g(int i, int i2) {
        PointF f;
        RecyclerView recyclerView = this.b;
        if (this.a == -1 || recyclerView == null) {
            i();
        }
        if (this.d && this.f == null && this.c != null && (f = f(this.a)) != null) {
            float f2 = f.x;
            if (f2 != 0.0f || f.y != 0.0f) {
                recyclerView.h0((int) Math.signum(f2), (int) Math.signum(f.y), null);
            }
        }
        this.d = false;
        View view = this.f;
        C0630yg c0630yg = this.g;
        if (view != null) {
            this.b.getClass();
            Eg N = RecyclerView.N(view);
            if ((N != null ? N.d() : -1) == this.a) {
                View view2 = this.f;
                Ag ag = recyclerView.h0;
                h(view2, c0630yg);
                c0630yg.a(recyclerView);
                i();
            } else {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.f = null;
            }
        }
        if (this.e) {
            Ag ag2 = recyclerView.h0;
            if (this.b.n.v() == 0) {
                i();
            } else {
                int i3 = this.o;
                int i4 = i3 - i;
                if (i3 * i4 <= 0) {
                    i4 = 0;
                }
                this.o = i4;
                int i5 = this.p;
                int i6 = i5 - i2;
                if (i5 * i6 <= 0) {
                    i6 = 0;
                }
                this.p = i6;
                if (i4 == 0 && i6 == 0) {
                    PointF f3 = f(this.a);
                    if (f3 != null) {
                        if (f3.x != 0.0f || f3.y != 0.0f) {
                            float f4 = f3.y;
                            float sqrt = (float) Math.sqrt((f4 * f4) + (r10 * r10));
                            float f5 = f3.x / sqrt;
                            f3.x = f5;
                            float f6 = f3.y / sqrt;
                            f3.y = f6;
                            this.k = f3;
                            this.o = (int) (f5 * 10000.0f);
                            this.p = (int) (f6 * 10000.0f);
                            int e = e(10000);
                            LinearInterpolator linearInterpolator = this.i;
                            c0630yg.a = (int) (this.o * 1.2f);
                            c0630yg.b = (int) (this.p * 1.2f);
                            c0630yg.c = (int) (e * 1.2f);
                            c0630yg.e = linearInterpolator;
                            c0630yg.f = true;
                        }
                    }
                    c0630yg.d = this.a;
                    i();
                }
            }
            boolean z = c0630yg.d >= 0;
            c0630yg.a(recyclerView);
            if (z && this.e) {
                this.d = true;
                recyclerView.e0.b();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void h(android.view.View r7, defpackage.C0630yg r8) {
        /*
            r6 = this;
            android.graphics.PointF r0 = r6.k
            r1 = 1
            r2 = 0
            r3 = -1
            r4 = 0
            if (r0 == 0) goto L15
            float r0 = r0.x
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 != 0) goto Lf
            goto L15
        Lf:
            if (r0 <= 0) goto L13
            r0 = r1
            goto L16
        L13:
            r0 = r3
            goto L16
        L15:
            r0 = r2
        L16:
            int r0 = r6.b(r7, r0)
            android.graphics.PointF r5 = r6.k
            if (r5 == 0) goto L2a
            float r5 = r5.y
            int r4 = (r5 > r4 ? 1 : (r5 == r4 ? 0 : -1))
            if (r4 != 0) goto L25
            goto L2a
        L25:
            if (r4 <= 0) goto L29
            r2 = r1
            goto L2a
        L29:
            r2 = r3
        L2a:
            int r7 = r6.c(r7, r2)
            int r2 = r0 * r0
            int r3 = r7 * r7
            int r3 = r3 + r2
            double r2 = (double) r3
            double r2 = java.lang.Math.sqrt(r2)
            int r2 = (int) r2
            int r2 = r6.e(r2)
            double r2 = (double) r2
            r4 = 4599717252057688074(0x3fd57a786c22680a, double:0.3356)
            double r2 = r2 / r4
            double r2 = java.lang.Math.ceil(r2)
            int r2 = (int) r2
            if (r2 <= 0) goto L59
            int r0 = -r0
            int r7 = -r7
            android.view.animation.DecelerateInterpolator r6 = r6.j
            r8.a = r0
            r8.b = r7
            r8.c = r2
            r8.e = r6
            r8.f = r1
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0297lc.h(android.view.View, yg):void");
    }

    public final void i() {
        if (this.e) {
            this.e = false;
            this.p = 0;
            this.o = 0;
            this.k = null;
            this.b.h0.a = -1;
            this.f = null;
            this.a = -1;
            this.d = false;
            AbstractC0353ng abstractC0353ng = this.c;
            if (abstractC0353ng.e == this) {
                abstractC0353ng.e = null;
            }
            this.c = null;
            this.b = null;
        }
    }
}
