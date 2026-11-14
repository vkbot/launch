package defpackage;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class Xl implements Cloneable {
    public static final int[] t = {2, 1, 3, 4};
    public static final Of u = new Object();
    public static final ThreadLocal v = new ThreadLocal();
    public ArrayList k;
    public ArrayList l;
    public final String a = getClass().getName();
    public long b = -1;
    public long c = -1;
    public TimeInterpolator d = null;
    public final ArrayList e = new ArrayList();
    public final ArrayList f = new ArrayList();
    public C0446r7 g = new C0446r7(3);
    public C0446r7 h = new C0446r7(3);
    public C0056c3 i = null;
    public final int[] j = t;
    public final ArrayList m = new ArrayList();
    public int n = 0;
    public boolean o = false;
    public boolean p = false;
    public ArrayList q = null;
    public ArrayList r = new ArrayList();
    public Of s = u;

    public static void b(C0446r7 c0446r7, View view, C0075cm c0075cm) {
        ((W2) c0446r7.a).put(view, c0075cm);
        int id = view.getId();
        if (id >= 0) {
            SparseArray sparseArray = (SparseArray) c0446r7.b;
            if (sparseArray.indexOfKey(id) >= 0) {
                sparseArray.put(id, null);
            } else {
                sparseArray.put(id, view);
            }
        }
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        String k = Xm.k(view);
        if (k != null) {
            W2 w2 = (W2) c0446r7.d;
            if (w2.containsKey(k)) {
                w2.put(k, null);
            } else {
                w2.put(k, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                Qc qc = (Qc) c0446r7.c;
                if (qc.a) {
                    qc.b();
                }
                if (AbstractC0348nb.k(qc.b, qc.d, itemIdAtPosition) < 0) {
                    Rm.r(view, true);
                    qc.d(itemIdAtPosition, view);
                    return;
                }
                View view2 = (View) qc.c(itemIdAtPosition, null);
                if (view2 != null) {
                    Rm.r(view2, false);
                    qc.d(itemIdAtPosition, null);
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, W2, ki] */
    public static W2 n() {
        ThreadLocal threadLocal = v;
        W2 w2 = (W2) threadLocal.get();
        if (w2 != null) {
            return w2;
        }
        ?? c0277ki = new C0277ki();
        threadLocal.set(c0277ki);
        return c0277ki;
    }

    public static boolean s(C0075cm c0075cm, C0075cm c0075cm2, String str) {
        Object obj = c0075cm.a.get(str);
        Object obj2 = c0075cm2.a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    public void A(Of of) {
        if (of == null) {
            this.s = u;
        } else {
            this.s = of;
        }
    }

    public void B() {
    }

    public void C(long j) {
        this.b = j;
    }

    public final void D() {
        if (this.n == 0) {
            ArrayList arrayList = this.q;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.q.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((Wl) arrayList2.get(i)).c();
                }
            }
            this.p = false;
        }
        this.n++;
    }

    public String E(String str) {
        String str2 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.c != -1) {
            str2 = str2 + "dur(" + this.c + ") ";
        }
        if (this.b != -1) {
            str2 = str2 + "dly(" + this.b + ") ";
        }
        if (this.d != null) {
            str2 = str2 + "interp(" + this.d + ") ";
        }
        ArrayList arrayList = this.e;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f;
        if (size <= 0 && arrayList2.size() <= 0) {
            return str2;
        }
        String i = AbstractC0407pi.i(str2, "tgts(");
        if (arrayList.size() > 0) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                if (i2 > 0) {
                    i = AbstractC0407pi.i(i, ", ");
                }
                i = i + arrayList.get(i2);
            }
        }
        if (arrayList2.size() > 0) {
            for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                if (i3 > 0) {
                    i = AbstractC0407pi.i(i, ", ");
                }
                i = i + arrayList2.get(i3);
            }
        }
        return AbstractC0407pi.i(i, ")");
    }

    public void a(Wl wl) {
        if (this.q == null) {
            this.q = new ArrayList();
        }
        this.q.add(wl);
    }

    public abstract void c(C0075cm c0075cm);

    public final void d(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.getId();
        if (view.getParent() instanceof ViewGroup) {
            C0075cm c0075cm = new C0075cm(view);
            if (z) {
                f(c0075cm);
            } else {
                c(c0075cm);
            }
            c0075cm.c.add(this);
            e(c0075cm);
            if (z) {
                b(this.g, view, c0075cm);
            } else {
                b(this.h, view, c0075cm);
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                d(viewGroup.getChildAt(i), z);
            }
        }
    }

    public void e(C0075cm c0075cm) {
    }

    public abstract void f(C0075cm c0075cm);

    public final void g(ViewGroup viewGroup, boolean z) {
        h(z);
        ArrayList arrayList = this.e;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f;
        if (size <= 0 && arrayList2.size() <= 0) {
            d(viewGroup, z);
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            View findViewById = viewGroup.findViewById(((Integer) arrayList.get(i)).intValue());
            if (findViewById != null) {
                C0075cm c0075cm = new C0075cm(findViewById);
                if (z) {
                    f(c0075cm);
                } else {
                    c(c0075cm);
                }
                c0075cm.c.add(this);
                e(c0075cm);
                if (z) {
                    b(this.g, findViewById, c0075cm);
                } else {
                    b(this.h, findViewById, c0075cm);
                }
            }
        }
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            View view = (View) arrayList2.get(i2);
            C0075cm c0075cm2 = new C0075cm(view);
            if (z) {
                f(c0075cm2);
            } else {
                c(c0075cm2);
            }
            c0075cm2.c.add(this);
            e(c0075cm2);
            if (z) {
                b(this.g, view, c0075cm2);
            } else {
                b(this.h, view, c0075cm2);
            }
        }
    }

    public final void h(boolean z) {
        if (z) {
            ((W2) this.g.a).clear();
            ((SparseArray) this.g.b).clear();
            ((Qc) this.g.c).a();
        } else {
            ((W2) this.h.a).clear();
            ((SparseArray) this.h.b).clear();
            ((Qc) this.h.c).a();
        }
    }

    @Override // 
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public Xl clone() {
        try {
            Xl xl = (Xl) super.clone();
            xl.r = new ArrayList();
            xl.g = new C0446r7(3);
            xl.h = new C0446r7(3);
            xl.k = null;
            xl.l = null;
            return xl;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public Animator j(ViewGroup viewGroup, C0075cm c0075cm, C0075cm c0075cm2) {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [Vl, java.lang.Object] */
    public void k(ViewGroup viewGroup, C0446r7 c0446r7, C0446r7 c0446r72, ArrayList arrayList, ArrayList arrayList2) {
        Animator j;
        int i;
        View view;
        C0075cm c0075cm;
        Animator animator;
        W2 n = n();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            C0075cm c0075cm2 = (C0075cm) arrayList.get(i2);
            C0075cm c0075cm3 = (C0075cm) arrayList2.get(i2);
            C0075cm c0075cm4 = null;
            if (c0075cm2 != null && !c0075cm2.c.contains(this)) {
                c0075cm2 = null;
            }
            if (c0075cm3 != null && !c0075cm3.c.contains(this)) {
                c0075cm3 = null;
            }
            if (!(c0075cm2 == null && c0075cm3 == null) && ((c0075cm2 == null || c0075cm3 == null || q(c0075cm2, c0075cm3)) && (j = j(viewGroup, c0075cm2, c0075cm3)) != null)) {
                String str = this.a;
                if (c0075cm3 != null) {
                    String[] o = o();
                    view = c0075cm3.b;
                    if (o != null && o.length > 0) {
                        c0075cm = new C0075cm(view);
                        C0075cm c0075cm5 = (C0075cm) ((W2) c0446r72.a).getOrDefault(view, null);
                        i = size;
                        if (c0075cm5 != null) {
                            int i3 = 0;
                            while (i3 < o.length) {
                                HashMap hashMap = c0075cm.a;
                                String str2 = o[i3];
                                hashMap.put(str2, c0075cm5.a.get(str2));
                                i3++;
                                o = o;
                            }
                        }
                        int i4 = n.c;
                        for (int i5 = 0; i5 < i4; i5++) {
                            animator = null;
                            Vl vl = (Vl) n.getOrDefault((Animator) n.h(i5), null);
                            if (vl.c != null && vl.a == view && vl.b.equals(str) && vl.c.equals(c0075cm)) {
                                break;
                            }
                        }
                    } else {
                        i = size;
                        c0075cm = null;
                    }
                    animator = j;
                    j = animator;
                    c0075cm4 = c0075cm;
                } else {
                    i = size;
                    view = c0075cm2.b;
                }
                if (j != null) {
                    C0057c4 c0057c4 = Cn.a;
                    C0154fo c0154fo = new C0154fo(viewGroup);
                    ?? obj = new Object();
                    obj.a = view;
                    obj.b = str;
                    obj.c = c0075cm4;
                    obj.d = c0154fo;
                    obj.e = this;
                    n.put(j, obj);
                    this.r.add(j);
                }
            } else {
                i = size;
            }
            i2++;
            size = i;
        }
        if (sparseIntArray.size() != 0) {
            for (int i6 = 0; i6 < sparseIntArray.size(); i6++) {
                Animator animator2 = (Animator) this.r.get(sparseIntArray.keyAt(i6));
                animator2.setStartDelay(animator2.getStartDelay() + (sparseIntArray.valueAt(i6) - Long.MAX_VALUE));
            }
        }
    }

    public final void l() {
        int i = this.n - 1;
        this.n = i;
        if (i == 0) {
            ArrayList arrayList = this.q;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.q.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((Wl) arrayList2.get(i2)).e(this);
                }
            }
            for (int i3 = 0; i3 < ((Qc) this.g.c).e(); i3++) {
                View view = (View) ((Qc) this.g.c).f(i3);
                if (view != null) {
                    WeakHashMap weakHashMap = AbstractC0205hn.a;
                    Rm.r(view, false);
                }
            }
            for (int i4 = 0; i4 < ((Qc) this.h.c).e(); i4++) {
                View view2 = (View) ((Qc) this.h.c).f(i4);
                if (view2 != null) {
                    WeakHashMap weakHashMap2 = AbstractC0205hn.a;
                    Rm.r(view2, false);
                }
            }
            this.p = true;
        }
    }

    public final C0075cm m(View view, boolean z) {
        C0056c3 c0056c3 = this.i;
        if (c0056c3 != null) {
            return c0056c3.m(view, z);
        }
        ArrayList arrayList = z ? this.k : this.l;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            }
            C0075cm c0075cm = (C0075cm) arrayList.get(i);
            if (c0075cm == null) {
                return null;
            }
            if (c0075cm.b == view) {
                break;
            }
            i++;
        }
        if (i >= 0) {
            return (C0075cm) (z ? this.l : this.k).get(i);
        }
        return null;
    }

    public String[] o() {
        return null;
    }

    public final C0075cm p(View view, boolean z) {
        C0056c3 c0056c3 = this.i;
        if (c0056c3 != null) {
            return c0056c3.p(view, z);
        }
        return (C0075cm) ((W2) (z ? this.g : this.h).a).getOrDefault(view, null);
    }

    public boolean q(C0075cm c0075cm, C0075cm c0075cm2) {
        if (c0075cm == null || c0075cm2 == null) {
            return false;
        }
        String[] o = o();
        if (o == null) {
            Iterator it = c0075cm.a.keySet().iterator();
            while (it.hasNext()) {
                if (s(c0075cm, c0075cm2, (String) it.next())) {
                }
            }
            return false;
        }
        for (String str : o) {
            if (!s(c0075cm, c0075cm2, str)) {
            }
        }
        return false;
        return true;
    }

    public final boolean r(View view) {
        int id = view.getId();
        ArrayList arrayList = this.e;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f;
        return (size == 0 && arrayList2.size() == 0) || arrayList.contains(Integer.valueOf(id)) || arrayList2.contains(view);
    }

    public void t(ViewGroup viewGroup) {
        if (this.p) {
            return;
        }
        W2 n = n();
        int i = n.c;
        C0057c4 c0057c4 = Cn.a;
        WindowId windowId = viewGroup.getWindowId();
        for (int i2 = i - 1; i2 >= 0; i2--) {
            Vl vl = (Vl) n.j(i2);
            if (vl.a != null && vl.d.a.equals(windowId)) {
                ((Animator) n.h(i2)).pause();
            }
        }
        ArrayList arrayList = this.q;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.q.clone();
            int size = arrayList2.size();
            for (int i3 = 0; i3 < size; i3++) {
                ((Wl) arrayList2.get(i3)).b();
            }
        }
        this.o = true;
    }

    public final String toString() {
        return E("");
    }

    public void u(Wl wl) {
        ArrayList arrayList = this.q;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(wl);
        if (this.q.size() == 0) {
            this.q = null;
        }
    }

    public void v(View view) {
        if (this.o) {
            if (!this.p) {
                W2 n = n();
                int i = n.c;
                C0057c4 c0057c4 = Cn.a;
                WindowId windowId = view.getWindowId();
                for (int i2 = i - 1; i2 >= 0; i2--) {
                    Vl vl = (Vl) n.j(i2);
                    if (vl.a != null && vl.d.a.equals(windowId)) {
                        ((Animator) n.h(i2)).resume();
                    }
                }
                ArrayList arrayList = this.q;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.q.clone();
                    int size = arrayList2.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        ((Wl) arrayList2.get(i3)).d();
                    }
                }
            }
            this.o = false;
        }
    }

    public void w() {
        D();
        W2 n = n();
        Iterator it = this.r.iterator();
        while (it.hasNext()) {
            Animator animator = (Animator) it.next();
            if (n.containsKey(animator)) {
                D();
                if (animator != null) {
                    animator.addListener(new Ul(this, n));
                    long j = this.c;
                    if (j >= 0) {
                        animator.setDuration(j);
                    }
                    long j2 = this.b;
                    if (j2 >= 0) {
                        animator.setStartDelay(animator.getStartDelay() + j2);
                    }
                    TimeInterpolator timeInterpolator = this.d;
                    if (timeInterpolator != null) {
                        animator.setInterpolator(timeInterpolator);
                    }
                    animator.addListener(new C0001a0(5, this));
                    animator.start();
                }
            }
        }
        this.r.clear();
        l();
    }

    public void x(long j) {
        this.c = j;
    }

    public void y(AbstractC0145ff abstractC0145ff) {
    }

    public void z(TimeInterpolator timeInterpolator) {
        this.d = timeInterpolator;
    }
}
