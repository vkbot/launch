package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Log;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* renamed from: t3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0492t3 implements Runnable {
    public final /* synthetic */ int a;

    public /* synthetic */ RunnableC0492t3(int i) {
        this.a = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = -1;
        switch (this.a) {
            case 0:
                AbstractC0542v3.e = SystemClock.elapsedRealtime();
                AbstractC0542v3.a(0);
                return;
            case 1:
                Context context = C0357nk.a;
                if (context == null) {
                    AbstractC0348nb.j0("app");
                    throw null;
                }
                C0279kk c0279kk = C0357nk.b;
                if (c0279kk != null) {
                    AbstractC0554vf.p(context, c0279kk.d);
                    return;
                } else {
                    AbstractC0348nb.j0("base");
                    throw null;
                }
            case 2:
                Context context2 = C0357nk.a;
                if (context2 == null) {
                    AbstractC0348nb.j0("app");
                    throw null;
                }
                try {
                    i = Settings.System.getInt(context2.getContentResolver(), "use_gps_time", 1);
                } catch (Throwable unused) {
                }
                if (i != 0) {
                    try {
                        Settings.System.putInt(context2.getContentResolver(), "use_gps_time", 0);
                        Log.i("FirmwareSwitch", "use_gps_time := 0 (GPS time source disabled)");
                    } catch (Throwable th) {
                        Log.w("FirmwareSwitch", "cannot write use_gps_time: " + th.getMessage());
                    }
                }
                Context context3 = C0357nk.a;
                if (context3 == null) {
                    AbstractC0348nb.j0("app");
                    throw null;
                }
                C0279kk c0279kk2 = C0357nk.b;
                if (c0279kk2 == null) {
                    AbstractC0348nb.j0("base");
                    throw null;
                }
                AbstractC0554vf.p(context3, c0279kk2.d);
                C0279kk c0279kk3 = C0357nk.b;
                if (c0279kk3 == null) {
                    AbstractC0348nb.j0("base");
                    throw null;
                }
                boolean b = c0279kk3.b();
                Context context4 = C0357nk.a;
                if (b) {
                    C0357nk.b(false);
                    return;
                } else {
                    C0357nk.e();
                    return;
                }
            case 3:
                Context context5 = C0357nk.a;
                C0357nk.e();
                return;
            case 4:
                Context context6 = C0357nk.a;
                C0357nk.b(true);
                return;
            case 5:
                C0357nk.b(false);
                return;
            case 6:
                Context context7 = C0357nk.a;
                C0357nk.e();
                return;
            case 7:
                Context context8 = C0357nk.a;
                if (context8 == null) {
                    AbstractC0348nb.j0("app");
                    throw null;
                }
                try {
                    i = Settings.System.getInt(context8.getContentResolver(), "use_gps_time", 1);
                } catch (Throwable unused2) {
                }
                if (i != 0) {
                    try {
                        Settings.System.putInt(context8.getContentResolver(), "use_gps_time", 0);
                        Log.i("FirmwareSwitch", "use_gps_time := 0 (GPS time source disabled)");
                    } catch (Throwable th2) {
                        Log.w("FirmwareSwitch", "cannot write use_gps_time: " + th2.getMessage());
                    }
                }
                C0279kk c0279kk4 = C0357nk.b;
                if (c0279kk4 == null) {
                    AbstractC0348nb.j0("base");
                    throw null;
                }
                if (!c0279kk4.b()) {
                    Context context9 = C0357nk.a;
                    C0357nk.e();
                    return;
                }
                C0357nk.b(false);
                C0279kk c0279kk5 = C0357nk.b;
                if (c0279kk5 == null) {
                    AbstractC0348nb.j0("base");
                    throw null;
                }
                Long c = c0279kk5.c();
                if (c != null) {
                    long longValue = c.longValue();
                    SharedPreferences sharedPreferences = c0279kk5.b;
                    if (longValue > sharedPreferences.getLong("floor_utc", 0L)) {
                        sharedPreferences.edit().putLong("floor_utc", longValue).apply();
                        return;
                    }
                    return;
                }
                return;
            default:
                TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                return;
        }
    }

    public /* synthetic */ RunnableC0492t3(String str) {
        this.a = 5;
    }
}
