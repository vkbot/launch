package defpackage;

/* loaded from: classes.dex */
public final class Q1 extends AbstractViewOnTouchListenerC0523u9 {
    public final /* synthetic */ Z1 j;
    public final /* synthetic */ C0055c2 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q1(C0055c2 c0055c2, C0055c2 c0055c22, Z1 z1) {
        super(c0055c22);
        this.k = c0055c2;
        this.j = z1;
    }

    @Override // defpackage.AbstractViewOnTouchListenerC0523u9
    public final InterfaceC0200hi b() {
        return this.j;
    }

    @Override // defpackage.AbstractViewOnTouchListenerC0523u9
    public final boolean c() {
        C0055c2 c0055c2 = this.k;
        if (c0055c2.getInternalPopup().a()) {
            return true;
        }
        c0055c2.f.f(T1.b(c0055c2), T1.a(c0055c2));
        return true;
    }
}
