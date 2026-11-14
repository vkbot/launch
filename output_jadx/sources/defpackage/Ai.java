package defpackage;

import android.view.View;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class Ai {
    public final ArrayList a = new ArrayList();
    public int b = Integer.MIN_VALUE;
    public int c = Integer.MIN_VALUE;
    public int d = 0;
    public final int e;
    public final /* synthetic */ StaggeredGridLayoutManager f;

    public Ai(StaggeredGridLayoutManager staggeredGridLayoutManager, int i) {
        this.f = staggeredGridLayoutManager;
        this.e = i;
    }

    public final void a() {
        View view = (View) this.a.get(r0.size() - 1);
        C0607xi c0607xi = (C0607xi) view.getLayoutParams();
        this.c = this.f.r.b(view);
        c0607xi.getClass();
    }

    public final void b() {
        this.a.clear();
        this.b = Integer.MIN_VALUE;
        this.c = Integer.MIN_VALUE;
        this.d = 0;
    }

    public final int c() {
        return this.f.w ? e(r1.size() - 1, -1) : e(0, this.a.size());
    }

    public final int d() {
        return this.f.w ? e(0, this.a.size()) : e(r1.size() - 1, -1);
    }

    public final int e(int i, int i2) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f;
        int k = staggeredGridLayoutManager.r.k();
        int g = staggeredGridLayoutManager.r.g();
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            View view = (View) this.a.get(i);
            int e = staggeredGridLayoutManager.r.e(view);
            int b = staggeredGridLayoutManager.r.b(view);
            boolean z = e <= g;
            boolean z2 = b >= k;
            if (z && z2 && (e < k || b > g)) {
                return AbstractC0353ng.F(view);
            }
            i += i3;
        }
        return -1;
    }

    public final int f(int i) {
        int i2 = this.c;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (this.a.size() == 0) {
            return i;
        }
        a();
        return this.c;
    }

    public final View g(int i, int i2) {
        ArrayList arrayList = this.a;
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f;
        View view = null;
        if (i2 != -1) {
            int size = arrayList.size() - 1;
            while (size >= 0) {
                View view2 = (View) arrayList.get(size);
                if ((staggeredGridLayoutManager.w && AbstractC0353ng.F(view2) >= i) || ((!staggeredGridLayoutManager.w && AbstractC0353ng.F(view2) <= i) || !view2.hasFocusable())) {
                    break;
                }
                size--;
                view = view2;
            }
        } else {
            int size2 = arrayList.size();
            int i3 = 0;
            while (i3 < size2) {
                View view3 = (View) arrayList.get(i3);
                if ((staggeredGridLayoutManager.w && AbstractC0353ng.F(view3) <= i) || ((!staggeredGridLayoutManager.w && AbstractC0353ng.F(view3) >= i) || !view3.hasFocusable())) {
                    break;
                }
                i3++;
                view = view3;
            }
        }
        return view;
    }

    public final int h(int i) {
        int i2 = this.b;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (this.a.size() == 0) {
            return i;
        }
        View view = (View) this.a.get(0);
        C0607xi c0607xi = (C0607xi) view.getLayoutParams();
        this.b = this.f.r.e(view);
        c0607xi.getClass();
        return this.b;
    }
}
