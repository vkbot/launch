package androidx.activity;

import defpackage.AbstractC0348nb;
import defpackage.D9;
import defpackage.InterfaceC0039bc;
import defpackage.M3;
import defpackage.Oe;
import defpackage.Pe;
import defpackage.Vb;
import defpackage.Zb;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class OnBackPressedDispatcher$LifecycleOnBackPressedCancellable implements Zb, M3 {
    public final androidx.lifecycle.a a;
    public final D9 b;
    public Oe c;
    public final /* synthetic */ b d;

    public OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(b bVar, androidx.lifecycle.a aVar, D9 d9) {
        AbstractC0348nb.r(d9, "onBackPressedCallback");
        this.d = bVar;
        this.a = aVar;
        this.b = d9;
        aVar.a(this);
    }

    @Override // defpackage.Zb
    public final void b(InterfaceC0039bc interfaceC0039bc, Vb vb) {
        if (vb != Vb.ON_START) {
            if (vb != Vb.ON_STOP) {
                if (vb == Vb.ON_DESTROY) {
                    cancel();
                    return;
                }
                return;
            } else {
                Oe oe = this.c;
                if (oe != null) {
                    oe.cancel();
                    return;
                }
                return;
            }
        }
        b bVar = this.d;
        bVar.getClass();
        D9 d9 = this.b;
        AbstractC0348nb.r(d9, "onBackPressedCallback");
        bVar.b.c(d9);
        Oe oe2 = new Oe(bVar, d9);
        d9.b.add(oe2);
        bVar.d();
        d9.c = new Pe(0, bVar, b.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", 1);
        this.c = oe2;
    }

    @Override // defpackage.M3
    public final void cancel() {
        this.a.f(this);
        this.b.b.remove(this);
        Oe oe = this.c;
        if (oe != null) {
            oe.cancel();
        }
        this.c = null;
    }
}
