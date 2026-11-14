package defpackage;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class K6 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ ArrayList b;
    public final /* synthetic */ Q6 c;

    public /* synthetic */ K6(Q6 q6, ArrayList arrayList, int i) {
        this.a = i;
        this.c = q6;
        this.b = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Iterator it;
        switch (this.a) {
            case 0:
                ArrayList arrayList = this.b;
                Iterator it2 = arrayList.iterator();
                while (true) {
                    boolean hasNext = it2.hasNext();
                    Q6 q6 = this.c;
                    if (!hasNext) {
                        arrayList.clear();
                        q6.m.remove(arrayList);
                        return;
                    }
                    P6 p6 = (P6) it2.next();
                    Eg eg = p6.a;
                    q6.getClass();
                    View view = eg.a;
                    int i = p6.d - p6.b;
                    int i2 = p6.e - p6.c;
                    if (i != 0) {
                        view.animate().translationX(0.0f);
                    }
                    if (i2 != 0) {
                        view.animate().translationY(0.0f);
                    }
                    ViewPropertyAnimator animate = view.animate();
                    q6.p.add(eg);
                    animate.setDuration(q6.e).setListener(new M6(q6, eg, i, view, i2, animate)).start();
                }
            case 1:
                ArrayList arrayList2 = this.b;
                Iterator it3 = arrayList2.iterator();
                while (true) {
                    boolean hasNext2 = it3.hasNext();
                    Q6 q62 = this.c;
                    if (!hasNext2) {
                        arrayList2.clear();
                        q62.n.remove(arrayList2);
                        return;
                    }
                    O6 o6 = (O6) it3.next();
                    q62.getClass();
                    Eg eg2 = o6.a;
                    View view2 = eg2 == null ? null : eg2.a;
                    Eg eg3 = o6.b;
                    View view3 = eg3 != null ? eg3.a : null;
                    ArrayList arrayList3 = q62.r;
                    long j = q62.f;
                    if (view2 != null) {
                        ViewPropertyAnimator duration = view2.animate().setDuration(j);
                        arrayList3.add(o6.a);
                        duration.translationX(o6.e - o6.c);
                        duration.translationY(o6.f - o6.d);
                        it = it3;
                        duration.alpha(0.0f).setListener(new N6(q62, o6, duration, view2, 0)).start();
                    } else {
                        it = it3;
                    }
                    if (view3 != null) {
                        ViewPropertyAnimator animate2 = view3.animate();
                        arrayList3.add(o6.b);
                        animate2.translationX(0.0f).translationY(0.0f).setDuration(j).alpha(1.0f).setListener(new N6(q62, o6, animate2, view3, 1)).start();
                    }
                    it3 = it;
                }
            default:
                ArrayList arrayList4 = this.b;
                Iterator it4 = arrayList4.iterator();
                while (true) {
                    boolean hasNext3 = it4.hasNext();
                    Q6 q63 = this.c;
                    if (!hasNext3) {
                        arrayList4.clear();
                        q63.l.remove(arrayList4);
                        return;
                    }
                    Eg eg4 = (Eg) it4.next();
                    q63.getClass();
                    View view4 = eg4.a;
                    ViewPropertyAnimator animate3 = view4.animate();
                    q63.o.add(eg4);
                    animate3.alpha(1.0f).setDuration(q63.c).setListener(new L6(q63, eg4, view4, animate3)).start();
                }
        }
    }
}
