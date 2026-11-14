package defpackage;

import android.text.format.Formatter;
import android.widget.TextView;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* loaded from: classes.dex */
public final class Ll extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ TextView e;
    public final /* synthetic */ R2 f;
    public final /* synthetic */ M2 g;
    public final /* synthetic */ TextView h;
    public final /* synthetic */ TextView i;
    public final /* synthetic */ TextView j;
    public final /* synthetic */ TextView k;
    public final /* synthetic */ TopOverlayAccessibilityService l;
    public final /* synthetic */ TopOverlayAccessibilityService m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ll(TextView textView, R2 r2, M2 m2, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TopOverlayAccessibilityService topOverlayAccessibilityService, TopOverlayAccessibilityService topOverlayAccessibilityService2, S5 s5) {
        super(s5);
        this.e = textView;
        this.f = r2;
        this.g = m2;
        this.h = textView2;
        this.i = textView3;
        this.j = textView4;
        this.k = textView5;
        this.l = topOverlayAccessibilityService;
        this.m = topOverlayAccessibilityService2;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new Ll(this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        AbstractC0171gf.v(obj);
        R2 r2 = this.f;
        String str = r2.a;
        M2 m2 = this.g;
        Long l = m2 != null ? new Long(m2.a + m2.b + m2.c) : null;
        TopOverlayAccessibilityService topOverlayAccessibilityService = this.l;
        String formatShortFileSize = l != null ? Formatter.formatShortFileSize(topOverlayAccessibilityService, l.longValue()) : null;
        if (formatShortFileSize == null) {
            formatShortFileSize = "—";
        }
        TopOverlayAccessibilityService topOverlayAccessibilityService2 = this.m;
        this.e.setText(TopOverlayAccessibilityService.e0(topOverlayAccessibilityService2, str, formatShortFileSize));
        String str2 = r2.b;
        Long l2 = m2 != null ? new Long(m2.c) : null;
        String formatShortFileSize2 = l2 != null ? Formatter.formatShortFileSize(topOverlayAccessibilityService, l2.longValue()) : null;
        if (formatShortFileSize2 == null) {
            formatShortFileSize2 = "—";
        }
        this.h.setText(TopOverlayAccessibilityService.e0(topOverlayAccessibilityService2, str2, formatShortFileSize2));
        String str3 = r2.c;
        Long l3 = m2 != null ? new Long(m2.b) : null;
        String formatShortFileSize3 = l3 != null ? Formatter.formatShortFileSize(topOverlayAccessibilityService, l3.longValue()) : null;
        this.i.setText(TopOverlayAccessibilityService.e0(topOverlayAccessibilityService2, str3, formatShortFileSize3 != null ? formatShortFileSize3 : "—"));
        TopOverlayAccessibilityService.h0(this.j, (m2 != null ? m2.c : 0L) > 0);
        TopOverlayAccessibilityService.h0(this.k, (m2 != null ? m2.b : 0L) > 0);
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        Ll ll = (Ll) a((S5) obj2, (InterfaceC0265k6) obj);
        C0486sm c0486sm = C0486sm.a;
        ll.b(c0486sm);
        return c0486sm;
    }
}
