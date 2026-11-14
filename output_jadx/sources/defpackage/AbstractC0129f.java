package defpackage;

/* renamed from: f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0129f extends Hb implements S5, InterfaceC0265k6 {
    public final InterfaceC0110e6 c;

    public AbstractC0129f(InterfaceC0110e6 interfaceC0110e6, boolean z) {
        super(z);
        B((InterfaceC0625yb) interfaceC0110e6.b(T7.f));
        this.c = interfaceC0110e6.f(this);
    }

    @Override // defpackage.Hb
    public final void A(C0058c5 c0058c5) {
        AbstractC0152fm.q(this.c, c0058c5);
    }

    @Override // defpackage.Hb
    public final void G(Object obj) {
        if (obj instanceof C0006a5) {
            C0006a5 c0006a5 = (C0006a5) obj;
            Throwable th = c0006a5.a;
            c0006a5.getClass();
            C0006a5.b.get(c0006a5);
        }
    }

    @Override // defpackage.S5
    public final void c(Object obj) {
        Throwable a = AbstractC0276kh.a(obj);
        if (a != null) {
            obj = new C0006a5(a, false);
        }
        Object D = D(obj);
        if (D == C6.k) {
            return;
        }
        l(D);
    }

    @Override // defpackage.InterfaceC0265k6
    public final InterfaceC0110e6 h() {
        return this.c;
    }

    @Override // defpackage.S5
    public final InterfaceC0110e6 i() {
        return this.c;
    }

    @Override // defpackage.Hb
    public final String p() {
        return getClass().getSimpleName().concat(" was cancelled");
    }
}
