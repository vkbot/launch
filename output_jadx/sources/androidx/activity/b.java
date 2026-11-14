package androidx.activity;

import android.os.Build;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import defpackage.AbstractC0348nb;
import defpackage.D9;
import defpackage.InterfaceC0039bc;
import defpackage.J9;
import defpackage.Je;
import defpackage.Ke;
import defpackage.Le;
import defpackage.Ne;
import defpackage.Pe;
import defpackage.T2;
import defpackage.Wb;
import java.util.Iterator;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class b {
    public final Runnable a;
    public final T2 b = new T2();
    public D9 c;
    public final OnBackInvokedCallback d;
    public OnBackInvokedDispatcher e;
    public boolean f;
    public boolean g;

    public b(Runnable runnable) {
        this.a = runnable;
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            this.d = i >= 34 ? Ne.a.a(new Je(this, 0), new Je(this, 1), new Ke(this, 0), new Ke(this, 1)) : Le.a.a(new Ke(this, 2));
        }
    }

    public final void a(InterfaceC0039bc interfaceC0039bc, D9 d9) {
        AbstractC0348nb.r(d9, "onBackPressedCallback");
        androidx.lifecycle.a d = interfaceC0039bc.d();
        if (d.c == Wb.a) {
            return;
        }
        d9.b.add(new OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(this, d, d9));
        d();
        d9.c = new Pe(0, this, b.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", 0);
    }

    public final void b() {
        Object obj;
        T2 t2 = this.b;
        ListIterator listIterator = t2.listIterator(t2.a());
        while (true) {
            if (!listIterator.hasPrevious()) {
                obj = null;
                break;
            } else {
                obj = listIterator.previous();
                if (((D9) obj).a) {
                    break;
                }
            }
        }
        D9 d9 = (D9) obj;
        this.c = null;
        if (d9 == null) {
            this.a.run();
            return;
        }
        J9 j9 = d9.d;
        j9.x(true);
        if (j9.h.a) {
            j9.J();
        } else {
            j9.g.b();
        }
    }

    public final void c(boolean z) {
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.e;
        OnBackInvokedCallback onBackInvokedCallback = this.d;
        if (onBackInvokedDispatcher == null || onBackInvokedCallback == null) {
            return;
        }
        Le le = Le.a;
        if (z && !this.f) {
            le.b(onBackInvokedDispatcher, 0, onBackInvokedCallback);
            this.f = true;
        } else {
            if (z || !this.f) {
                return;
            }
            le.c(onBackInvokedDispatcher, onBackInvokedCallback);
            this.f = false;
        }
    }

    public final void d() {
        boolean z = this.g;
        boolean z2 = false;
        T2 t2 = this.b;
        if (t2 == null || !t2.isEmpty()) {
            Iterator it = t2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((D9) it.next()).a) {
                    z2 = true;
                    break;
                }
            }
        }
        this.g = z2;
        if (z2 == z || Build.VERSION.SDK_INT < 33) {
            return;
        }
        c(z2);
    }
}
