package defpackage;

import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* loaded from: classes.dex */
public final class Al extends AbstractC0098dj implements InterfaceC0192ha {
    public int e;
    public final /* synthetic */ TopOverlayAccessibilityService f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Al(TopOverlayAccessibilityService topOverlayAccessibilityService, S5 s5) {
        super(s5);
        this.f = topOverlayAccessibilityService;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new Al(this.f, s5);
    }

    /* JADX WARN: Type inference failed for: r6v6, types: [Nb, S9] */
    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        Xk xk;
        EnumC0291l6 enumC0291l6 = EnumC0291l6.a;
        int i = this.e;
        TopOverlayAccessibilityService topOverlayAccessibilityService = this.f;
        if (i == 0) {
            AbstractC0171gf.v(obj);
            TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
            AbstractC0326mf y = topOverlayAccessibilityService.y();
            this.e = 1;
            y.getClass();
            obj = AbstractC0348nb.l0(AbstractC0546v7.b, new C0300lf(y, null), this);
            if (obj == enumC0291l6) {
                return enumC0291l6;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            AbstractC0171gf.v(obj);
        }
        if (((Boolean) obj).booleanValue() && (xk = topOverlayAccessibilityService.b1) != null) {
            Xk xk2 = ((Boolean) xk.c.d()).booleanValue() ? xk : null;
            if (xk2 != null) {
                topOverlayAccessibilityService.V(xk2, false);
            }
        }
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        return ((Al) a((S5) obj2, (InterfaceC0265k6) obj)).b(C0486sm.a);
    }
}
