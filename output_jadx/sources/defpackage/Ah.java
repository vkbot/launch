package defpackage;

/* loaded from: classes.dex */
public class Ah extends AbstractC0129f implements InterfaceC0317m6 {
    public final S5 d;

    public Ah(S5 s5, InterfaceC0110e6 interfaceC0110e6) {
        super(interfaceC0110e6, true);
        this.d = s5;
    }

    @Override // defpackage.Hb
    public final boolean C() {
        return true;
    }

    @Override // defpackage.InterfaceC0317m6
    public final InterfaceC0317m6 g() {
        S5 s5 = this.d;
        if (s5 instanceof InterfaceC0317m6) {
            return (InterfaceC0317m6) s5;
        }
        return null;
    }

    @Override // defpackage.Hb
    public void k(Object obj) {
        AbstractC0152fm.L(C6.u(this.d), C6.K(obj), null);
    }

    @Override // defpackage.Hb
    public void l(Object obj) {
        this.d.c(C6.K(obj));
    }
}
