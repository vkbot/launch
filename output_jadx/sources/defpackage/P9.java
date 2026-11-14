package defpackage;

import androidx.lifecycle.a;

/* loaded from: classes.dex */
public final class P9 implements Ea, InterfaceC0631yh, InterfaceC0487sn {
    public final C0462rn a;
    public a b = null;
    public Q9 c = null;

    public P9(C0462rn c0462rn) {
        this.a = c0462rn;
    }

    @Override // defpackage.InterfaceC0631yh
    public final C0183h1 b() {
        f();
        return (C0183h1) this.c.c;
    }

    @Override // defpackage.InterfaceC0487sn
    public final C0462rn c() {
        f();
        return this.a;
    }

    @Override // defpackage.InterfaceC0039bc
    public final a d() {
        f();
        return this.b;
    }

    public final void e(Vb vb) {
        this.b.d(vb);
    }

    public final void f() {
        if (this.b == null) {
            this.b = new a(this);
            this.c = new Q9(this);
        }
    }
}
