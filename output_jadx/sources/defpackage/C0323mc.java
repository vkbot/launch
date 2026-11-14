package defpackage;

import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* renamed from: mc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0323mc extends AbstractC0405pg {
    public RecyclerView a;
    public Scroller b;
    public final C0355ni c = new C0355ni(this);
    public final /* synthetic */ int d;
    public We e;
    public We f;

    public C0323mc(int i) {
        this.d = i;
    }

    public static int c(View view, Y7 y7) {
        return ((y7.c(view) / 2) + y7.e(view)) - ((y7.l() / 2) + y7.k());
    }

    public static View e(AbstractC0353ng abstractC0353ng, Y7 y7) {
        int v = abstractC0353ng.v();
        View view = null;
        if (v == 0) {
            return null;
        }
        int l = (y7.l() / 2) + y7.k();
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < v; i2++) {
            View u = abstractC0353ng.u(i2);
            int abs = Math.abs(((y7.c(u) / 2) + y7.e(u)) - l);
            if (abs < i) {
                view = u;
                i = abs;
            }
        }
        return view;
    }

    public static View f(AbstractC0353ng abstractC0353ng, Y7 y7) {
        int v = abstractC0353ng.v();
        View view = null;
        if (v == 0) {
            return null;
        }
        int l = (y7.l() / 2) + y7.k();
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < v; i2++) {
            View u = abstractC0353ng.u(i2);
            int abs = Math.abs(((y7.c(u) / 2) + y7.e(u)) - l);
            if (abs < i) {
                view = u;
                i = abs;
            }
        }
        return view;
    }

    public final void a(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.a;
        if (recyclerView2 == recyclerView) {
            return;
        }
        C0355ni c0355ni = this.c;
        if (recyclerView2 != null) {
            ArrayList arrayList = recyclerView2.j0;
            if (arrayList != null) {
                arrayList.remove(c0355ni);
            }
            this.a.setOnFlingListener(null);
        }
        this.a = recyclerView;
        if (recyclerView != null) {
            if (recyclerView.getOnFlingListener() != null) {
                throw new IllegalStateException("An instance of OnFlingListener already set.");
            }
            this.a.j(c0355ni);
            this.a.setOnFlingListener(this);
            this.b = new Scroller(this.a.getContext(), new DecelerateInterpolator());
            l();
        }
    }

    public final int[] b(AbstractC0353ng abstractC0353ng, View view) {
        switch (this.d) {
            case 0:
                int[] iArr = new int[2];
                if (abstractC0353ng.d()) {
                    Y7 h = h(abstractC0353ng);
                    iArr[0] = ((h.c(view) / 2) + h.e(view)) - ((h.l() / 2) + h.k());
                } else {
                    iArr[0] = 0;
                }
                if (abstractC0353ng.e()) {
                    Y7 j = j(abstractC0353ng);
                    iArr[1] = ((j.c(view) / 2) + j.e(view)) - ((j.l() / 2) + j.k());
                } else {
                    iArr[1] = 0;
                }
                return iArr;
            default:
                int[] iArr2 = new int[2];
                if (abstractC0353ng.d()) {
                    iArr2[0] = c(view, i(abstractC0353ng));
                } else {
                    iArr2[0] = 0;
                }
                if (abstractC0353ng.e()) {
                    iArr2[1] = c(view, k(abstractC0353ng));
                } else {
                    iArr2[1] = 0;
                }
                return iArr2;
        }
    }

    public int d(AbstractC0353ng abstractC0353ng, Y7 y7, int i, int i2) {
        this.b.fling(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        int[] iArr = {this.b.getFinalX(), this.b.getFinalY()};
        int v = abstractC0353ng.v();
        float f = 1.0f;
        if (v != 0) {
            View view = null;
            int i3 = Integer.MIN_VALUE;
            int i4 = Integer.MAX_VALUE;
            View view2 = null;
            for (int i5 = 0; i5 < v; i5++) {
                View u = abstractC0353ng.u(i5);
                int F = AbstractC0353ng.F(u);
                if (F != -1) {
                    if (F < i4) {
                        view = u;
                        i4 = F;
                    }
                    if (F > i3) {
                        view2 = u;
                        i3 = F;
                    }
                }
            }
            if (view != null && view2 != null) {
                int max = Math.max(y7.b(view), y7.b(view2)) - Math.min(y7.e(view), y7.e(view2));
                if (max != 0) {
                    f = (max * 1.0f) / ((i3 - i4) + 1);
                }
            }
        }
        if (f <= 0.0f) {
            return 0;
        }
        return Math.round((Math.abs(iArr[0]) > Math.abs(iArr[1]) ? iArr[0] : iArr[1]) / f);
    }

    public final View g(AbstractC0353ng abstractC0353ng) {
        switch (this.d) {
            case 0:
                if (abstractC0353ng.e()) {
                    return e(abstractC0353ng, j(abstractC0353ng));
                }
                if (abstractC0353ng.d()) {
                    return e(abstractC0353ng, h(abstractC0353ng));
                }
                return null;
            default:
                if (abstractC0353ng.e()) {
                    return f(abstractC0353ng, k(abstractC0353ng));
                }
                if (abstractC0353ng.d()) {
                    return f(abstractC0353ng, i(abstractC0353ng));
                }
                return null;
        }
    }

    public Y7 h(AbstractC0353ng abstractC0353ng) {
        We we = this.f;
        if (we == null || ((AbstractC0353ng) we.b) != abstractC0353ng) {
            this.f = new We(abstractC0353ng, 0);
        }
        return this.f;
    }

    public Y7 i(AbstractC0353ng abstractC0353ng) {
        We we = this.f;
        if (we == null || ((AbstractC0353ng) we.b) != abstractC0353ng) {
            this.f = new We(abstractC0353ng, 0);
        }
        return this.f;
    }

    public Y7 j(AbstractC0353ng abstractC0353ng) {
        We we = this.e;
        if (we == null || ((AbstractC0353ng) we.b) != abstractC0353ng) {
            this.e = new We(abstractC0353ng, 1);
        }
        return this.e;
    }

    public Y7 k(AbstractC0353ng abstractC0353ng) {
        We we = this.e;
        if (we == null || ((AbstractC0353ng) we.b) != abstractC0353ng) {
            this.e = new We(abstractC0353ng, 1);
        }
        return this.e;
    }

    public final void l() {
        AbstractC0353ng layoutManager;
        View g;
        RecyclerView recyclerView = this.a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (g = g(layoutManager)) == null) {
            return;
        }
        int[] b = b(layoutManager, g);
        int i = b[0];
        if (i == 0 && b[1] == 0) {
            return;
        }
        this.a.k0(i, b[1], false);
    }
}
