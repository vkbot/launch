package androidx.lifecycle;

import defpackage.InterfaceC0039bc;
import defpackage.R6;
import defpackage.S6;
import defpackage.Vb;
import defpackage.Zb;

/* loaded from: classes.dex */
public final class DefaultLifecycleObserverAdapter implements Zb {
    public final R6 a;
    public final Zb b;

    public DefaultLifecycleObserverAdapter(R6 r6, Zb zb) {
        this.a = r6;
        this.b = zb;
    }

    @Override // defpackage.Zb
    public final void b(InterfaceC0039bc interfaceC0039bc, Vb vb) {
        int i = S6.a[vb.ordinal()];
        R6 r6 = this.a;
        if (i == 3) {
            r6.a();
        } else if (i == 7) {
            throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        Zb zb = this.b;
        if (zb != null) {
            zb.b(interfaceC0039bc, vb);
        }
    }
}
