package defpackage;

import android.content.ComponentName;
import android.os.Handler;
import android.util.Log;
import com.omoda.launcher.MainActivity;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class Vc implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ MainActivity b;
    public final /* synthetic */ int c;

    public /* synthetic */ Vc(MainActivity mainActivity, int i, int i2) {
        this.a = i2;
        this.b = mainActivity;
        this.c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.c;
        MainActivity mainActivity = this.b;
        int i2 = 1;
        switch (this.a) {
            case 0:
                MainActivity mainActivity2 = MainActivity.O;
                AbstractC0348nb.r(mainActivity, "this$0");
                List t = C6.t(mainActivity);
                boolean contains = t.contains(new ComponentName(mainActivity, (Class<?>) TopOverlayAccessibilityService.class));
                Log.d("MainActivity", "Recovery: installed=" + t.size() + " ours=" + contains);
                if (!contains) {
                    mainActivity.M(i + 1);
                    return;
                }
                Handler handler = mainActivity.F;
                C6.h(mainActivity, handler);
                handler.postDelayed(new Vc(mainActivity, i, i2), 2200L);
                return;
            default:
                MainActivity mainActivity3 = MainActivity.O;
                AbstractC0348nb.r(mainActivity, "this$0");
                TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                if (AbstractC0171gf.j()) {
                    mainActivity.D(i);
                    return;
                } else {
                    Log.w("MainActivity", "Service still not connected after enable, retry full recovery");
                    mainActivity.M(i + 1);
                    return;
                }
        }
    }
}
