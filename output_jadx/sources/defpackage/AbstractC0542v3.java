package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import com.omoda.launcher.MainActivity;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* renamed from: v3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0542v3 {
    public static final Handler a = new Handler(Looper.getMainLooper());
    public static Context b;
    public static boolean c;
    public static boolean d;
    public static long e;

    public static void a(int i) {
        TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
        if (AbstractC0171gf.j()) {
            if (i == 0) {
                Log.d("BootWatch", "AccessibilityService is up");
                return;
            }
            Log.i("BootWatch", "AccessibilityService recovered at attempt " + i);
            return;
        }
        if (d && i > 0 && SystemClock.elapsedRealtime() - e >= 60000) {
            Log.w("BootWatch", "AccessibilityService still not bound after " + i + " attempts — MainActivity's error screen takes over");
            try {
                Context context = b;
                if (context == null) {
                    AbstractC0348nb.j0("app");
                    throw null;
                }
                Context context2 = b;
                if (context2 != null) {
                    context.startActivity(new Intent(context2, (Class<?>) MainActivity.class).addFlags(268435456).putExtra("boot_watch", true));
                    return;
                } else {
                    AbstractC0348nb.j0("app");
                    throw null;
                }
            } catch (Exception e2) {
                Log.e("BootWatch", "cannot start MainActivity: " + e2.getMessage());
                return;
            }
        }
        StringBuilder sb = new StringBuilder("AccessibilityService not bound (installed=");
        Context context3 = b;
        if (context3 == null) {
            AbstractC0348nb.j0("app");
            throw null;
        }
        sb.append(C6.t(context3).contains(C6.d(context3)));
        sb.append(", enabled=");
        Context context4 = b;
        if (context4 == null) {
            AbstractC0348nb.j0("app");
            throw null;
        }
        sb.append(C6.y(context4));
        sb.append(") — recovery attempt ");
        sb.append(i);
        Log.w("BootWatch", sb.toString());
        Context context5 = b;
        if (context5 == null) {
            AbstractC0348nb.j0("app");
            throw null;
        }
        C6.j(context5);
        a.postDelayed(new RunnableC0517u3(i, 0), i != 0 ? i != 1 ? i != 2 ? i != 3 ? 15000L : 8000L : 4000L : 2000L : 1000L);
    }

    public static void b(Context context, boolean z) {
        AbstractC0348nb.r(context, "context");
        if (c) {
            return;
        }
        c = true;
        Context applicationContext = context.getApplicationContext();
        AbstractC0348nb.q(applicationContext, "getApplicationContext(...)");
        b = applicationContext;
        d = z;
        a.postDelayed(new RunnableC0492t3(0), 15000L);
    }
}
