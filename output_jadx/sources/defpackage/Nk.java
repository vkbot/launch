package defpackage;

import android.provider.Settings;
import android.view.View;
import android.widget.CompoundButton;
import com.google.android.material.chip.Chip;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* loaded from: classes.dex */
public final /* synthetic */ class Nk implements CompoundButton.OnCheckedChangeListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ Nk(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        Object obj = this.b;
        switch (this.a) {
            case 0:
                TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = (TopOverlayAccessibilityService) obj;
                AbstractC0348nb.r(topOverlayAccessibilityService2, "this$0");
                C0255jm c0255jm = C0255jm.a;
                C0255jm.d().edit().putBoolean("back_hidden", z).apply();
                View view = topOverlayAccessibilityService2.i;
                if (view != null) {
                    topOverlayAccessibilityService2.e(view, z);
                    return;
                }
                return;
            case 1:
                TopOverlayAccessibilityService topOverlayAccessibilityService3 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService4 = (TopOverlayAccessibilityService) obj;
                AbstractC0348nb.r(topOverlayAccessibilityService4, "this$0");
                C0255jm c0255jm2 = C0255jm.a;
                if (z) {
                    try {
                        r4 = Settings.System.getInt(topOverlayAccessibilityService4.getContentResolver(), "steering_key_function", 0);
                    } catch (Exception unused) {
                    }
                    if (r4 != 1) {
                        C0255jm.d().edit().putInt("saved_steering_fn", r4).apply();
                    }
                    topOverlayAccessibilityService4.Z(1);
                } else {
                    int i = C0255jm.d().getInt("saved_steering_fn", -1);
                    topOverlayAccessibilityService4.Z(i >= 0 ? i : 0);
                }
                C0255jm.d().edit().putBoolean("sport_key_enabled", z).apply();
                return;
            default:
                CompoundButton.OnCheckedChangeListener onCheckedChangeListener = ((Chip) obj).i;
                if (onCheckedChangeListener != null) {
                    onCheckedChangeListener.onCheckedChanged(compoundButton, z);
                    return;
                }
                return;
        }
    }
}
