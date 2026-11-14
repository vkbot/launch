package defpackage;

import android.util.Log;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* renamed from: ql, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0436ql extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ TopOverlayAccessibilityService e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0436ql(TopOverlayAccessibilityService topOverlayAccessibilityService, S5 s5) {
        super(s5);
        this.e = topOverlayAccessibilityService;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new C0436ql(this.e, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        AbstractC0171gf.v(obj);
        try {
            ((E7) this.e.v.a()).b();
        } catch (Exception e) {
            Log.e("TopOverlayA11y", "Sport toggle failed", e);
        }
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        C0436ql c0436ql = (C0436ql) a((S5) obj2, (InterfaceC0265k6) obj);
        C0486sm c0486sm = C0486sm.a;
        c0436ql.b(c0486sm);
        return c0486sm;
    }
}
