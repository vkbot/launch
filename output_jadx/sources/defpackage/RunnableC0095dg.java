package defpackage;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* renamed from: dg, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0095dg implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ RecyclerView b;

    public /* synthetic */ RunnableC0095dg(RecyclerView recyclerView, int i) {
        this.a = i;
        this.b = recyclerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RecyclerView recyclerView = this.b;
        switch (this.a) {
            case 0:
                if (!recyclerView.u || recyclerView.isLayoutRequested()) {
                    return;
                }
                if (!recyclerView.s) {
                    recyclerView.requestLayout();
                    return;
                } else if (recyclerView.x) {
                    recyclerView.w = true;
                    return;
                } else {
                    recyclerView.p();
                    return;
                }
            default:
                AbstractC0249jg abstractC0249jg = recyclerView.M;
                if (abstractC0249jg != null) {
                    Q6 q6 = (Q6) abstractC0249jg;
                    ArrayList arrayList = q6.h;
                    boolean isEmpty = arrayList.isEmpty();
                    ArrayList arrayList2 = q6.j;
                    boolean isEmpty2 = arrayList2.isEmpty();
                    ArrayList arrayList3 = q6.k;
                    boolean isEmpty3 = arrayList3.isEmpty();
                    ArrayList arrayList4 = q6.i;
                    boolean isEmpty4 = arrayList4.isEmpty();
                    if (!isEmpty || !isEmpty2 || !isEmpty4 || !isEmpty3) {
                        Iterator it = arrayList.iterator();
                        while (true) {
                            boolean hasNext = it.hasNext();
                            long j = q6.d;
                            if (hasNext) {
                                Eg eg = (Eg) it.next();
                                View view = eg.a;
                                ViewPropertyAnimator animate = view.animate();
                                q6.q.add(eg);
                                animate.setDuration(j).alpha(0.0f).setListener(new L6(q6, eg, animate, view)).start();
                                it = it;
                            } else {
                                arrayList.clear();
                                if (!isEmpty2) {
                                    ArrayList arrayList5 = new ArrayList();
                                    arrayList5.addAll(arrayList2);
                                    q6.m.add(arrayList5);
                                    arrayList2.clear();
                                    K6 k6 = new K6(q6, arrayList5, 0);
                                    if (isEmpty) {
                                        k6.run();
                                    } else {
                                        View view2 = ((P6) arrayList5.get(0)).a.a;
                                        WeakHashMap weakHashMap = AbstractC0205hn.a;
                                        Rm.n(view2, k6, j);
                                    }
                                }
                                if (!isEmpty3) {
                                    ArrayList arrayList6 = new ArrayList();
                                    arrayList6.addAll(arrayList3);
                                    q6.n.add(arrayList6);
                                    arrayList3.clear();
                                    K6 k62 = new K6(q6, arrayList6, 1);
                                    if (isEmpty) {
                                        k62.run();
                                    } else {
                                        View view3 = ((O6) arrayList6.get(0)).a.a;
                                        WeakHashMap weakHashMap2 = AbstractC0205hn.a;
                                        Rm.n(view3, k62, j);
                                    }
                                }
                                if (!isEmpty4) {
                                    ArrayList arrayList7 = new ArrayList();
                                    arrayList7.addAll(arrayList4);
                                    q6.l.add(arrayList7);
                                    arrayList4.clear();
                                    K6 k63 = new K6(q6, arrayList7, 2);
                                    if (isEmpty && isEmpty2 && isEmpty3) {
                                        k63.run();
                                    } else {
                                        if (isEmpty) {
                                            j = 0;
                                        }
                                        long max = Math.max(!isEmpty2 ? q6.e : 0L, isEmpty3 ? 0L : q6.f) + j;
                                        View view4 = ((Eg) arrayList7.get(0)).a;
                                        WeakHashMap weakHashMap3 = AbstractC0205hn.a;
                                        Rm.n(view4, k63, max);
                                    }
                                }
                            }
                        }
                    }
                }
                recyclerView.n0 = false;
                return;
        }
    }
}
