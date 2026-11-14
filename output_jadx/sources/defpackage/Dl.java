package defpackage;

import android.widget.TextView;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* loaded from: classes.dex */
public final class Dl extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ Q0 e;
    public final /* synthetic */ TopOverlayAccessibilityService f;
    public final /* synthetic */ TextView g;
    public final /* synthetic */ TextView h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Dl(Q0 q0, TopOverlayAccessibilityService topOverlayAccessibilityService, TextView textView, TextView textView2, S5 s5) {
        super(s5);
        this.e = q0;
        this.f = topOverlayAccessibilityService;
        this.g = textView;
        this.h = textView2;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new Dl(this.e, this.f, this.g, this.h, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        AbstractC0171gf.v(obj);
        if (this.e.a) {
            Sb.a.getClass();
            Sb.b(true);
            TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
            this.f.D();
        } else {
            TextView textView = this.g;
            textView.setEnabled(true);
            Ki ki = Ki.a;
            textView.setText(Ki.a().n);
            C0415q0 a = Ki.a();
            TextView textView2 = this.h;
            textView2.setText(a.o);
            textView2.setVisibility(0);
        }
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        Dl dl = (Dl) a((S5) obj2, (InterfaceC0265k6) obj);
        C0486sm c0486sm = C0486sm.a;
        dl.b(c0486sm);
        return c0486sm;
    }
}
