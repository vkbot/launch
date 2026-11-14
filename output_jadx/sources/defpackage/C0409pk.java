package defpackage;

import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Handler;
import android.util.Log;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* renamed from: pk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0409pk extends ConnectivityManager.NetworkCallback {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0409pk(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        switch (this.a) {
            case 0:
                AbstractC0348nb.r(network, "network");
                Log.i("TimeSyncWatchdog", "network available — starting time acquisition");
                ((C0435qk) this.b).d = 0;
                C0435qk c0435qk = (C0435qk) this.b;
                c0435qk.b.removeCallbacks(c0435qk.h);
                Handler handler = c0435qk.b;
                J2 j2 = c0435qk.h;
                long[] jArr = C0435qk.i;
                int i = c0435qk.d;
                if (i > 4) {
                    i = 4;
                }
                handler.postDelayed(j2, jArr[i]);
                return;
            default:
                AbstractC0348nb.r(network, "network");
                if (((TopOverlayAccessibilityService) this.b).s) {
                    return;
                }
                TopOverlayAccessibilityService topOverlayAccessibilityService = (TopOverlayAccessibilityService) this.b;
                topOverlayAccessibilityService.w.removeCallbacks(topOverlayAccessibilityService.t);
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = (TopOverlayAccessibilityService) this.b;
                topOverlayAccessibilityService2.w.postDelayed(topOverlayAccessibilityService2.t, topOverlayAccessibilityService2.u);
                return;
        }
    }
}
