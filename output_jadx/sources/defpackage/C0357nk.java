package defpackage;

import android.app.AlarmManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Log;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: nk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0357nk {
    public static Context a;
    public static C0279kk b;
    public static H4 c;
    public static boolean f;
    public static final Handler d = new Handler(Looper.getMainLooper());
    public static final ExecutorService e = Executors.newSingleThreadExecutor(new Object());
    public static final RunnableC0112e8 g = new RunnableC0112e8(1);

    public static void a(String str) {
        C0279kk c0279kk = b;
        if (c0279kk == null) {
            AbstractC0348nb.j0("base");
            throw null;
        }
        if (c0279kk.b()) {
            e.execute(new RunnableC0492t3(str));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x0106, code lost:
    
        if (defpackage.C6.y != null) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0238  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(boolean r15) {
        /*
            Method dump skipped, instructions count: 589
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0357nk.b(boolean):void");
    }

    public static EnumC0331mk c() {
        if (f) {
            C0279kk c0279kk = b;
            if (c0279kk == null) {
                AbstractC0348nb.j0("base");
                throw null;
            }
            if (c0279kk.b()) {
                return EnumC0331mk.b;
            }
        }
        return EnumC0331mk.a;
    }

    public static boolean d(long j, String str) {
        long j2;
        AbstractC0348nb.r(str, "source");
        if (!f) {
            return false;
        }
        C0279kk c0279kk = b;
        if (c0279kk == null) {
            AbstractC0348nb.j0("base");
            throw null;
        }
        long a2 = c0279kk.a();
        if (j < a2 || j > a2 + 315360000000L) {
            StringBuilder l = AbstractC0407pi.l("rejecting ", str, ": ");
            l.append(new Date(j));
            l.append(" outside the plausible window");
            Log.w("TimeKeeper", l.toString());
            return false;
        }
        C0279kk c0279kk2 = b;
        if (c0279kk2 == null) {
            AbstractC0348nb.j0("base");
            throw null;
        }
        boolean z = c0279kk2.c == null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        c0279kk2.c = new C0253jk(j, elapsedRealtime);
        SharedPreferences.Editor putLong = c0279kk2.b.edit().putLong("base_utc", j).putLong("base_elapsed", elapsedRealtime);
        try {
            j2 = Settings.Global.getInt(c0279kk2.a.getContentResolver(), "boot_count");
        } catch (Throwable unused) {
            j2 = -1;
        }
        putLong.putLong("base_boot_count", j2).apply();
        SharedPreferences sharedPreferences = c0279kk2.b;
        if (j > sharedPreferences.getLong("floor_utc", 0L)) {
            sharedPreferences.edit().putLong("floor_utc", j).apply();
        }
        Log.i("TimeKeeper", "base set from " + str + " (first=" + z + ')');
        if (z) {
            C0279kk c0279kk3 = b;
            if (c0279kk3 == null) {
                AbstractC0348nb.j0("base");
                throw null;
            }
            if (!c0279kk3.e) {
                C0279kk c0279kk4 = b;
                if (c0279kk4 == null) {
                    AbstractC0348nb.j0("base");
                    throw null;
                }
                c0279kk4.d(C0279kk.e(), false);
            }
        }
        e.execute(new RunnableC0492t3(4));
        return true;
    }

    public static void e() {
        C0279kk c0279kk = b;
        if (c0279kk == null) {
            AbstractC0348nb.j0("base");
            throw null;
        }
        if (c0279kk.b()) {
            return;
        }
        C0279kk c0279kk2 = b;
        if (c0279kk2 == null) {
            AbstractC0348nb.j0("base");
            throw null;
        }
        long a2 = c0279kk2.a();
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis >= a2) {
            return;
        }
        if (b == null) {
            AbstractC0348nb.j0("base");
            throw null;
        }
        long j = r0.d * 60000;
        long floorDiv = ((Math.floorDiv(a2 + j, 86400000L) * 86400000) + Math.floorMod(currentTimeMillis + j, 86400000L)) - j;
        if (floorDiv < a2) {
            floorDiv += 86400000;
        }
        Log.w("TimeKeeper", "no trusted UTC and clock reads " + new Date(currentTimeMillis) + " — lifting to " + new Date(floorDiv) + " so TLS works until a real time source answers");
        g(floorDiv);
    }

    public static void f(int i) {
        if (f) {
            C0279kk c0279kk = b;
            if (c0279kk == null) {
                AbstractC0348nb.j0("base");
                throw null;
            }
            c0279kk.d(i, c0279kk.b());
            StringBuilder sb = new StringBuilder("offset = ");
            C0279kk c0279kk2 = b;
            if (c0279kk2 == null) {
                AbstractC0348nb.j0("base");
                throw null;
            }
            sb.append(c0279kk2.d);
            sb.append("m manual=");
            C0279kk c0279kk3 = b;
            if (c0279kk3 == null) {
                AbstractC0348nb.j0("base");
                throw null;
            }
            sb.append(c0279kk3.e);
            Log.i("TimeKeeper", sb.toString());
            e.execute(new RunnableC0492t3(1));
            a("offset");
        }
    }

    public static long g(long j) {
        long abs = Math.abs(System.currentTimeMillis() - j);
        if (abs < 2000) {
            return 0L;
        }
        try {
            Context context = a;
            if (context == null) {
                AbstractC0348nb.j0("app");
                throw null;
            }
            Object systemService = context.getSystemService("alarm");
            AbstractC0348nb.p(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
            ((AlarmManager) systemService).setTime(j);
            return abs;
        } catch (Exception e2) {
            Log.e("TimeKeeper", "setTime failed — missing SET_TIME?", e2);
            return 0L;
        }
    }
}
