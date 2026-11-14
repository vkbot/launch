package defpackage;

import android.content.ContextWrapper;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.omoda.launcher.MainActivity;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* renamed from: bd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0040bd extends Nb implements S9 {
    public final /* synthetic */ int b;
    public final /* synthetic */ ContextWrapper c;
    public final /* synthetic */ Object d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0040bd(ContextWrapper contextWrapper, Object obj, int i) {
        super(0);
        this.b = i;
        this.c = contextWrapper;
        this.d = obj;
    }

    @Override // defpackage.S9
    public final Object d() {
        C0486sm c0486sm = C0486sm.a;
        Object obj = this.d;
        ContextWrapper contextWrapper = this.c;
        switch (this.b) {
            case 0:
                MainActivity mainActivity = (MainActivity) contextWrapper;
                C0491t2 c0491t2 = mainActivity.v;
                if (c0491t2 == null) {
                    AbstractC0348nb.j0("binding");
                    throw null;
                }
                ((FrameLayout) c0491t2.a).removeAllViews();
                C0491t2 c0491t22 = mainActivity.v;
                if (c0491t22 == null) {
                    AbstractC0348nb.j0("binding");
                    throw null;
                }
                ((FrameLayout) c0491t22.a).addView(((Q7) obj).a);
                return c0486sm;
            default:
                TopOverlayAccessibilityService topOverlayAccessibilityService = (TopOverlayAccessibilityService) contextWrapper;
                try {
                    WindowManager windowManager = topOverlayAccessibilityService.a;
                    if (windowManager != null) {
                        windowManager.removeView((LinearLayout) obj);
                    }
                } catch (Exception unused) {
                }
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
                topOverlayAccessibilityService.F();
                topOverlayAccessibilityService.E();
                return c0486sm;
        }
    }
}
