package defpackage;

import java.util.Set;

/* renamed from: yj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0633yj extends AbstractC0098dj implements InterfaceC0192ha {
    public int e;
    public final /* synthetic */ C0658zj f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0633yj(C0658zj c0658zj, S5 s5) {
        super(s5);
        this.f = c0658zj;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new C0633yj(this.f, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        EnumC0291l6 enumC0291l6 = EnumC0291l6.a;
        int i = this.e;
        if (i == 0) {
            AbstractC0171gf.v(obj);
            this.e = 1;
            if (AbstractC0152fm.j(1000L, this) == enumC0291l6) {
                return enumC0291l6;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            AbstractC0171gf.v(obj);
        }
        Set set = C0658zj.s;
        this.f.j();
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        return ((C0633yj) a((S5) obj2, (InterfaceC0265k6) obj)).b(C0486sm.a);
    }
}
