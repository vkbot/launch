package defpackage;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: o4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0367o4 {
    public final C0120eg a;
    public View e;
    public int d = 0;
    public final C0341n4 b = new C0341n4();
    public final ArrayList c = new ArrayList();

    public C0367o4(C0120eg c0120eg) {
        this.a = c0120eg;
    }

    public final void a(View view, int i, boolean z) {
        RecyclerView recyclerView = this.a.a;
        int childCount = i < 0 ? recyclerView.getChildCount() : f(i);
        this.b.e(childCount, z);
        if (z) {
            i(view);
        }
        recyclerView.addView(view, childCount);
        Eg N = RecyclerView.N(view);
        AbstractC0146fg abstractC0146fg = recyclerView.m;
        if (abstractC0146fg != null && N != null) {
            abstractC0146fg.f(N);
        }
        ArrayList arrayList = recyclerView.C;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((C0550vb) recyclerView.C.get(size)).getClass();
            }
        }
    }

    public final void b(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        RecyclerView recyclerView = this.a.a;
        int childCount = i < 0 ? recyclerView.getChildCount() : f(i);
        this.b.e(childCount, z);
        if (z) {
            i(view);
        }
        Eg N = RecyclerView.N(view);
        if (N != null) {
            if (!N.m() && !N.r()) {
                StringBuilder sb = new StringBuilder("Called attach on a child which is not detached: ");
                sb.append(N);
                throw new IllegalArgumentException(AbstractC0407pi.g(recyclerView, sb));
            }
            if (RecyclerView.B0) {
                Log.d("RecyclerView", "reAttach " + N);
            }
            N.j &= -257;
        } else if (RecyclerView.A0) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            sb2.append(", index: ");
            sb2.append(childCount);
            throw new IllegalArgumentException(AbstractC0407pi.g(recyclerView, sb2));
        }
        recyclerView.attachViewToParent(view, childCount, layoutParams);
    }

    public final void c(int i) {
        int f = f(i);
        this.b.f(f);
        RecyclerView recyclerView = this.a.a;
        View childAt = recyclerView.getChildAt(f);
        if (childAt != null) {
            Eg N = RecyclerView.N(childAt);
            if (N != null) {
                if (N.m() && !N.r()) {
                    StringBuilder sb = new StringBuilder("called detach on an already detached child ");
                    sb.append(N);
                    throw new IllegalArgumentException(AbstractC0407pi.g(recyclerView, sb));
                }
                if (RecyclerView.B0) {
                    Log.d("RecyclerView", "tmpDetach " + N);
                }
                N.a(256);
            }
        } else if (RecyclerView.A0) {
            StringBuilder sb2 = new StringBuilder("No view at offset ");
            sb2.append(f);
            throw new IllegalArgumentException(AbstractC0407pi.g(recyclerView, sb2));
        }
        recyclerView.detachViewFromParent(f);
    }

    public final View d(int i) {
        return this.a.a.getChildAt(f(i));
    }

    public final int e() {
        return this.a.a.getChildCount() - this.c.size();
    }

    public final int f(int i) {
        if (i < 0) {
            return -1;
        }
        int childCount = this.a.a.getChildCount();
        int i2 = i;
        while (i2 < childCount) {
            C0341n4 c0341n4 = this.b;
            int b = i - (i2 - c0341n4.b(i2));
            if (b == 0) {
                while (c0341n4.d(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += b;
        }
        return -1;
    }

    public final View g(int i) {
        return this.a.a.getChildAt(i);
    }

    public final int h() {
        return this.a.a.getChildCount();
    }

    public final void i(View view) {
        this.c.add(view);
        C0120eg c0120eg = this.a;
        Eg N = RecyclerView.N(view);
        if (N != null) {
            int i = N.q;
            View view2 = N.a;
            if (i != -1) {
                N.p = i;
            } else {
                WeakHashMap weakHashMap = AbstractC0205hn.a;
                N.p = Rm.c(view2);
            }
            RecyclerView recyclerView = c0120eg.a;
            if (recyclerView.Q()) {
                N.q = 4;
                recyclerView.u0.add(N);
            } else {
                WeakHashMap weakHashMap2 = AbstractC0205hn.a;
                Rm.s(view2, 4);
            }
        }
    }

    public final void j(View view) {
        if (this.c.remove(view)) {
            C0120eg c0120eg = this.a;
            Eg N = RecyclerView.N(view);
            if (N != null) {
                int i = N.p;
                RecyclerView recyclerView = c0120eg.a;
                if (recyclerView.Q()) {
                    N.q = i;
                    recyclerView.u0.add(N);
                } else {
                    WeakHashMap weakHashMap = AbstractC0205hn.a;
                    Rm.s(N.a, i);
                }
                N.p = 0;
            }
        }
    }

    public final String toString() {
        return this.b.toString() + ", hidden list:" + this.c.size();
    }
}
