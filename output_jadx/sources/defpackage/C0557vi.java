package defpackage;

import android.util.Log;
import android.view.View;
import androidx.fragment.app.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: vi, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0557vi {
    public int a;
    public int b;
    public final AbstractComponentCallbacksC0598x9 c;
    public final ArrayList d;
    public final HashSet e;
    public boolean f;
    public boolean g;
    public final a h;

    public C0557vi(int i, int i2, a aVar, P3 p3) {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = aVar.c;
        this.d = new ArrayList();
        this.e = new HashSet();
        this.f = false;
        this.g = false;
        this.a = i;
        this.b = i2;
        this.c = abstractComponentCallbacksC0598x9;
        p3.a(new L(25, this));
        this.h = aVar;
    }

    public final void a() {
        if (this.f) {
            return;
        }
        this.f = true;
        HashSet hashSet = this.e;
        if (hashSet.isEmpty()) {
            b();
            return;
        }
        Iterator it = new ArrayList(hashSet).iterator();
        while (it.hasNext()) {
            P3 p3 = (P3) it.next();
            synchronized (p3) {
                try {
                    if (!p3.a) {
                        p3.a = true;
                        p3.c = true;
                        O3 o3 = p3.b;
                        if (o3 != null) {
                            try {
                                o3.l();
                            } catch (Throwable th) {
                                synchronized (p3) {
                                    p3.c = false;
                                    p3.notifyAll();
                                    throw th;
                                }
                            }
                        }
                        synchronized (p3) {
                            p3.c = false;
                            p3.notifyAll();
                        }
                    }
                } finally {
                }
            }
        }
    }

    public final void b() {
        if (!this.g) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.g = true;
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }
        this.h.k();
    }

    public final void c(int i, int i2) {
        int p = AbstractC0407pi.p(i2);
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.c;
        if (p == 0) {
            if (this.a != 1) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + abstractComponentCallbacksC0598x9 + " mFinalState = " + AbstractC0407pi.r(this.a) + " -> " + AbstractC0407pi.r(i) + ". ");
                }
                this.a = i;
                return;
            }
            return;
        }
        if (p == 1) {
            if (this.a == 1) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + abstractComponentCallbacksC0598x9 + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + AbstractC0407pi.q(this.b) + " to ADDING.");
                }
                this.a = 2;
                this.b = 2;
                return;
            }
            return;
        }
        if (p != 2) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "SpecialEffectsController: For fragment " + abstractComponentCallbacksC0598x9 + " mFinalState = " + AbstractC0407pi.r(this.a) + " -> REMOVED. mLifecycleImpact  = " + AbstractC0407pi.q(this.b) + " to REMOVING.");
        }
        this.a = 1;
        this.b = 3;
    }

    public final void d() {
        if (this.b == 2) {
            a aVar = this.h;
            AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = aVar.c;
            View findFocus = abstractComponentCallbacksC0598x9.E.findFocus();
            if (findFocus != null) {
                abstractComponentCallbacksC0598x9.f().k = findFocus;
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + abstractComponentCallbacksC0598x9);
                }
            }
            View x = this.c.x();
            if (x.getParent() == null) {
                aVar.b();
                x.setAlpha(0.0f);
            }
            if (x.getAlpha() == 0.0f && x.getVisibility() == 0) {
                x.setVisibility(4);
            }
            C0573w9 c0573w9 = abstractComponentCallbacksC0598x9.H;
            x.setAlpha(c0573w9 == null ? 1.0f : c0573w9.j);
        }
    }

    public final String toString() {
        return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + AbstractC0407pi.r(this.a) + "} {mLifecycleImpact = " + AbstractC0407pi.q(this.b) + "} {mFragment = " + this.c + "}";
    }
}
