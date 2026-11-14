package defpackage;

import android.os.Bundle;
import androidx.lifecycle.a;
import androidx.savedstate.Recreator;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public final class Q9 {
    public boolean a;
    public final Object b;
    public final Object c;

    public Q9(InterfaceC0631yh interfaceC0631yh) {
        this.b = interfaceC0631yh;
        this.c = new C0183h1();
    }

    public void a() {
        InterfaceC0631yh interfaceC0631yh = (InterfaceC0631yh) this.b;
        a d = interfaceC0631yh.d();
        if (d.c != Wb.b) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        d.a(new Recreator(interfaceC0631yh));
        final C0183h1 c0183h1 = (C0183h1) this.c;
        c0183h1.getClass();
        if (c0183h1.c) {
            throw new IllegalStateException("SavedStateRegistry was already attached.");
        }
        d.a(new Zb() { // from class: vh
            @Override // defpackage.Zb
            public final void b(InterfaceC0039bc interfaceC0039bc, Vb vb) {
                C0183h1 c0183h12 = C0183h1.this;
                AbstractC0348nb.r(c0183h12, "this$0");
                if (vb == Vb.ON_START) {
                    c0183h12.e = true;
                } else if (vb == Vb.ON_STOP) {
                    c0183h12.e = false;
                }
            }
        });
        c0183h1.c = true;
        this.a = true;
    }

    public void b(Bundle bundle) {
        if (!this.a) {
            a();
        }
        a d = ((InterfaceC0631yh) this.b).d();
        if (d.c.compareTo(Wb.d) >= 0) {
            throw new IllegalStateException(("performRestore cannot be called when owner is " + d.c).toString());
        }
        C0183h1 c0183h1 = (C0183h1) this.c;
        if (!c0183h1.c) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).");
        }
        if (c0183h1.d) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        c0183h1.a = bundle != null ? bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key") : null;
        c0183h1.d = true;
    }

    public void c(Bundle bundle) {
        AbstractC0348nb.r(bundle, "outBundle");
        C0183h1 c0183h1 = (C0183h1) this.c;
        c0183h1.getClass();
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = (Bundle) c0183h1.a;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        C0481sh c0481sh = (C0481sh) c0183h1.f;
        c0481sh.getClass();
        C0432qh c0432qh = new C0432qh(c0481sh);
        c0481sh.c.put(c0432qh, Boolean.FALSE);
        while (c0432qh.hasNext()) {
            Map.Entry entry = (Map.Entry) c0432qh.next();
            bundle2.putBundle((String) entry.getKey(), ((InterfaceC0606xh) entry.getValue()).a());
        }
        if (bundle2.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    public Q9(ExecutorC0238j5 executorC0238j5, C0084d5 c0084d5) {
        this.b = new Object();
        this.c = new ArrayList();
    }
}
