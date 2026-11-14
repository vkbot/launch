package defpackage;

import android.widget.TextView;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* renamed from: al, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0022al extends AbstractC0098dj implements InterfaceC0192ha {
    public int e;
    public final /* synthetic */ TextView f;
    public final /* synthetic */ CharSequence g;
    public final /* synthetic */ TopOverlayAccessibilityService h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0022al(TextView textView, CharSequence charSequence, TopOverlayAccessibilityService topOverlayAccessibilityService, S5 s5) {
        super(s5);
        this.f = textView;
        this.g = charSequence;
        this.h = topOverlayAccessibilityService;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new C0022al(this.f, this.g, this.h, s5);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00f4 A[RETURN] */
    @Override // defpackage.AbstractC0236j3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0022al.b(java.lang.Object):java.lang.Object");
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        return ((C0022al) a((S5) obj2, (InterfaceC0265k6) obj)).b(C0486sm.a);
    }
}
