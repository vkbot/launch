package androidx.lifecycle;

import android.os.Looper;
import android.util.Log;
import android.view.View;
import defpackage.C0406ph;
import defpackage.C0432qh;
import defpackage.C0481sh;
import defpackage.DialogInterfaceOnCancelListenerC0396p7;
import defpackage.Ec;
import defpackage.InterfaceC0039bc;
import defpackage.L;
import defpackage.S2;
import java.util.Map;

/* loaded from: classes.dex */
public class b {
    public static final Object j = new Object();
    public final Object a;
    public final C0481sh b = new C0481sh();
    public int c = 0;
    public boolean d;
    public volatile Object e;
    public volatile Object f;
    public int g;
    public boolean h;
    public boolean i;

    public b() {
        Object obj = j;
        this.f = obj;
        this.e = obj;
        this.g = -1;
    }

    public static void a(String str) {
        ((S2) S2.H().a).getClass();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    public final void b(Ec ec) {
        if (ec.b) {
            if (!ec.e()) {
                ec.c(false);
                return;
            }
            int i = ec.c;
            int i2 = this.g;
            if (i >= i2) {
                return;
            }
            ec.c = i2;
            L l = ec.a;
            Object obj = this.e;
            l.getClass();
            if (((InterfaceC0039bc) obj) != null) {
                DialogInterfaceOnCancelListenerC0396p7 dialogInterfaceOnCancelListenerC0396p7 = (DialogInterfaceOnCancelListenerC0396p7) l.b;
                if (dialogInterfaceOnCancelListenerC0396p7.W) {
                    View x = dialogInterfaceOnCancelListenerC0396p7.x();
                    if (x.getParent() != null) {
                        throw new IllegalStateException("DialogFragment can not be attached to a container view");
                    }
                    if (dialogInterfaceOnCancelListenerC0396p7.a0 != null) {
                        if (Log.isLoggable("FragmentManager", 3)) {
                            Log.d("FragmentManager", "DialogFragment " + l + " setting the content view on " + dialogInterfaceOnCancelListenerC0396p7.a0);
                        }
                        dialogInterfaceOnCancelListenerC0396p7.a0.setContentView(x);
                    }
                }
            }
        }
    }

    public final void c(Ec ec) {
        if (this.h) {
            this.i = true;
            return;
        }
        this.h = true;
        do {
            this.i = false;
            if (ec != null) {
                b(ec);
                ec = null;
            } else {
                C0481sh c0481sh = this.b;
                c0481sh.getClass();
                C0432qh c0432qh = new C0432qh(c0481sh);
                c0481sh.c.put(c0432qh, Boolean.FALSE);
                while (c0432qh.hasNext()) {
                    b((Ec) ((Map.Entry) c0432qh.next()).getValue());
                    if (this.i) {
                        break;
                    }
                }
            }
        } while (this.i);
        this.h = false;
    }

    public final void d(L l) {
        Object obj;
        a("observeForever");
        Ec ec = new Ec(this, l);
        C0481sh c0481sh = this.b;
        C0406ph a = c0481sh.a(l);
        if (a != null) {
            obj = a.b;
        } else {
            C0406ph c0406ph = new C0406ph(l, ec);
            c0481sh.d++;
            C0406ph c0406ph2 = c0481sh.b;
            if (c0406ph2 == null) {
                c0481sh.a = c0406ph;
                c0481sh.b = c0406ph;
            } else {
                c0406ph2.c = c0406ph;
                c0406ph.d = c0406ph2;
                c0481sh.b = c0406ph;
            }
            obj = null;
        }
        Ec ec2 = (Ec) obj;
        if (ec2 instanceof LiveData$LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (ec2 != null) {
            return;
        }
        ec.c(true);
    }

    public final void e(Object obj) {
        a("setValue");
        this.g++;
        this.e = obj;
        c(null);
    }
}
