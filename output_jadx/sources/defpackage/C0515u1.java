package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

/* renamed from: u1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0515u1 extends BroadcastReceiver {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0515u1(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        switch (this.a) {
            case 0:
                ((AbstractC0540v1) this.b).h();
                return;
            default:
                long currentTimeMillis = System.currentTimeMillis();
                H4 h4 = (H4) this.b;
                h4.getClass();
                Long l = (Long) Ph.e.d();
                if (l == null) {
                    long longValue = ((Number) Ph.f.d()).longValue();
                    if (currentTimeMillis >= longValue || !H4.a(h4)) {
                        return;
                    }
                    Log.w("ClockGuard", "clock reads " + new Date(currentTimeMillis) + ", below our floor " + new Date(longValue) + " — lifting");
                    Ph.i.d();
                    return;
                }
                long longValue2 = currentTimeMillis - l.longValue();
                if (Math.abs(longValue2) < 5000) {
                    return;
                }
                if (!H4.a(h4)) {
                    Log.w("ClockGuard", "rate limit reached — backing off, clock left as is");
                    return;
                }
                int O = C6.O(longValue2 / 60000.0d);
                Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
                calendar.setTimeInMillis((((Number) Ph.g.d()).longValue() * 60000) + currentTimeMillis);
                if (calendar.get(1) > 2021 && Math.abs(O) <= 840) {
                    Log.i("ClockGuard", "manual edit: " + O + "m — adopting as timezone offset");
                    C0643z4.l.h(Integer.valueOf(O));
                    return;
                }
                Log.w("ClockGuard", "firmware wrote " + new Date(currentTimeMillis) + " — restoring");
                Ph.h.d();
                return;
        }
    }
}
