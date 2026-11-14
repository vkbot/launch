package defpackage;

import android.os.Handler;
import android.view.View;
import android.view.Window;
import androidx.lifecycle.a;

/* renamed from: y9, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0623y9 extends AbstractC0348nb implements InterfaceC0487sn, InterfaceC0039bc, M9 {
    public final AbstractActivityC0028b1 r;
    public final AbstractActivityC0028b1 s;
    public final Handler t;
    public final J9 u;
    public final /* synthetic */ AbstractActivityC0028b1 v;

    public C0623y9(AbstractActivityC0028b1 abstractActivityC0028b1) {
        this.v = abstractActivityC0028b1;
        Handler handler = new Handler();
        this.u = new J9();
        this.r = abstractActivityC0028b1;
        this.s = abstractActivityC0028b1;
        this.t = handler;
    }

    @Override // defpackage.AbstractC0348nb
    public final View R(int i) {
        return this.v.findViewById(i);
    }

    @Override // defpackage.AbstractC0348nb
    public final boolean S() {
        Window window = this.v.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }

    @Override // defpackage.M9
    public final void a() {
    }

    @Override // defpackage.InterfaceC0487sn
    public final C0462rn c() {
        return this.v.c();
    }

    @Override // defpackage.InterfaceC0039bc
    public final a d() {
        return this.v.q;
    }
}
