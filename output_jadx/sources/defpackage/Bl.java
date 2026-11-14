package defpackage;

import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* loaded from: classes.dex */
public final class Bl extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ TopOverlayAccessibilityService e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Bl(TopOverlayAccessibilityService topOverlayAccessibilityService, S5 s5) {
        super(s5);
        this.e = topOverlayAccessibilityService;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new Bl(this.e, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        AbstractC0171gf.v(obj);
        Sb.a.getClass();
        Sb.b(false);
        TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
        this.e.a0();
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        Bl bl = (Bl) a((S5) obj2, (InterfaceC0265k6) obj);
        C0486sm c0486sm = C0486sm.a;
        bl.b(c0486sm);
        return c0486sm;
    }
}
