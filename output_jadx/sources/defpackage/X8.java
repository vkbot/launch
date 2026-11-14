package defpackage;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class X8 extends AbstractC0455rg {
    public final /* synthetic */ Y8 a;

    public X8(Y8 y8) {
        this.a = y8;
    }

    @Override // defpackage.AbstractC0455rg
    public final void b(RecyclerView recyclerView, int i, int i2) {
        int computeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
        int computeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        Y8 y8 = this.a;
        int computeVerticalScrollRange = y8.s.computeVerticalScrollRange();
        int i3 = y8.r;
        int i4 = computeVerticalScrollRange - i3;
        int i5 = y8.a;
        y8.t = i4 > 0 && i3 >= i5;
        int computeHorizontalScrollRange = y8.s.computeHorizontalScrollRange();
        int i6 = y8.q;
        boolean z = computeHorizontalScrollRange - i6 > 0 && i6 >= i5;
        y8.u = z;
        boolean z2 = y8.t;
        if (!z2 && !z) {
            if (y8.v != 0) {
                y8.j(0);
                return;
            }
            return;
        }
        if (z2) {
            float f = i3;
            y8.l = (int) ((((f / 2.0f) + computeVerticalScrollOffset) * f) / computeVerticalScrollRange);
            y8.k = Math.min(i3, (i3 * i3) / computeVerticalScrollRange);
        }
        if (y8.u) {
            float f2 = computeHorizontalScrollOffset;
            float f3 = i6;
            y8.o = (int) ((((f3 / 2.0f) + f2) * f3) / computeHorizontalScrollRange);
            y8.n = Math.min(i6, (i6 * i6) / computeHorizontalScrollRange);
        }
        int i7 = y8.v;
        if (i7 == 0 || i7 == 1) {
            y8.j(1);
        }
    }
}
