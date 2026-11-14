package defpackage;

import android.widget.FrameLayout;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* loaded from: classes.dex */
public final /* synthetic */ class O2 implements Runnable {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ Object c;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ O2(InterfaceC0089da interfaceC0089da, boolean z) {
        this.c = (Nb) interfaceC0089da;
        this.b = z;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [Nb, da] */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z = this.b;
        Object obj = this.c;
        switch (this.a) {
            case 0:
                ((Nb) obj).h(Boolean.valueOf(z));
                return;
            default:
                TopOverlayAccessibilityService topOverlayAccessibilityService = (TopOverlayAccessibilityService) obj;
                AbstractC0348nb.r(topOverlayAccessibilityService, "this$0");
                if (z) {
                    if (!topOverlayAccessibilityService.n) {
                        topOverlayAccessibilityService.s0();
                        topOverlayAccessibilityService.n0();
                    }
                    topOverlayAccessibilityService.v0();
                    return;
                }
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
                topOverlayAccessibilityService.K();
                topOverlayAccessibilityService.G();
                if (topOverlayAccessibilityService.n) {
                    return;
                }
                topOverlayAccessibilityService.k.removeCallbacks(topOverlayAccessibilityService.w0);
                FrameLayout frameLayout = topOverlayAccessibilityService.m;
                if (frameLayout != null) {
                    try {
                        topOverlayAccessibilityService.v().removeView(frameLayout);
                    } catch (Exception unused) {
                    }
                }
                topOverlayAccessibilityService.m = null;
                topOverlayAccessibilityService.l = null;
                return;
        }
    }

    public /* synthetic */ O2(TopOverlayAccessibilityService topOverlayAccessibilityService, boolean z) {
        this.b = z;
        this.c = topOverlayAccessibilityService;
    }
}
