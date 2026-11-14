package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* renamed from: sa, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0474sa {
    public int a;
    public int b;
    public int[] c;
    public int d;

    public final void a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }
        int i3 = this.d;
        int i4 = i3 * 2;
        int[] iArr = this.c;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.c = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i4 >= iArr.length) {
            int[] iArr3 = new int[i3 * 4];
            this.c = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = this.c;
        iArr4[i4] = i;
        iArr4[i4 + 1] = i2;
        this.d++;
    }

    public final void b(RecyclerView recyclerView, boolean z) {
        this.d = 0;
        int[] iArr = this.c;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        AbstractC0353ng abstractC0353ng = recyclerView.n;
        if (recyclerView.m == null || abstractC0353ng == null || !abstractC0353ng.i) {
            return;
        }
        if (z) {
            if (!recyclerView.e.j()) {
                abstractC0353ng.i(recyclerView.m.a(), this);
            }
        } else if (!recyclerView.P()) {
            abstractC0353ng.h(this.a, this.b, recyclerView.h0, this);
        }
        int i = this.d;
        if (i > abstractC0353ng.j) {
            abstractC0353ng.j = i;
            abstractC0353ng.k = z;
            recyclerView.c.m();
        }
    }
}
