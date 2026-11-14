package defpackage;

import android.content.Intent;
import android.media.AudioManager;
import android.os.Process;
import android.util.Log;
import android.view.KeyEvent;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* loaded from: classes.dex */
public final /* synthetic */ class Jk implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ TopOverlayAccessibilityService b;

    public /* synthetic */ Jk(int i, TopOverlayAccessibilityService topOverlayAccessibilityService) {
        this.a = i;
        this.b = topOverlayAccessibilityService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        Float f = null;
        switch (this.a) {
            case 0:
                TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService2, "this$0");
                topOverlayAccessibilityService2.o = 0;
                return;
            case 1:
                TopOverlayAccessibilityService topOverlayAccessibilityService3 = this.b;
                TopOverlayAccessibilityService topOverlayAccessibilityService4 = TopOverlayAccessibilityService.n1;
                AbstractC0348nb.r(topOverlayAccessibilityService3, "this$0");
                if (topOverlayAccessibilityService3.s) {
                    return;
                }
                topOverlayAccessibilityService3.s = true;
                AbstractC0348nb.M(topOverlayAccessibilityService3.x, AbstractC0546v7.b, new Cl(topOverlayAccessibilityService3, null), 2);
                return;
            case 2:
                TopOverlayAccessibilityService topOverlayAccessibilityService5 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService6 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService6, "this$0");
                int i2 = topOverlayAccessibilityService6.p0;
                if (i2 == 2) {
                    topOverlayAccessibilityService6.d(1);
                } else if (i2 == 3) {
                    topOverlayAccessibilityService6.d(-1);
                }
                topOverlayAccessibilityService6.p0 = 0;
                return;
            case 3:
                TopOverlayAccessibilityService topOverlayAccessibilityService7 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService8 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService8, "this$0");
                topOverlayAccessibilityService8.D = new Yk(9, topOverlayAccessibilityService8);
                Io io = topOverlayAccessibilityService8.J;
                if (io == null) {
                    AbstractC0348nb.j0("windowLauncher");
                    throw null;
                }
                if (io.r() == Fo.d) {
                    topOverlayAccessibilityService8.C();
                    return;
                } else {
                    topOverlayAccessibilityService8.t();
                    return;
                }
            case 4:
                TopOverlayAccessibilityService topOverlayAccessibilityService9 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService10 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService10, "this$0");
                topOverlayAccessibilityService10.D = new Yk(10, topOverlayAccessibilityService10);
                Io io2 = topOverlayAccessibilityService10.J;
                if (io2 == null) {
                    AbstractC0348nb.j0("windowLauncher");
                    throw null;
                }
                if (io2.r() == Fo.d) {
                    topOverlayAccessibilityService10.C();
                    return;
                } else {
                    topOverlayAccessibilityService10.t();
                    return;
                }
            case 5:
                TopOverlayAccessibilityService topOverlayAccessibilityService11 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService12 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService12, "this$0");
                Intent launchIntentForPackage = topOverlayAccessibilityService12.getPackageManager().getLaunchIntentForPackage(topOverlayAccessibilityService12.getPackageName());
                if (launchIntentForPackage != null) {
                    launchIntentForPackage.addFlags(268468224);
                    topOverlayAccessibilityService12.startActivity(launchIntentForPackage);
                }
                Process.killProcess(Process.myPid());
                return;
            case 6:
                TopOverlayAccessibilityService topOverlayAccessibilityService13 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService14 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService14, "this$0");
                topOverlayAccessibilityService14.L = -1;
                topOverlayAccessibilityService14.D0();
                return;
            case 7:
                TopOverlayAccessibilityService topOverlayAccessibilityService15 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService15, "$it");
                TopOverlayAccessibilityService topOverlayAccessibilityService16 = TopOverlayAccessibilityService.n1;
                topOverlayAccessibilityService15.m0();
                return;
            case 8:
                TopOverlayAccessibilityService topOverlayAccessibilityService17 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService17, "$svc");
                TopOverlayAccessibilityService topOverlayAccessibilityService18 = TopOverlayAccessibilityService.n1;
                topOverlayAccessibilityService17.F();
                topOverlayAccessibilityService17.L();
                topOverlayAccessibilityService17.C();
                return;
            case 9:
                TopOverlayAccessibilityService topOverlayAccessibilityService19 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService19, "$it");
                TopOverlayAccessibilityService topOverlayAccessibilityService20 = TopOverlayAccessibilityService.n1;
                topOverlayAccessibilityService19.w().b(true);
                return;
            case 10:
                TopOverlayAccessibilityService topOverlayAccessibilityService21 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService21, "$it");
                TopOverlayAccessibilityService topOverlayAccessibilityService22 = TopOverlayAccessibilityService.n1;
                topOverlayAccessibilityService21.n();
                return;
            case 11:
                TopOverlayAccessibilityService topOverlayAccessibilityService23 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService23, "this$0");
                try {
                    Object systemService = topOverlayAccessibilityService23.getSystemService("audio");
                    AbstractC0348nb.p(systemService, "null cannot be cast to non-null type android.media.AudioManager");
                    AudioManager audioManager = (AudioManager) systemService;
                    if (topOverlayAccessibilityService23.X) {
                        topOverlayAccessibilityService23.X = false;
                        i = 126;
                    } else {
                        topOverlayAccessibilityService23.X = true;
                        i = 127;
                    }
                    audioManager.dispatchMediaKeyEvent(new KeyEvent(0, i));
                    audioManager.dispatchMediaKeyEvent(new KeyEvent(1, i));
                    TopOverlayAccessibilityService topOverlayAccessibilityService24 = TopOverlayAccessibilityService.n1;
                    return;
                } catch (Exception e) {
                    Log.e("TopOverlayA11y", "MUTE failed", e);
                    return;
                }
            default:
                TopOverlayAccessibilityService topOverlayAccessibilityService25 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService25, "this$0");
                TopOverlayAccessibilityService topOverlayAccessibilityService26 = TopOverlayAccessibilityService.n1;
                Lm B = topOverlayAccessibilityService25.B();
                B.getClass();
                Object c = B.c(559947819, 16777216, null);
                Number number = c instanceof Number ? (Number) c : null;
                if (number != null) {
                    float floatValue = number.floatValue();
                    if (floatValue != -55.0f) {
                        f = Float.valueOf(floatValue);
                    }
                }
                topOverlayAccessibilityService25.k.post(new D2(topOverlayAccessibilityService25, 5, f));
                return;
        }
    }
}
