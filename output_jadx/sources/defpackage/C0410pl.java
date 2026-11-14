package defpackage;

import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* renamed from: pl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0410pl extends T5 {
    public TopOverlayAccessibilityService d;
    public String e;
    public int f;
    public int g;
    public /* synthetic */ Object h;
    public final /* synthetic */ TopOverlayAccessibilityService i;
    public int j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0410pl(TopOverlayAccessibilityService topOverlayAccessibilityService, T5 t5) {
        super(t5);
        this.i = topOverlayAccessibilityService;
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        this.h = obj;
        this.j |= Integer.MIN_VALUE;
        return TopOverlayAccessibilityService.a(this.i, 0, this);
    }
}
