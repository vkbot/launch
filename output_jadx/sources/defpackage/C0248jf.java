package defpackage;

/* renamed from: jf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0248jf extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ AbstractC0326mf e;
    public final /* synthetic */ Cif f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0248jf(AbstractC0326mf abstractC0326mf, Cif cif, S5 s5) {
        super(s5);
        this.e = abstractC0326mf;
        this.f = cif;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new C0248jf(this.e, this.f, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        AbstractC0171gf.v(obj);
        this.e.e(this.f);
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        C0248jf c0248jf = (C0248jf) a((S5) obj2, (InterfaceC0265k6) obj);
        C0486sm c0486sm = C0486sm.a;
        c0248jf.b(c0486sm);
        return c0486sm;
    }
}
