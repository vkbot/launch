package defpackage;

/* renamed from: nl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0358nl extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ B4 e;
    public final /* synthetic */ int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0358nl(B4 b4, int i, S5 s5) {
        super(s5);
        this.e = b4;
        this.f = i;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new C0358nl(this.e, this.f, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        AbstractC0171gf.v(obj);
        this.e.h(new Integer(this.f));
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        C0358nl c0358nl = (C0358nl) a((S5) obj2, (InterfaceC0265k6) obj);
        C0486sm c0486sm = C0486sm.a;
        c0358nl.b(c0486sm);
        return c0486sm;
    }
}
