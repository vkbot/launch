package androidx.lifecycle;

import defpackage.InterfaceC0039bc;
import defpackage.Vb;
import defpackage.Zb;

/* loaded from: classes.dex */
public final class SavedStateHandleController implements Zb {
    public boolean a;

    @Override // defpackage.Zb
    public final void b(InterfaceC0039bc interfaceC0039bc, Vb vb) {
        if (vb == Vb.ON_DESTROY) {
            this.a = false;
            interfaceC0039bc.d().f(this);
        }
    }
}
