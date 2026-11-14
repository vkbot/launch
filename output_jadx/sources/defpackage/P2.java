package defpackage;

import android.content.pm.IPackageDataObserver;

/* loaded from: classes.dex */
public final class P2 extends IPackageDataObserver.Stub {
    public final /* synthetic */ Nb a;

    /* JADX WARN: Multi-variable type inference failed */
    public P2(InterfaceC0089da interfaceC0089da) {
        this.a = (Nb) interfaceC0089da;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [Nb, da] */
    @Override // android.content.pm.IPackageDataObserver
    public final void onRemoveCompleted(String str, boolean z) {
        Q2.a.post(new O2((InterfaceC0089da) this.a, z));
    }
}
