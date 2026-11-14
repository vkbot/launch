package defpackage;

/* renamed from: kl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0280kl extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ C0203hl e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0280kl(C0203hl c0203hl, S5 s5) {
        super(s5);
        this.e = c0203hl;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new C0280kl(this.e, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        AbstractC0171gf.v(obj);
        Boolean bool = Boolean.FALSE;
        Ki ki = Ki.a;
        this.e.e(bool, Ki.e().h);
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        C0280kl c0280kl = (C0280kl) a((S5) obj2, (InterfaceC0265k6) obj);
        C0486sm c0486sm = C0486sm.a;
        c0280kl.b(c0486sm);
        return c0486sm;
    }
}
