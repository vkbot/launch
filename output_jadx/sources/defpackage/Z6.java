package defpackage;

import android.animation.Animator;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.a;
import com.omoda.launcher.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class Z6 {
    public final ViewGroup a;
    public final ArrayList b = new ArrayList();
    public final ArrayList c = new ArrayList();
    public boolean d = false;
    public boolean e = false;

    public Z6(ViewGroup viewGroup) {
        this.a = viewGroup;
    }

    public static Z6 f(ViewGroup viewGroup, T7 t7) {
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof Z6) {
            return (Z6) tag;
        }
        t7.getClass();
        Z6 z6 = new Z6(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, z6);
        return z6;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [P3, java.lang.Object] */
    public final void a(int i, int i2, a aVar) {
        synchronized (this.b) {
            try {
                ?? obj = new Object();
                C0557vi d = d(aVar.c);
                if (d != null) {
                    d.c(i, i2);
                    return;
                }
                C0557vi c0557vi = new C0557vi(i, i2, aVar, obj);
                this.b.add(c0557vi);
                c0557vi.d.add(new RunnableC0532ui(this, c0557vi, 0));
                c0557vi.d.add(new RunnableC0532ui(this, c0557vi, 1));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r13v2, types: [P3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v3, types: [P3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v6, types: [java.lang.Object, v1, X6] */
    public final void b(ArrayList arrayList, boolean z) {
        int i;
        Iterator it = arrayList.iterator();
        C0557vi c0557vi = null;
        C0557vi c0557vi2 = null;
        while (true) {
            i = 3;
            if (!it.hasNext()) {
                break;
            }
            C0557vi c0557vi3 = (C0557vi) it.next();
            int c = AbstractC0407pi.c(c0557vi3.c.E);
            int p = AbstractC0407pi.p(c0557vi3.a);
            if (p != 0) {
                if (p != 1) {
                    if (p != 2 && p != 3) {
                    }
                } else if (c != 2) {
                    c0557vi2 = c0557vi3;
                }
            }
            if (c == 2 && c0557vi == null) {
                c0557vi = c0557vi3;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList(arrayList);
        Iterator it2 = arrayList.iterator();
        while (true) {
            boolean z2 = false;
            if (!it2.hasNext()) {
                break;
            }
            C0557vi c0557vi4 = (C0557vi) it2.next();
            ?? obj = new Object();
            c0557vi4.d();
            HashSet hashSet = c0557vi4.e;
            hashSet.add(obj);
            ?? abstractC0540v1 = new AbstractC0540v1(c0557vi4, obj);
            abstractC0540v1.d = false;
            abstractC0540v1.c = z;
            arrayList2.add(abstractC0540v1);
            ?? obj2 = new Object();
            c0557vi4.d();
            hashSet.add(obj2);
            if (!z ? c0557vi4 == c0557vi2 : c0557vi4 == c0557vi) {
                z2 = true;
            }
            AbstractC0540v1 abstractC0540v12 = new AbstractC0540v1(c0557vi4, obj2);
            int i2 = c0557vi4.a;
            AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = c0557vi4.c;
            if (i2 == 2) {
                if (z) {
                    abstractComponentCallbacksC0598x9.getClass();
                } else {
                    abstractComponentCallbacksC0598x9.getClass();
                }
                if (z) {
                    abstractComponentCallbacksC0598x9.getClass();
                } else {
                    abstractComponentCallbacksC0598x9.getClass();
                }
            } else if (z) {
                abstractComponentCallbacksC0598x9.getClass();
            } else {
                abstractComponentCallbacksC0598x9.getClass();
            }
            if (z2) {
                if (z) {
                    abstractComponentCallbacksC0598x9.getClass();
                } else {
                    abstractComponentCallbacksC0598x9.getClass();
                }
            }
            arrayList3.add(abstractC0540v12);
            c0557vi4.d.add(new U6(this, arrayList4, c0557vi4));
        }
        HashMap hashMap = new HashMap();
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            C0557vi c0557vi5 = (C0557vi) ((Y6) it3.next()).a;
            AbstractC0407pi.c(c0557vi5.c.E);
            int i3 = c0557vi5.a;
        }
        Iterator it4 = arrayList3.iterator();
        while (it4.hasNext()) {
            Y6 y6 = (Y6) it4.next();
            hashMap.put((C0557vi) y6.a, Boolean.FALSE);
            y6.d();
        }
        boolean containsValue = hashMap.containsValue(Boolean.TRUE);
        ViewGroup viewGroup = this.a;
        Context context = viewGroup.getContext();
        ArrayList arrayList5 = new ArrayList();
        Iterator it5 = arrayList2.iterator();
        boolean z3 = false;
        while (it5.hasNext()) {
            X6 x6 = (X6) it5.next();
            C0557vi c0557vi6 = (C0557vi) x6.a;
            int c2 = AbstractC0407pi.c(c0557vi6.c.E);
            int i4 = c0557vi6.a;
            if (c2 == i4 || !(c2 == 2 || i4 == 2)) {
                x6.d();
            } else {
                K1 j = x6.j(context);
                if (j == null) {
                    x6.d();
                } else {
                    Animator animator = (Animator) j.c;
                    if (animator == null) {
                        arrayList5.add(x6);
                    } else {
                        C0557vi c0557vi7 = (C0557vi) x6.a;
                        boolean equals = Boolean.TRUE.equals(hashMap.get(c0557vi7));
                        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x92 = c0557vi7.c;
                        if (equals) {
                            if (Log.isLoggable("FragmentManager", 2)) {
                                Log.v("FragmentManager", "Ignoring Animator set on " + abstractComponentCallbacksC0598x92 + " as this Fragment was involved in a Transition.");
                            }
                            x6.d();
                        } else {
                            boolean z4 = c0557vi7.a == i;
                            if (z4) {
                                arrayList4.remove(c0557vi7);
                            }
                            View view = abstractComponentCallbacksC0598x92.E;
                            viewGroup.startViewTransition(view);
                            animator.addListener(new V6(viewGroup, view, z4, c0557vi7, x6));
                            animator.setTarget(view);
                            animator.start();
                            ((P3) x6.b).a(new L(8, animator));
                            i = 3;
                            z3 = true;
                        }
                    }
                }
            }
            i = 3;
        }
        Iterator it6 = arrayList5.iterator();
        while (it6.hasNext()) {
            X6 x62 = (X6) it6.next();
            C0557vi c0557vi8 = (C0557vi) x62.a;
            AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x93 = c0557vi8.c;
            if (containsValue) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + abstractComponentCallbacksC0598x93 + " as Animations cannot run alongside Transitions.");
                }
                x62.d();
            } else if (z3) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + abstractComponentCallbacksC0598x93 + " as Animations cannot run alongside Animators.");
                }
                x62.d();
            } else {
                View view2 = abstractComponentCallbacksC0598x93.E;
                K1 j2 = x62.j(context);
                j2.getClass();
                Animation animation = (Animation) j2.b;
                animation.getClass();
                if (c0557vi8.a != 1) {
                    view2.startAnimation(animation);
                    x62.d();
                } else {
                    viewGroup.startViewTransition(view2);
                    RunnableC0648z9 runnableC0648z9 = new RunnableC0648z9(animation, viewGroup, view2);
                    runnableC0648z9.setAnimationListener(new W6(viewGroup, view2, x62));
                    view2.startAnimation(runnableC0648z9);
                }
                ((P3) x62.b).a(new C0491t2(view2, viewGroup, x62));
            }
        }
        Iterator it7 = arrayList4.iterator();
        while (it7.hasNext()) {
            C0557vi c0557vi9 = (C0557vi) it7.next();
            AbstractC0407pi.a(c0557vi9.c.E, c0557vi9.a);
        }
        arrayList4.clear();
    }

    public final void c() {
        if (this.e) {
            return;
        }
        ViewGroup viewGroup = this.a;
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        if (!Um.b(viewGroup)) {
            e();
            this.d = false;
            return;
        }
        synchronized (this.b) {
            try {
                if (!this.b.isEmpty()) {
                    ArrayList arrayList = new ArrayList(this.c);
                    this.c.clear();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        C0557vi c0557vi = (C0557vi) it.next();
                        if (Log.isLoggable("FragmentManager", 2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + c0557vi);
                        }
                        c0557vi.a();
                        if (!c0557vi.g) {
                            this.c.add(c0557vi);
                        }
                    }
                    g();
                    ArrayList arrayList2 = new ArrayList(this.b);
                    this.b.clear();
                    this.c.addAll(arrayList2);
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        ((C0557vi) it2.next()).d();
                    }
                    b(arrayList2, this.d);
                    this.d = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final C0557vi d(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            C0557vi c0557vi = (C0557vi) it.next();
            if (c0557vi.c.equals(abstractComponentCallbacksC0598x9) && !c0557vi.f) {
                return c0557vi;
            }
        }
        return null;
    }

    public final void e() {
        String str;
        String str2;
        ViewGroup viewGroup = this.a;
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        boolean b = Um.b(viewGroup);
        synchronized (this.b) {
            try {
                g();
                Iterator it = this.b.iterator();
                while (it.hasNext()) {
                    ((C0557vi) it.next()).d();
                }
                Iterator it2 = new ArrayList(this.c).iterator();
                while (it2.hasNext()) {
                    C0557vi c0557vi = (C0557vi) it2.next();
                    if (Log.isLoggable("FragmentManager", 2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: ");
                        if (b) {
                            str2 = "";
                        } else {
                            str2 = "Container " + this.a + " is not attached to window. ";
                        }
                        sb.append(str2);
                        sb.append("Cancelling running operation ");
                        sb.append(c0557vi);
                        Log.v("FragmentManager", sb.toString());
                    }
                    c0557vi.a();
                }
                Iterator it3 = new ArrayList(this.b).iterator();
                while (it3.hasNext()) {
                    C0557vi c0557vi2 = (C0557vi) it3.next();
                    if (Log.isLoggable("FragmentManager", 2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: ");
                        if (b) {
                            str = "";
                        } else {
                            str = "Container " + this.a + " is not attached to window. ";
                        }
                        sb2.append(str);
                        sb2.append("Cancelling pending operation ");
                        sb2.append(c0557vi2);
                        Log.v("FragmentManager", sb2.toString());
                    }
                    c0557vi2.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            C0557vi c0557vi = (C0557vi) it.next();
            if (c0557vi.b == 2) {
                c0557vi.c(AbstractC0407pi.b(c0557vi.c.x().getVisibility()), 1);
            }
        }
    }
}
