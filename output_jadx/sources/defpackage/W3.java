package defpackage;

/* loaded from: classes.dex */
public final class W3 implements Runnable {
    public final /* synthetic */ X3 a;
    public final /* synthetic */ Pd b;
    public final /* synthetic */ Ld c;
    public final /* synthetic */ L d;

    public W3(L l, X3 x3, Pd pd, Ld ld) {
        this.d = l;
        this.a = x3;
        this.b = pd;
        this.c = ld;
    }

    @Override // java.lang.Runnable
    public final void run() {
        X3 x3 = this.a;
        if (x3 != null) {
            L l = this.d;
            ((Y3) l.b).z = true;
            x3.b.c(false);
            ((Y3) l.b).z = false;
        }
        Pd pd = this.b;
        if (pd.isEnabled() && pd.hasSubMenu()) {
            this.c.q(pd, null, 4);
        }
    }
}
