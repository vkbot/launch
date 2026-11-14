package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;

/* renamed from: u5, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0519u5 {
    public final ConstraintLayout a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public final /* synthetic */ ConstraintLayout h;

    public C0519u5(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2) {
        this.h = constraintLayout;
        this.a = constraintLayout2;
    }

    public static boolean a(int i, int i2, int i3) {
        if (i == i2) {
            return true;
        }
        int mode = View.MeasureSpec.getMode(i);
        View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode2 == 1073741824) {
            return (mode == Integer.MIN_VALUE || mode == 0) && i3 == size;
        }
        return false;
    }

    public final void b(D5 d5, C0392p3 c0392p3) {
        int makeMeasureSpec;
        int makeMeasureSpec2;
        int max;
        int i;
        int i2;
        boolean z;
        int baseline;
        int i3;
        if (d5 == null) {
            return;
        }
        if (d5.g0 == 8) {
            c0392p3.e = 0;
            c0392p3.f = 0;
            c0392p3.g = 0;
            return;
        }
        if (d5.T == null) {
            return;
        }
        int i4 = c0392p3.a;
        int i5 = c0392p3.b;
        int i6 = c0392p3.c;
        int i7 = c0392p3.d;
        int i8 = this.b + this.c;
        int i9 = this.d;
        View view = d5.f0;
        int p = AbstractC0407pi.p(i4);
        C0394p5 c0394p5 = d5.K;
        C0394p5 c0394p52 = d5.I;
        if (p == 0) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
        } else if (p == 1) {
            makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, i9, -2);
        } else if (p == 2) {
            makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, i9, -2);
            boolean z2 = d5.r == 1;
            int i10 = c0392p3.j;
            if (i10 == 1 || i10 == 2) {
                boolean z3 = view.getMeasuredHeight() == d5.k();
                if (c0392p3.j == 2 || !z2 || ((z2 && z3) || d5.A())) {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(d5.q(), 1073741824);
                }
            }
        } else if (p != 3) {
            makeMeasureSpec = 0;
        } else {
            int i11 = this.f;
            int i12 = c0394p52 != null ? c0394p52.g : 0;
            if (c0394p5 != null) {
                i12 += c0394p5.g;
            }
            makeMeasureSpec = ViewGroup.getChildMeasureSpec(i11, i9 + i12, -1);
        }
        int p2 = AbstractC0407pi.p(i5);
        if (p2 == 0) {
            makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
        } else if (p2 == 1) {
            makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i8, -2);
        } else if (p2 == 2) {
            makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i8, -2);
            boolean z4 = d5.s == 1;
            int i13 = c0392p3.j;
            if (i13 == 1 || i13 == 2) {
                boolean z5 = view.getMeasuredWidth() == d5.q();
                if (c0392p3.j == 2 || !z4 || ((z4 && z5) || d5.B())) {
                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(d5.k(), 1073741824);
                }
            }
        } else if (p2 != 3) {
            makeMeasureSpec2 = 0;
        } else {
            int i14 = this.g;
            int i15 = c0394p52 != null ? d5.J.g : 0;
            if (c0394p5 != null) {
                i15 += d5.L.g;
            }
            makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(i14, i8 + i15, -1);
        }
        E5 e5 = (E5) d5.T;
        ConstraintLayout constraintLayout = this.h;
        if (e5 != null && AbstractC0348nb.z(constraintLayout.i, 256) && view.getMeasuredWidth() == d5.q() && view.getMeasuredWidth() < e5.q() && view.getMeasuredHeight() == d5.k() && view.getMeasuredHeight() < e5.k() && view.getBaseline() == d5.a0 && !d5.z() && a(d5.G, makeMeasureSpec, d5.q()) && a(d5.H, makeMeasureSpec2, d5.k())) {
            c0392p3.e = d5.q();
            c0392p3.f = d5.k();
            c0392p3.g = d5.a0;
            return;
        }
        boolean z6 = i4 == 3;
        boolean z7 = i5 == 3;
        boolean z8 = i5 == 4 || i5 == 1;
        boolean z9 = i4 == 4 || i4 == 1;
        boolean z10 = z6 && d5.W > 0.0f;
        boolean z11 = z7 && d5.W > 0.0f;
        if (view == null) {
            return;
        }
        C0494t5 c0494t5 = (C0494t5) view.getLayoutParams();
        int i16 = c0392p3.j;
        if (i16 != 1 && i16 != 2 && z6 && d5.r == 0 && z7 && d5.s == 0) {
            i3 = -1;
            baseline = 0;
            z = false;
            i2 = 0;
            max = 0;
        } else {
            if ((view instanceof Hn) && (d5 instanceof C0036b9)) {
                ((Hn) view).j((C0036b9) d5, makeMeasureSpec, makeMeasureSpec2);
            } else {
                view.measure(makeMeasureSpec, makeMeasureSpec2);
            }
            d5.G = makeMeasureSpec;
            d5.H = makeMeasureSpec2;
            d5.g = false;
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            int baseline2 = view.getBaseline();
            int i17 = d5.u;
            max = i17 > 0 ? Math.max(i17, measuredWidth) : measuredWidth;
            int i18 = d5.v;
            if (i18 > 0) {
                max = Math.min(i18, max);
            }
            int i19 = d5.x;
            if (i19 > 0) {
                i2 = Math.max(i19, measuredHeight);
                i = makeMeasureSpec;
            } else {
                i = makeMeasureSpec;
                i2 = measuredHeight;
            }
            int i20 = d5.y;
            if (i20 > 0) {
                i2 = Math.min(i20, i2);
            }
            if (!AbstractC0348nb.z(constraintLayout.i, 1)) {
                if (z10 && z8) {
                    max = (int) ((i2 * d5.W) + 0.5f);
                } else if (z11 && z9) {
                    i2 = (int) ((max / d5.W) + 0.5f);
                }
            }
            if (measuredWidth == max && measuredHeight == i2) {
                baseline = baseline2;
                i3 = -1;
                z = false;
            } else {
                int makeMeasureSpec3 = measuredWidth != max ? View.MeasureSpec.makeMeasureSpec(max, 1073741824) : i;
                if (measuredHeight != i2) {
                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
                }
                view.measure(makeMeasureSpec3, makeMeasureSpec2);
                d5.G = makeMeasureSpec3;
                d5.H = makeMeasureSpec2;
                z = false;
                d5.g = false;
                int measuredWidth2 = view.getMeasuredWidth();
                int measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
                max = measuredWidth2;
                i2 = measuredHeight2;
                i3 = -1;
            }
        }
        boolean z12 = baseline != i3 ? true : z;
        if (max != c0392p3.c || i2 != c0392p3.d) {
            z = true;
        }
        c0392p3.i = z;
        boolean z13 = c0494t5.c0 ? true : z12;
        if (z13 && baseline != -1 && d5.a0 != baseline) {
            c0392p3.i = true;
        }
        c0392p3.e = max;
        c0392p3.f = i2;
        c0392p3.h = z13;
        c0392p3.g = baseline;
    }
}
