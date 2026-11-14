package defpackage;

import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* loaded from: classes.dex */
public final /* synthetic */ class Ik implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ TopOverlayAccessibilityService b;
    public final /* synthetic */ LinearLayout c;

    public /* synthetic */ Ik(TopOverlayAccessibilityService topOverlayAccessibilityService, LinearLayout linearLayout, int i) {
        this.a = i;
        this.b = topOverlayAccessibilityService;
        this.c = linearLayout;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        LinearLayout linearLayout = this.c;
        TopOverlayAccessibilityService topOverlayAccessibilityService = this.b;
        switch (this.a) {
            case 0:
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
                AbstractC0348nb.r(topOverlayAccessibilityService, "this$0");
                try {
                    WindowManager windowManager = topOverlayAccessibilityService.a;
                    if (windowManager != null) {
                        windowManager.removeView(linearLayout);
                    }
                } catch (Exception unused) {
                }
                topOverlayAccessibilityService.m();
                return;
            default:
                TopOverlayAccessibilityService topOverlayAccessibilityService3 = TopOverlayAccessibilityService.n1;
                AbstractC0348nb.r(topOverlayAccessibilityService, "this$0");
                try {
                    WindowManager windowManager2 = topOverlayAccessibilityService.a;
                    if (windowManager2 != null) {
                        windowManager2.removeView(linearLayout);
                        return;
                    }
                    return;
                } catch (Exception unused2) {
                    return;
                }
        }
    }
}
