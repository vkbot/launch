package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.TimeUnit;

/* renamed from: ua, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0524ua implements Runnable {
    public static final ThreadLocal e = new ThreadLocal();
    public static final G0 f = new G0(4);
    public ArrayList a;
    public long b;
    public long c;
    public ArrayList d;

    public static Eg c(RecyclerView recyclerView, int i, long j) {
        int h = recyclerView.f.h();
        for (int i2 = 0; i2 < h; i2++) {
            Eg N = RecyclerView.N(recyclerView.f.g(i2));
            if (N.c == i && !N.i()) {
                return null;
            }
        }
        C0530ug c0530ug = recyclerView.c;
        try {
            recyclerView.U();
            Eg k = c0530ug.k(i, j);
            if (k != null) {
                if (!k.h() || k.i()) {
                    c0530ug.a(k, false);
                } else {
                    c0530ug.h(k.a);
                }
            }
            recyclerView.V(false);
            return k;
        } catch (Throwable th) {
            recyclerView.V(false);
            throw th;
        }
    }

    public final void a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.s) {
            if (RecyclerView.A0 && !this.a.contains(recyclerView)) {
                throw new IllegalStateException("attempting to post unregistered view!");
            }
            if (this.b == 0) {
                this.b = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        C0474sa c0474sa = recyclerView.g0;
        c0474sa.a = i;
        c0474sa.b = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(long j) {
        C0499ta c0499ta;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        C0499ta c0499ta2;
        ArrayList arrayList = this.a;
        int size = arrayList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView3 = (RecyclerView) arrayList.get(i2);
            if (recyclerView3.getWindowVisibility() == 0) {
                C0474sa c0474sa = recyclerView3.g0;
                c0474sa.b(recyclerView3, false);
                i += c0474sa.d;
            }
        }
        ArrayList arrayList2 = this.d;
        arrayList2.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView4 = (RecyclerView) arrayList.get(i4);
            if (recyclerView4.getWindowVisibility() == 0) {
                C0474sa c0474sa2 = recyclerView4.g0;
                int abs = Math.abs(c0474sa2.b) + Math.abs(c0474sa2.a);
                for (int i5 = 0; i5 < c0474sa2.d * 2; i5 += 2) {
                    if (i3 >= arrayList2.size()) {
                        Object obj = new Object();
                        arrayList2.add(obj);
                        c0499ta2 = obj;
                    } else {
                        c0499ta2 = (C0499ta) arrayList2.get(i3);
                    }
                    int[] iArr = c0474sa2.c;
                    int i6 = iArr[i5 + 1];
                    c0499ta2.a = i6 <= abs;
                    c0499ta2.b = abs;
                    c0499ta2.c = i6;
                    c0499ta2.d = recyclerView4;
                    c0499ta2.e = iArr[i5];
                    i3++;
                }
            }
        }
        Collections.sort(arrayList2, f);
        for (int i7 = 0; i7 < arrayList2.size() && (recyclerView = (c0499ta = (C0499ta) arrayList2.get(i7)).d) != null; i7++) {
            Eg c = c(recyclerView, c0499ta.e, c0499ta.a ? Long.MAX_VALUE : j);
            if (c != null && c.b != null && c.h() && !c.i() && (recyclerView2 = (RecyclerView) c.b.get()) != null) {
                if (recyclerView2.D && recyclerView2.f.h() != 0) {
                    AbstractC0249jg abstractC0249jg = recyclerView2.M;
                    if (abstractC0249jg != null) {
                        abstractC0249jg.e();
                    }
                    AbstractC0353ng abstractC0353ng = recyclerView2.n;
                    C0530ug c0530ug = recyclerView2.c;
                    if (abstractC0353ng != null) {
                        abstractC0353ng.g0(c0530ug);
                        recyclerView2.n.h0(c0530ug);
                    }
                    c0530ug.a.clear();
                    c0530ug.f();
                }
                C0474sa c0474sa3 = recyclerView2.g0;
                c0474sa3.b(recyclerView2, true);
                if (c0474sa3.d != 0) {
                    try {
                        Tl.a("RV Nested Prefetch");
                        Ag ag = recyclerView2.h0;
                        AbstractC0146fg abstractC0146fg = recyclerView2.m;
                        ag.d = 1;
                        ag.e = abstractC0146fg.a();
                        ag.g = false;
                        ag.h = false;
                        ag.i = false;
                        for (int i8 = 0; i8 < c0474sa3.d * 2; i8 += 2) {
                            c(recyclerView2, c0474sa3.c[i8], j);
                        }
                        c0499ta.a = false;
                        c0499ta.b = 0;
                        c0499ta.c = 0;
                        c0499ta.d = null;
                        c0499ta.e = 0;
                    } finally {
                        Tl.b();
                    }
                }
            }
            c0499ta.a = false;
            c0499ta.b = 0;
            c0499ta.c = 0;
            c0499ta.d = null;
            c0499ta.e = 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Tl.a("RV Prefetch");
            ArrayList arrayList = this.a;
            if (arrayList.isEmpty()) {
                return;
            }
            int size = arrayList.size();
            long j = 0;
            for (int i = 0; i < size; i++) {
                RecyclerView recyclerView = (RecyclerView) arrayList.get(i);
                if (recyclerView.getWindowVisibility() == 0) {
                    j = Math.max(recyclerView.getDrawingTime(), j);
                }
            }
            if (j == 0) {
                return;
            }
            b(TimeUnit.MILLISECONDS.toNanos(j) + this.c);
        } finally {
            this.b = 0L;
            Tl.b();
        }
    }
}
