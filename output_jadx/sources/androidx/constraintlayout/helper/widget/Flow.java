package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import defpackage.C0036b9;
import defpackage.D5;
import defpackage.Ga;
import defpackage.Hn;
import defpackage.Tf;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class Flow extends Hn {
    public final C0036b9 j;

    /* JADX WARN: Type inference failed for: r1v0, types: [p3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v1, types: [b9, Ga] */
    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new int[32];
        this.g = new HashMap();
        this.c = context;
        super.g(attributeSet);
        ?? ga = new Ga();
        ga.s0 = 0;
        ga.t0 = 0;
        ga.u0 = 0;
        ga.v0 = 0;
        ga.w0 = 0;
        ga.x0 = 0;
        ga.y0 = false;
        ga.z0 = 0;
        ga.A0 = 0;
        ga.B0 = new Object();
        ga.C0 = null;
        ga.D0 = -1;
        ga.E0 = -1;
        ga.F0 = -1;
        ga.G0 = -1;
        ga.H0 = -1;
        ga.I0 = -1;
        ga.J0 = 0.5f;
        ga.K0 = 0.5f;
        ga.L0 = 0.5f;
        ga.M0 = 0.5f;
        ga.N0 = 0.5f;
        ga.O0 = 0.5f;
        ga.P0 = 0;
        ga.Q0 = 0;
        ga.R0 = 2;
        ga.S0 = 2;
        ga.T0 = 0;
        ga.U0 = -1;
        ga.V0 = 0;
        ga.W0 = new ArrayList();
        ga.X0 = null;
        ga.Y0 = null;
        ga.Z0 = null;
        ga.b1 = 0;
        this.j = ga;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, Tf.b);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    this.j.V0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 1) {
                    C0036b9 c0036b9 = this.j;
                    int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    c0036b9.s0 = dimensionPixelSize;
                    c0036b9.t0 = dimensionPixelSize;
                    c0036b9.u0 = dimensionPixelSize;
                    c0036b9.v0 = dimensionPixelSize;
                } else if (index == 18) {
                    C0036b9 c0036b92 = this.j;
                    int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    c0036b92.u0 = dimensionPixelSize2;
                    c0036b92.w0 = dimensionPixelSize2;
                    c0036b92.x0 = dimensionPixelSize2;
                } else if (index == 19) {
                    this.j.v0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 2) {
                    this.j.w0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 3) {
                    this.j.s0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 4) {
                    this.j.x0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 5) {
                    this.j.t0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 54) {
                    this.j.T0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 44) {
                    this.j.D0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 53) {
                    this.j.E0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 38) {
                    this.j.F0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 46) {
                    this.j.H0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 40) {
                    this.j.G0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 48) {
                    this.j.I0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 42) {
                    this.j.J0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 37) {
                    this.j.L0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 45) {
                    this.j.N0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 39) {
                    this.j.M0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 47) {
                    this.j.O0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 51) {
                    this.j.K0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 41) {
                    this.j.R0 = obtainStyledAttributes.getInt(index, 2);
                } else if (index == 50) {
                    this.j.S0 = obtainStyledAttributes.getInt(index, 2);
                } else if (index == 43) {
                    this.j.P0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 52) {
                    this.j.Q0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 49) {
                    this.j.U0 = obtainStyledAttributes.getInt(index, -1);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.d = this.j;
        i();
    }

    @Override // defpackage.AbstractC0444r5
    public final void h(D5 d5, boolean z) {
        C0036b9 c0036b9 = this.j;
        int i = c0036b9.u0;
        if (i > 0 || c0036b9.v0 > 0) {
            if (z) {
                c0036b9.w0 = c0036b9.v0;
                c0036b9.x0 = i;
            } else {
                c0036b9.w0 = i;
                c0036b9.x0 = c0036b9.v0;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:83:0x07ad  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x07c6  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x07e5  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x07e7  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x07c9  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x07b2  */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    @Override // defpackage.Hn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j(defpackage.C0036b9 r41, int r42, int r43) {
        /*
            Method dump skipped, instructions count: 2042
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.helper.widget.Flow.j(b9, int, int):void");
    }

    @Override // defpackage.AbstractC0444r5, android.view.View
    public final void onMeasure(int i, int i2) {
        j(this.j, i, i2);
    }

    public void setFirstHorizontalBias(float f) {
        this.j.L0 = f;
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i) {
        this.j.F0 = i;
        requestLayout();
    }

    public void setFirstVerticalBias(float f) {
        this.j.M0 = f;
        requestLayout();
    }

    public void setFirstVerticalStyle(int i) {
        this.j.G0 = i;
        requestLayout();
    }

    public void setHorizontalAlign(int i) {
        this.j.R0 = i;
        requestLayout();
    }

    public void setHorizontalBias(float f) {
        this.j.J0 = f;
        requestLayout();
    }

    public void setHorizontalGap(int i) {
        this.j.P0 = i;
        requestLayout();
    }

    public void setHorizontalStyle(int i) {
        this.j.D0 = i;
        requestLayout();
    }

    public void setLastHorizontalBias(float f) {
        this.j.N0 = f;
        requestLayout();
    }

    public void setLastHorizontalStyle(int i) {
        this.j.H0 = i;
        requestLayout();
    }

    public void setLastVerticalBias(float f) {
        this.j.O0 = f;
        requestLayout();
    }

    public void setLastVerticalStyle(int i) {
        this.j.I0 = i;
        requestLayout();
    }

    public void setMaxElementsWrap(int i) {
        this.j.U0 = i;
        requestLayout();
    }

    public void setOrientation(int i) {
        this.j.V0 = i;
        requestLayout();
    }

    public void setPadding(int i) {
        C0036b9 c0036b9 = this.j;
        c0036b9.s0 = i;
        c0036b9.t0 = i;
        c0036b9.u0 = i;
        c0036b9.v0 = i;
        requestLayout();
    }

    public void setPaddingBottom(int i) {
        this.j.t0 = i;
        requestLayout();
    }

    public void setPaddingLeft(int i) {
        this.j.w0 = i;
        requestLayout();
    }

    public void setPaddingRight(int i) {
        this.j.x0 = i;
        requestLayout();
    }

    public void setPaddingTop(int i) {
        this.j.s0 = i;
        requestLayout();
    }

    public void setVerticalAlign(int i) {
        this.j.S0 = i;
        requestLayout();
    }

    public void setVerticalBias(float f) {
        this.j.K0 = f;
        requestLayout();
    }

    public void setVerticalGap(int i) {
        this.j.Q0 = i;
        requestLayout();
    }

    public void setVerticalStyle(int i) {
        this.j.E0 = i;
        requestLayout();
    }

    public void setWrapMode(int i) {
        this.j.T0 = i;
        requestLayout();
    }
}
