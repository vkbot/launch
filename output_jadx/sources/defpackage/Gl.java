package defpackage;

import android.view.WindowManager;
import android.widget.LinearLayout;
import com.omoda.launcher.data.AppInfo;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* loaded from: classes.dex */
public final class Gl extends Nb implements InterfaceC0089da {
    public final /* synthetic */ TopOverlayAccessibilityService b;
    public final /* synthetic */ LinearLayout c;
    public final /* synthetic */ AppInfo d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Gl(TopOverlayAccessibilityService topOverlayAccessibilityService, LinearLayout linearLayout, AppInfo appInfo) {
        super(1);
        this.b = topOverlayAccessibilityService;
        this.c = linearLayout;
        this.d = appInfo;
    }

    @Override // defpackage.InterfaceC0089da
    public final Object h(Object obj) {
        ((Boolean) obj).getClass();
        LinearLayout linearLayout = this.c;
        TopOverlayAccessibilityService topOverlayAccessibilityService = this.b;
        TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
        try {
            WindowManager windowManager = topOverlayAccessibilityService.a;
            if (windowManager != null) {
                windowManager.removeView(linearLayout);
            }
        } catch (Exception unused) {
        }
        topOverlayAccessibilityService.b0(this.d, true);
        return C0486sm.a;
    }
}
