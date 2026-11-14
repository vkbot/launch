package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.omoda.launcher.data.Preset;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.util.List;

/* renamed from: rl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0460rl extends BroadcastReceiver {
    public final /* synthetic */ int a;
    public final /* synthetic */ TopOverlayAccessibilityService b;

    public /* synthetic */ C0460rl(int i, TopOverlayAccessibilityService topOverlayAccessibilityService) {
        this.a = i;
        this.b = topOverlayAccessibilityService;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data;
        String schemeSpecificPart;
        List<Preset> list;
        TopOverlayAccessibilityService topOverlayAccessibilityService = this.b;
        switch (this.a) {
            case 0:
                if (intent != null) {
                    int intExtra = intent.getIntExtra("android.intent.extra.hardkey.keycode", 0);
                    boolean booleanExtra = intent.getBooleanExtra("android.intent.extra.hardkey.down", false);
                    if (intExtra == 164 && !booleanExtra) {
                        topOverlayAccessibilityService.w.postDelayed(new Jk(11, topOverlayAccessibilityService), 300L);
                    }
                    if (intExtra != 294 || booleanExtra) {
                        return;
                    }
                    C0255jm c0255jm = C0255jm.a;
                    boolean z = C0255jm.d().getBoolean("sport_key_enabled", false);
                    Log.i("TopOverlayA11y", "SWC star up: sportKeyEnabled=" + z);
                    if (z) {
                        AbstractC0348nb.M(topOverlayAccessibilityService.x, AbstractC0546v7.b, new C0436ql(topOverlayAccessibilityService, null), 2);
                        return;
                    }
                    return;
                }
                return;
            default:
                if (intent == null || (data = intent.getData()) == null || (schemeSpecificPart = data.getSchemeSpecificPart()) == null) {
                    return;
                }
                topOverlayAccessibilityService.Q0.remove(schemeSpecificPart);
                Wk wk = topOverlayAccessibilityService.P0;
                if (wk == null || (list = wk.a) == null || list.isEmpty()) {
                    return;
                }
                for (Preset preset : list) {
                    if (AbstractC0348nb.g(preset.getLeftApp(), schemeSpecificPart) || AbstractC0348nb.g(preset.getRightApp(), schemeSpecificPart)) {
                        topOverlayAccessibilityService.P0 = null;
                        return;
                    }
                }
                return;
        }
    }
}
