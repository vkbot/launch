package defpackage;

import android.content.Context;

/* renamed from: ce, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0067ce extends Ac implements Od {
    public L A;

    @Override // defpackage.Od
    public final void o(Ld ld, Pd pd) {
        L l = this.A;
        if (l != null) {
            l.o(ld, pd);
        }
    }

    @Override // defpackage.Ac
    public final K7 p(Context context, boolean z) {
        C0041be c0041be = new C0041be(context, z);
        c0041be.setHoverListener(this);
        return c0041be;
    }

    @Override // defpackage.Od
    public final void q(Ld ld, Pd pd) {
        L l = this.A;
        if (l != null) {
            l.q(ld, pd);
        }
    }
}
