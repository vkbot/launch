package defpackage;

import android.view.View;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* renamed from: dh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0096dh implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ RunnableC0096dh(int i, int i2, Object obj) {
        this.a = i2;
        this.c = obj;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (this.a) {
            case 0:
                ((AbstractC0145ff) obj).z(i);
                return;
            case 1:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) obj;
                View view = (View) sideSheetBehavior.p.get();
                if (view != null) {
                    sideSheetBehavior.t(view, i, false);
                    return;
                }
                return;
            default:
                TopOverlayAccessibilityService topOverlayAccessibilityService = (TopOverlayAccessibilityService) obj;
                AbstractC0348nb.r(topOverlayAccessibilityService, "$svc");
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
                topOverlayAccessibilityService.c(i);
                return;
        }
    }
}
