package defpackage;

import android.view.WindowManager;
import android.widget.LinearLayout;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* loaded from: classes.dex */
public final /* synthetic */ class Kl implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ TopOverlayAccessibilityService b;
    public final /* synthetic */ LinearLayout c;

    public /* synthetic */ Kl(TopOverlayAccessibilityService topOverlayAccessibilityService, LinearLayout linearLayout, int i) {
        this.a = i;
        this.b = topOverlayAccessibilityService;
        this.c = linearLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                TopOverlayAccessibilityService topOverlayAccessibilityService = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService, "this$0");
                LinearLayout linearLayout = this.c;
                AbstractC0348nb.r(linearLayout, "$container");
                try {
                    WindowManager windowManager = topOverlayAccessibilityService.a;
                    if (windowManager != null) {
                        windowManager.removeView(linearLayout);
                        return;
                    }
                    return;
                } catch (Exception unused) {
                    return;
                }
            default:
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService2, "this$0");
                LinearLayout linearLayout2 = this.c;
                AbstractC0348nb.r(linearLayout2, "$container");
                try {
                    WindowManager windowManager2 = topOverlayAccessibilityService2.a;
                    if (windowManager2 != null) {
                        windowManager2.removeView(linearLayout2);
                    }
                } catch (Exception unused2) {
                }
                topOverlayAccessibilityService2.m();
                return;
        }
    }
}
