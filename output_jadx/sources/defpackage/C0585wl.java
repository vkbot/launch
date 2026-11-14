package defpackage;

import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* renamed from: wl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0585wl extends T5 {
    public TopOverlayAccessibilityService d;
    public /* synthetic */ Object e;
    public final /* synthetic */ TopOverlayAccessibilityService f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0585wl(TopOverlayAccessibilityService topOverlayAccessibilityService, T5 t5) {
        super(t5);
        this.f = topOverlayAccessibilityService;
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return TopOverlayAccessibilityService.b(this.f, this);
    }
}
