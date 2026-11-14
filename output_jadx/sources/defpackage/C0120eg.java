package defpackage;

import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;

/* renamed from: eg, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0120eg {
    public final /* synthetic */ RecyclerView a;

    public /* synthetic */ C0120eg(RecyclerView recyclerView) {
        this.a = recyclerView;
    }

    public void a(C0589x0 c0589x0) {
        int i = c0589x0.a;
        RecyclerView recyclerView = this.a;
        if (i == 1) {
            recyclerView.n.W(c0589x0.b, c0589x0.d);
            return;
        }
        if (i == 2) {
            recyclerView.n.Z(c0589x0.b, c0589x0.d);
        } else if (i == 4) {
            recyclerView.n.a0(c0589x0.b, c0589x0.d);
        } else {
            if (i != 8) {
                return;
            }
            recyclerView.n.Y(c0589x0.b, c0589x0.d);
        }
    }

    public Eg b(int i) {
        RecyclerView recyclerView = this.a;
        int h = recyclerView.f.h();
        int i2 = 0;
        Eg eg = null;
        while (true) {
            if (i2 >= h) {
                break;
            }
            Eg N = RecyclerView.N(recyclerView.f.g(i2));
            if (N != null && !N.k() && N.c == i) {
                if (!recyclerView.f.c.contains(N.a)) {
                    eg = N;
                    break;
                }
                eg = N;
            }
            i2++;
        }
        if (eg == null) {
            return null;
        }
        if (!recyclerView.f.c.contains(eg.a)) {
            return eg;
        }
        if (RecyclerView.B0) {
            Log.d("RecyclerView", "assuming view holder cannot be find because it is hidden");
        }
        return null;
    }

    public void c(int i, int i2, Object obj) {
        int i3;
        int i4;
        RecyclerView recyclerView = this.a;
        int h = recyclerView.f.h();
        int i5 = i2 + i;
        for (int i6 = 0; i6 < h; i6++) {
            View g = recyclerView.f.g(i6);
            Eg N = RecyclerView.N(g);
            if (N != null && !N.r() && (i4 = N.c) >= i && i4 < i5) {
                N.a(2);
                if (obj == null) {
                    N.a(1024);
                } else if ((1024 & N.j) == 0) {
                    if (N.k == null) {
                        ArrayList arrayList = new ArrayList();
                        N.k = arrayList;
                        N.l = Collections.unmodifiableList(arrayList);
                    }
                    N.k.add(obj);
                }
                ((C0379og) g.getLayoutParams()).c = true;
            }
        }
        C0530ug c0530ug = recyclerView.c;
        ArrayList arrayList2 = c0530ug.c;
        for (int size = arrayList2.size() - 1; size >= 0; size--) {
            Eg eg = (Eg) arrayList2.get(size);
            if (eg != null && (i3 = eg.c) >= i && i3 < i5) {
                eg.a(2);
                c0530ug.g(size);
            }
        }
        recyclerView.l0 = true;
    }

    public void d(int i, int i2) {
        RecyclerView recyclerView = this.a;
        int h = recyclerView.f.h();
        for (int i3 = 0; i3 < h; i3++) {
            Eg N = RecyclerView.N(recyclerView.f.g(i3));
            if (N != null && !N.r() && N.c >= i) {
                if (RecyclerView.B0) {
                    Log.d("RecyclerView", "offsetPositionRecordsForInsert attached child " + i3 + " holder " + N + " now at position " + (N.c + i2));
                }
                N.o(i2, false);
                recyclerView.h0.f = true;
            }
        }
        ArrayList arrayList = recyclerView.c.c;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            Eg eg = (Eg) arrayList.get(i4);
            if (eg != null && eg.c >= i) {
                if (RecyclerView.B0) {
                    Log.d("RecyclerView", "offsetPositionRecordsForInsert cached " + i4 + " holder " + eg + " now at position " + (eg.c + i2));
                }
                eg.o(i2, false);
            }
        }
        recyclerView.requestLayout();
        recyclerView.k0 = true;
    }

    public void e(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        RecyclerView recyclerView = this.a;
        int h = recyclerView.f.h();
        int i10 = -1;
        if (i < i2) {
            i4 = i;
            i3 = i2;
            i5 = -1;
        } else {
            i3 = i;
            i4 = i2;
            i5 = 1;
        }
        for (int i11 = 0; i11 < h; i11++) {
            Eg N = RecyclerView.N(recyclerView.f.g(i11));
            if (N != null && (i9 = N.c) >= i4 && i9 <= i3) {
                if (RecyclerView.B0) {
                    Log.d("RecyclerView", "offsetPositionRecordsForMove attached child " + i11 + " holder " + N);
                }
                if (N.c == i) {
                    N.o(i2 - i, false);
                } else {
                    N.o(i5, false);
                }
                recyclerView.h0.f = true;
            }
        }
        C0530ug c0530ug = recyclerView.c;
        c0530ug.getClass();
        if (i < i2) {
            i7 = i;
            i6 = i2;
        } else {
            i6 = i;
            i7 = i2;
            i10 = 1;
        }
        ArrayList arrayList = c0530ug.c;
        int size = arrayList.size();
        for (int i12 = 0; i12 < size; i12++) {
            Eg eg = (Eg) arrayList.get(i12);
            if (eg != null && (i8 = eg.c) >= i7 && i8 <= i6) {
                if (i8 == i) {
                    eg.o(i2 - i, false);
                } else {
                    eg.o(i10, false);
                }
                if (RecyclerView.B0) {
                    Log.d("RecyclerView", "offsetPositionRecordsForMove cached child " + i12 + " holder " + eg);
                }
            }
        }
        recyclerView.requestLayout();
        recyclerView.k0 = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f(defpackage.Eg r8, defpackage.Be r9, defpackage.Be r10) {
        /*
            r7 = this;
            androidx.recyclerview.widget.RecyclerView r7 = r7.a
            r7.getClass()
            r0 = 0
            r8.q(r0)
            jg r0 = r7.M
            r1 = r0
            Q6 r1 = (defpackage.Q6) r1
            if (r9 == 0) goto L29
            r1.getClass()
            int r3 = r9.a
            int r5 = r10.a
            if (r3 != r5) goto L1f
            int r0 = r9.b
            int r2 = r10.b
            if (r0 == r2) goto L29
        L1f:
            int r4 = r9.b
            int r6 = r10.b
            r2 = r8
            boolean r8 = r1.g(r2, r3, r4, r5, r6)
            goto L38
        L29:
            r1.l(r8)
            android.view.View r9 = r8.a
            r10 = 0
            r9.setAlpha(r10)
            java.util.ArrayList r9 = r1.i
            r9.add(r8)
            r8 = 1
        L38:
            if (r8 == 0) goto L3d
            r7.X()
        L3d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0120eg.f(Eg, Be, Be):void");
    }

    public void g(Eg eg, Be be, Be be2) {
        boolean z;
        RecyclerView recyclerView = this.a;
        recyclerView.c.l(eg);
        recyclerView.h(eg);
        eg.q(false);
        Q6 q6 = (Q6) recyclerView.M;
        q6.getClass();
        int i = be.a;
        int i2 = be.b;
        View view = eg.a;
        int left = be2 == null ? view.getLeft() : be2.a;
        int top = be2 == null ? view.getTop() : be2.b;
        if (eg.k() || (i == left && i2 == top)) {
            q6.l(eg);
            q6.h.add(eg);
            z = true;
        } else {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            z = q6.g(eg, i, i2, left, top);
        }
        if (z) {
            recyclerView.X();
        }
    }

    public void h(int i) {
        RecyclerView recyclerView = this.a;
        View childAt = recyclerView.getChildAt(i);
        if (childAt != null) {
            recyclerView.r(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeViewAt(i);
    }
}
