package defpackage;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;

/* renamed from: ug, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0530ug {
    public final ArrayList a;
    public ArrayList b;
    public final ArrayList c;
    public final List d;
    public int e;
    public int f;
    public C0505tg g;
    public final /* synthetic */ RecyclerView h;

    public C0530ug(RecyclerView recyclerView) {
        this.h = recyclerView;
        ArrayList arrayList = new ArrayList();
        this.a = arrayList;
        this.b = null;
        this.c = new ArrayList();
        this.d = Collections.unmodifiableList(arrayList);
        this.e = 2;
        this.f = 2;
    }

    public final void a(Eg eg, boolean z) {
        RecyclerView.l(eg);
        RecyclerView recyclerView = this.h;
        Gg gg = recyclerView.o0;
        View view = eg.a;
        if (gg != null) {
            Fg fg = gg.e;
            AbstractC0205hn.h(view, fg != null ? (C0488t) fg.e.remove(view) : null);
        }
        if (z) {
            ArrayList arrayList = recyclerView.o;
            if (arrayList.size() > 0) {
                arrayList.get(0).getClass();
                throw new ClassCastException();
            }
            if (recyclerView.h0 != null) {
                recyclerView.g.M(eg);
            }
            if (RecyclerView.B0) {
                Log.d("RecyclerView", "dispatchViewRecycled: " + eg);
            }
        }
        eg.s = null;
        eg.r = null;
        C0505tg c = c();
        c.getClass();
        int i = eg.f;
        ArrayList arrayList2 = c.a(i).a;
        if (((C0480sg) c.a.get(i)).b <= arrayList2.size()) {
            AbstractC0554vf.d(view);
        } else {
            if (RecyclerView.A0 && arrayList2.contains(eg)) {
                throw new IllegalArgumentException("this scrap item already exists");
            }
            eg.p();
            arrayList2.add(eg);
        }
    }

    public final int b(int i) {
        RecyclerView recyclerView = this.h;
        if (i >= 0 && i < recyclerView.h0.b()) {
            return !recyclerView.h0.g ? i : recyclerView.e.g(i, 0);
        }
        throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + recyclerView.h0.b() + recyclerView.C());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [tg, java.lang.Object] */
    public final C0505tg c() {
        if (this.g == null) {
            ?? obj = new Object();
            obj.a = new SparseArray();
            obj.b = 0;
            obj.c = Collections.newSetFromMap(new IdentityHashMap());
            this.g = obj;
            d();
        }
        return this.g;
    }

    public final void d() {
        RecyclerView recyclerView;
        AbstractC0146fg abstractC0146fg;
        C0505tg c0505tg = this.g;
        if (c0505tg == null || (abstractC0146fg = (recyclerView = this.h).m) == null || !recyclerView.s) {
            return;
        }
        c0505tg.c.add(abstractC0146fg);
    }

    public final void e(AbstractC0146fg abstractC0146fg, boolean z) {
        C0505tg c0505tg = this.g;
        if (c0505tg == null) {
            return;
        }
        Set set = c0505tg.c;
        set.remove(abstractC0146fg);
        if (set.size() != 0 || z) {
            return;
        }
        int i = 0;
        while (true) {
            SparseArray sparseArray = c0505tg.a;
            if (i >= sparseArray.size()) {
                return;
            }
            ArrayList arrayList = ((C0480sg) sparseArray.get(sparseArray.keyAt(i))).a;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                AbstractC0554vf.d(((Eg) arrayList.get(i2)).a);
            }
            i++;
        }
    }

    public final void f() {
        ArrayList arrayList = this.c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            g(size);
        }
        arrayList.clear();
        if (RecyclerView.G0) {
            C0474sa c0474sa = this.h.g0;
            int[] iArr = c0474sa.c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            c0474sa.d = 0;
        }
    }

    public final void g(int i) {
        if (RecyclerView.B0) {
            Log.d("RecyclerView", "Recycling cached view at index " + i);
        }
        ArrayList arrayList = this.c;
        Eg eg = (Eg) arrayList.get(i);
        if (RecyclerView.B0) {
            Log.d("RecyclerView", "CachedViewHolder to be recycled: " + eg);
        }
        a(eg, true);
        arrayList.remove(i);
    }

    public final void h(View view) {
        Eg N = RecyclerView.N(view);
        boolean m = N.m();
        RecyclerView recyclerView = this.h;
        if (m) {
            recyclerView.removeDetachedView(view, false);
        }
        if (N.l()) {
            N.n.l(N);
        } else if (N.s()) {
            N.j &= -33;
        }
        i(N);
        if (recyclerView.M == null || N.j()) {
            return;
        }
        recyclerView.M.d(N);
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b2, code lost:
    
        r5 = r5 - 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i(defpackage.Eg r13) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0530ug.i(Eg):void");
    }

    public final void j(View view) {
        AbstractC0249jg abstractC0249jg;
        Eg N = RecyclerView.N(view);
        boolean f = N.f(12);
        RecyclerView recyclerView = this.h;
        if (!f && N.n() && (abstractC0249jg = recyclerView.M) != null) {
            Q6 q6 = (Q6) abstractC0249jg;
            if (N.e().isEmpty() && q6.g && !N.i()) {
                if (this.b == null) {
                    this.b = new ArrayList();
                }
                N.n = this;
                N.o = true;
                this.b.add(N);
                return;
            }
        }
        if (N.i() && !N.k() && !recyclerView.m.b) {
            throw new IllegalArgumentException(AbstractC0407pi.g(recyclerView, new StringBuilder("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.")));
        }
        N.n = this;
        N.o = false;
        this.a.add(N);
    }

    /* JADX WARN: Code restructure failed: missing block: B:270:0x045f, code lost:
    
        if (r11.i() == false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x04a8, code lost:
    
        if ((r9 + r12) >= r27) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01f5, code lost:
    
        if (r11.f != 0) goto L119;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x05ee  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x05f8  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x013a  */
    /* JADX WARN: Type inference failed for: r2v40, types: [Be, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.Eg k(int r26, long r27) {
        /*
            Method dump skipped, instructions count: 1607
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0530ug.k(int, long):Eg");
    }

    public final void l(Eg eg) {
        if (eg.o) {
            this.b.remove(eg);
        } else {
            this.a.remove(eg);
        }
        eg.n = null;
        eg.o = false;
        eg.j &= -33;
    }

    public final void m() {
        AbstractC0353ng abstractC0353ng = this.h.n;
        this.f = this.e + (abstractC0353ng != null ? abstractC0353ng.j : 0);
        ArrayList arrayList = this.c;
        for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.f; size--) {
            g(size);
        }
    }
}
