package androidx.lifecycle;

import defpackage.C0506th;
import defpackage.InterfaceC0039bc;
import defpackage.Vb;
import defpackage.Zb;

/* loaded from: classes.dex */
public final class SavedStateHandleAttacher implements Zb {
    public final C0506th a;

    public SavedStateHandleAttacher(C0506th c0506th) {
        this.a = c0506th;
    }

    @Override // defpackage.Zb
    public final void b(InterfaceC0039bc interfaceC0039bc, Vb vb) {
        if (vb != Vb.ON_CREATE) {
            throw new IllegalStateException(("Next event must be ON_CREATE, it was " + vb).toString());
        }
        interfaceC0039bc.d().f(this);
        C0506th c0506th = this.a;
        if (c0506th.b) {
            return;
        }
        c0506th.c = c0506th.a.c("androidx.lifecycle.internal.SavedStateHandlesProvider");
        c0506th.b = true;
    }
}
