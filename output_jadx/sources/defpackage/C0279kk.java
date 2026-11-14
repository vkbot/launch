package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Log;
import java.util.TimeZone;

/* renamed from: kk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0279kk {
    public final Context a;
    public final SharedPreferences b;
    public volatile C0253jk c;
    public volatile int d;
    public volatile boolean e;

    public C0279kk(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("time_keeper", 0);
        this.b = sharedPreferences;
        this.e = sharedPreferences.getBoolean("offset_manual", false);
        this.d = sharedPreferences.contains("offset_min") ? sharedPreferences.getInt("offset_min", 0) : e();
        long j = sharedPreferences.getLong("base_utc", 0L);
        long j2 = sharedPreferences.getLong("base_elapsed", 0L);
        if (j <= 0 || j2 <= 0) {
            return;
        }
        long j3 = -1;
        long j4 = sharedPreferences.getLong("base_boot_count", -1L);
        try {
            j3 = Settings.Global.getInt(applicationContext.getContentResolver(), "boot_count");
        } catch (Throwable unused) {
        }
        if (j4 >= 0 && j3 >= 0 && j4 == j3 && j2 <= SystemClock.elapsedRealtime()) {
            this.c = new C0253jk(j, j2);
            Log.i("TimeBase", "base restored after process restart");
            return;
        }
        Log.i("TimeBase", "reboot detected — stored base discarded (boot " + j4 + " -> " + j3 + ')');
    }

    public static int e() {
        TimeZone timeZone = TimeZone.getDefault();
        String id = timeZone.getID();
        AbstractC0348nb.q(id, "getID(...)");
        if (Si.H(id, "Etc")) {
            return timeZone.getOffset(System.currentTimeMillis()) / 60000;
        }
        Log.i("TimeBase", "system zone '" + timeZone.getID() + "' is not an Etc zone — untrusted, defaulting to UTC+3");
        return 180;
    }

    public final long a() {
        return Math.max(1794337381843L, this.b.getLong("floor_utc", 0L));
    }

    public final boolean b() {
        return this.c != null;
    }

    public final Long c() {
        C0253jk c0253jk = this.c;
        if (c0253jk == null) {
            return null;
        }
        return Long.valueOf((SystemClock.elapsedRealtime() - c0253jk.b) + c0253jk.a);
    }

    public final void d(int i, boolean z) {
        this.d = AbstractC0554vf.f(i, -720, 840);
        if (z) {
            this.e = true;
        }
        this.b.edit().putInt("offset_min", this.d).putBoolean("offset_manual", this.e).apply();
    }
}
