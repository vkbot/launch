package defpackage;

import android.graphics.Typeface;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: j0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0233j0 implements Runnable {
    public final /* synthetic */ int a;
    public Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ RunnableC0233j0(Object obj, int i, Object obj2) {
        this.a = i;
        this.c = obj;
        this.b = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0116ec c0116ec;
        Jd jd;
        int i = 0;
        Object obj = this.c;
        switch (this.a) {
            case 0:
                C0285l0 c0285l0 = (C0285l0) obj;
                Ld ld = c0285l0.c;
                if (ld != null && (jd = ld.e) != null) {
                    jd.t(ld);
                }
                View view = (View) c0285l0.h;
                if (view != null && view.getWindowToken() != null) {
                    C0182h0 c0182h0 = (C0182h0) this.b;
                    if (!c0182h0.b()) {
                        if (c0182h0.e != null) {
                            c0182h0.d(0, 0, false, false);
                        }
                    }
                    c0285l0.s = c0182h0;
                }
                c0285l0.u = null;
                return;
            case 1:
                AbstractC0145ff abstractC0145ff = (AbstractC0145ff) ((L) this.b).b;
                if (abstractC0145ff != null) {
                    abstractC0145ff.A((Typeface) obj);
                    return;
                }
                return;
            case 2:
                ((N3) this.b).s((Ca) obj);
                return;
            case 3:
                C0550vb c0550vb = (C0550vb) obj;
                RecyclerView recyclerView = c0550vb.r;
                if (recyclerView == null || !recyclerView.s) {
                    return;
                }
                C0475sb c0475sb = (C0475sb) this.b;
                if (c0475sb.k) {
                    return;
                }
                Eg eg = c0475sb.e;
                if (eg.b() != -1) {
                    AbstractC0249jg itemAnimator = c0550vb.r.getItemAnimator();
                    if (itemAnimator == null || !itemAnimator.f()) {
                        ArrayList arrayList = c0550vb.p;
                        int size = arrayList.size();
                        while (i < size) {
                            if (((C0475sb) arrayList.get(i)).l) {
                                i++;
                            }
                        }
                        C0558vj c0558vj = c0550vb.m;
                        c0558vj.getClass();
                        AbstractC0348nb.r(eg, "vh");
                        C0658zj.b((C0658zj) c0558vj.b, eg.c());
                        return;
                    }
                    c0550vb.r.post(this);
                    return;
                }
                return;
            case 4:
                break;
            case 5:
                ((C0242j9) this.b).a(obj);
                return;
            default:
                C0282kn c0282kn = ((SwipeDismissBehavior) obj).a;
                if (c0282kn == null || !c0282kn.f()) {
                    return;
                }
                WeakHashMap weakHashMap = AbstractC0205hn.a;
                Rm.m((View) this.b, this);
                return;
        }
        do {
            try {
                ((Runnable) this.b).run();
            } catch (Throwable th) {
                AbstractC0152fm.q(C0497t8.a, th);
            }
            c0116ec = (C0116ec) obj;
            Runnable i2 = c0116ec.i();
            if (i2 == null) {
                return;
            }
            this.b = i2;
            i++;
        } while (i < 16);
        C0511tm c0511tm = c0116ec.c;
        c0511tm.getClass();
        c0511tm.g(c0116ec, this);
    }

    public /* synthetic */ RunnableC0233j0(Object obj, Object obj2, int i, boolean z) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    public RunnableC0233j0(SwipeDismissBehavior swipeDismissBehavior, View view, boolean z) {
        this.a = 6;
        this.c = swipeDismissBehavior;
        this.b = view;
    }

    public RunnableC0233j0(C0550vb c0550vb, C0475sb c0475sb, int i) {
        this.a = 3;
        this.c = c0550vb;
        this.b = c0475sb;
    }
}
