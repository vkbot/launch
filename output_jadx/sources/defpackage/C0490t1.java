package defpackage;

import android.content.Context;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationManager;
import android.os.PowerManager;
import android.util.Log;
import java.util.Calendar;

/* renamed from: t1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0490t1 extends AbstractC0540v1 {
    public final /* synthetic */ int c = 0;
    public final /* synthetic */ LayoutInflaterFactory2C0615y1 d;
    public final Object e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0490t1(LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1, C0491t2 c0491t2) {
        super(layoutInflaterFactory2C0615y1);
        this.d = layoutInflaterFactory2C0615y1;
        this.e = c0491t2;
    }

    @Override // defpackage.AbstractC0540v1
    public final IntentFilter e() {
        switch (this.c) {
            case 0:
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                return intentFilter;
            default:
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.TIME_SET");
                intentFilter2.addAction("android.intent.action.TIMEZONE_CHANGED");
                intentFilter2.addAction("android.intent.action.TIME_TICK");
                return intentFilter2;
        }
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [dm, java.lang.Object] */
    @Override // defpackage.AbstractC0540v1
    public final int f() {
        Location location;
        boolean z;
        long j;
        Location location2;
        switch (this.c) {
            case 0:
                return ((PowerManager) this.e).isPowerSaveMode() ? 2 : 1;
            default:
                C0491t2 c0491t2 = (C0491t2) this.e;
                C0126em c0126em = (C0126em) c0491t2.b;
                if (c0126em.b > System.currentTimeMillis()) {
                    z = c0126em.a;
                } else {
                    Context context = (Context) c0491t2.c;
                    int a = AbstractC0171gf.a(context, "android.permission.ACCESS_COARSE_LOCATION");
                    Location location3 = null;
                    LocationManager locationManager = (LocationManager) c0491t2.a;
                    if (a == 0) {
                        try {
                        } catch (Exception e) {
                            Log.d("TwilightManager", "Failed to get last known location", e);
                        }
                        if (locationManager.isProviderEnabled("network")) {
                            location2 = locationManager.getLastKnownLocation("network");
                            location = location2;
                        }
                        location2 = null;
                        location = location2;
                    } else {
                        location = null;
                    }
                    if (AbstractC0171gf.a(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                        try {
                            if (locationManager.isProviderEnabled("gps")) {
                                location3 = locationManager.getLastKnownLocation("gps");
                            }
                        } catch (Exception e2) {
                            Log.d("TwilightManager", "Failed to get last known location", e2);
                        }
                    }
                    if (location3 == null || location == null ? location3 != null : location3.getTime() > location.getTime()) {
                        location = location3;
                    }
                    if (location != null) {
                        long currentTimeMillis = System.currentTimeMillis();
                        if (C0101dm.d == null) {
                            C0101dm.d = new Object();
                        }
                        C0101dm c0101dm = C0101dm.d;
                        c0101dm.a(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
                        c0101dm.a(currentTimeMillis, location.getLatitude(), location.getLongitude());
                        z = c0101dm.c == 1;
                        long j2 = c0101dm.b;
                        long j3 = c0101dm.a;
                        c0101dm.a(currentTimeMillis + 86400000, location.getLatitude(), location.getLongitude());
                        long j4 = c0101dm.b;
                        if (j2 == -1 || j3 == -1) {
                            j = currentTimeMillis + 43200000;
                        } else {
                            if (currentTimeMillis <= j3) {
                                j4 = currentTimeMillis > j2 ? j3 : j2;
                            }
                            j = j4 + 60000;
                        }
                        c0126em.a = z;
                        c0126em.b = j;
                    } else {
                        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                        int i = Calendar.getInstance().get(11);
                        if (i < 6 || i >= 22) {
                            z = true;
                        }
                    }
                }
                return z ? 2 : 1;
        }
    }

    @Override // defpackage.AbstractC0540v1
    public final void h() {
        switch (this.c) {
            case 0:
                this.d.m(true, true);
                return;
            default:
                this.d.m(true, true);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0490t1(LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1, Context context) {
        super(layoutInflaterFactory2C0615y1);
        this.d = layoutInflaterFactory2C0615y1;
        this.e = (PowerManager) context.getApplicationContext().getSystemService("power");
    }
}
