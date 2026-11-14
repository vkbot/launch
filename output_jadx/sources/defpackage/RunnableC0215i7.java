package defpackage;

import android.view.View;
import android.widget.FrameLayout;
import com.omoda.launcher.R;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import com.omoda.launcher.ui.PresetGridLayout;
import java.io.Serializable;

/* renamed from: i7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0215i7 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ RunnableC0215i7(Object obj, int i, Object obj2, int i2) {
        this.a = i2;
        this.c = obj;
        this.b = i;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        Object obj2 = this.d;
        switch (this.a) {
            case 0:
                ((C0240j7) obj).b.j(i, (Serializable) obj2);
                return;
            default:
                View view = (View) obj2;
                TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = (TopOverlayAccessibilityService) obj;
                AbstractC0348nb.r(topOverlayAccessibilityService2, "this$0");
                topOverlayAccessibilityService2.N = true;
                topOverlayAccessibilityService2.Q = i;
                topOverlayAccessibilityService2.R = i;
                topOverlayAccessibilityService2.L = -1;
                int i2 = 0;
                try {
                    view.performHapticFeedback(0);
                } catch (Exception unused) {
                }
                PresetGridLayout presetGridLayout = topOverlayAccessibilityService2.M0;
                if (presetGridLayout != null) {
                    int childCount = presetGridLayout.getChildCount();
                    while (i2 < childCount) {
                        presetGridLayout.getChildAt(i2).setAlpha(i2 == i ? 1.0f : 0.4f);
                        i2++;
                    }
                }
                view.setScaleX(1.08f);
                view.setScaleY(1.08f);
                view.setAlpha(1.0f);
                view.setTranslationZ(1.0f);
                FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.iconContainer);
                if (frameLayout != null) {
                    topOverlayAccessibilityService2.p0(frameLayout, i, true);
                    return;
                }
                return;
        }
    }
}
