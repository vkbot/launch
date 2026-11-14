package defpackage;

import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* renamed from: yl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0635yl extends AbstractC0098dj implements InterfaceC0192ha {
    public int e;
    public final /* synthetic */ TopOverlayAccessibilityService f;
    public final /* synthetic */ Cif g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0635yl(TopOverlayAccessibilityService topOverlayAccessibilityService, Cif cif, S5 s5) {
        super(s5);
        this.f = topOverlayAccessibilityService;
        this.g = cif;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new C0635yl(this.f, this.g, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        EnumC0291l6 enumC0291l6 = EnumC0291l6.a;
        int i = this.e;
        C0486sm c0486sm = C0486sm.a;
        if (i == 0) {
            AbstractC0171gf.v(obj);
            TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
            AbstractC0326mf y = this.f.y();
            this.e = 1;
            y.getClass();
            Object l0 = AbstractC0348nb.l0(AbstractC0546v7.b, new C0248jf(y, this.g, null), this);
            if (l0 != enumC0291l6) {
                l0 = c0486sm;
            }
            if (l0 == enumC0291l6) {
                return enumC0291l6;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            AbstractC0171gf.v(obj);
        }
        return c0486sm;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        return ((C0635yl) a((S5) obj2, (InterfaceC0265k6) obj)).b(C0486sm.a);
    }
}
