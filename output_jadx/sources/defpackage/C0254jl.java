package defpackage;

import android.widget.TextView;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.io.File;

/* renamed from: jl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0254jl extends AbstractC0098dj implements InterfaceC0192ha {
    public File e;
    public int f;
    public final /* synthetic */ TopOverlayAccessibilityService g;
    public final /* synthetic */ S0 h;
    public final /* synthetic */ TextView i;
    public final /* synthetic */ TextView j;
    public final /* synthetic */ TextView k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0254jl(TopOverlayAccessibilityService topOverlayAccessibilityService, S0 s0, TextView textView, TextView textView2, TextView textView3, S5 s5) {
        super(s5);
        Ki ki = Ki.a;
        this.g = topOverlayAccessibilityService;
        this.h = s0;
        this.i = textView;
        this.j = textView2;
        this.k = textView3;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        TextView textView = this.j;
        TextView textView2 = this.k;
        TextView textView3 = this.i;
        Ki ki = Ki.a;
        return new C0254jl(this.g, this.h, textView3, textView, textView2, s5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01b3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:94:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v19, types: [android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r3v2, types: [android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v2, types: [android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v9 */
    @Override // defpackage.AbstractC0236j3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(java.lang.Object r26) {
        /*
            Method dump skipped, instructions count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0254jl.b(java.lang.Object):java.lang.Object");
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        return ((C0254jl) a((S5) obj2, (InterfaceC0265k6) obj)).b(C0486sm.a);
    }
}
