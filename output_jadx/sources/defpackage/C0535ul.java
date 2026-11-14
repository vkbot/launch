package defpackage;

import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* renamed from: ul, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0535ul extends AbstractC0098dj implements InterfaceC0192ha {
    public int e;
    public final /* synthetic */ TopOverlayAccessibilityService f;
    public final /* synthetic */ boolean g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0535ul(TopOverlayAccessibilityService topOverlayAccessibilityService, boolean z, S5 s5) {
        super(s5);
        this.f = topOverlayAccessibilityService;
        this.g = z;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new C0535ul(this.f, this.g, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        EnumC0291l6 enumC0291l6 = EnumC0291l6.a;
        int i = this.e;
        if (i == 0) {
            AbstractC0171gf.v(obj);
            int i2 = this.g ? 1 : 3;
            this.e = 1;
            obj = TopOverlayAccessibilityService.a(this.f, i2, this);
            if (obj == enumC0291l6) {
                return enumC0291l6;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            AbstractC0171gf.v(obj);
        }
        return obj;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        return ((C0535ul) a((S5) obj2, (InterfaceC0265k6) obj)).b(C0486sm.a);
    }
}
