package defpackage;

import android.content.Context;
import android.provider.Settings;
import android.util.Log;

/* loaded from: classes.dex */
public final class E7 {
    public final Context a;
    public Object b;
    public int c;
    public boolean d;

    public E7(Context context) {
        AbstractC0348nb.r(context, "context");
        this.a = context.getApplicationContext();
        this.c = 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0050, code lost:
    
        if (r7.b != null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(int r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.b
            java.lang.String r1 = "DriveModeController"
            r2 = 0
            if (r0 == 0) goto L8
            goto L52
        L8:
            r0 = 0
            java.lang.String r3 = "android.car.Car"
            java.lang.Class r3 = java.lang.Class.forName(r3)     // Catch: java.lang.Throwable -> L2d
            java.lang.String r4 = "createCar"
            java.lang.Class<android.content.Context> r5 = android.content.Context.class
            java.lang.Class[] r5 = new java.lang.Class[]{r5}     // Catch: java.lang.Throwable -> L2d
            java.lang.reflect.Method r4 = r3.getMethod(r4, r5)     // Catch: java.lang.Throwable -> L2d
            android.content.Context r5 = r7.a     // Catch: java.lang.Throwable -> L2d
            java.lang.Object[] r5 = new java.lang.Object[]{r5}     // Catch: java.lang.Throwable -> L2d
            java.lang.Object r4 = r4.invoke(r0, r5)     // Catch: java.lang.Throwable -> L2d
            if (r4 != 0) goto L2f
            java.lang.String r8 = "createCar returned null"
            android.util.Log.w(r1, r8)     // Catch: java.lang.Throwable -> L2d
            goto L9e
        L2d:
            r8 = move-exception
            goto L97
        L2f:
            java.lang.String r5 = "getCarManager"
            java.lang.Class<java.lang.String> r6 = java.lang.String.class
            java.lang.Class[] r6 = new java.lang.Class[]{r6}     // Catch: java.lang.Throwable -> L2d
            java.lang.reflect.Method r3 = r3.getMethod(r5, r6)     // Catch: java.lang.Throwable -> L2d
            java.lang.String r5 = "property"
            java.lang.Object[] r5 = new java.lang.Object[]{r5}     // Catch: java.lang.Throwable -> L2d
            java.lang.Object r3 = r3.invoke(r4, r5)     // Catch: java.lang.Throwable -> L2d
            r7.b = r3     // Catch: java.lang.Throwable -> L2d
            if (r3 != 0) goto L4e
            java.lang.String r3 = "getCarManager(property) returned null"
            android.util.Log.w(r1, r3)     // Catch: java.lang.Throwable -> L2d
        L4e:
            java.lang.Object r0 = r7.b     // Catch: java.lang.Throwable -> L2d
            if (r0 == 0) goto L9e
        L52:
            java.lang.Object r7 = r7.b
            if (r7 != 0) goto L57
            return r2
        L57:
            java.lang.Class r0 = r7.getClass()     // Catch: java.lang.Throwable -> L7f
            java.lang.String r3 = "setIntProperty"
            java.lang.Class r4 = java.lang.Integer.TYPE     // Catch: java.lang.Throwable -> L7f
            java.lang.Class[] r4 = new java.lang.Class[]{r4, r4, r4}     // Catch: java.lang.Throwable -> L7f
            java.lang.reflect.Method r0 = r0.getMethod(r3, r4)     // Catch: java.lang.Throwable -> L7f
            r3 = 557854778(0x2140303a, float:6.511596E-19)
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L7f
            java.lang.Integer r4 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> L7f
            java.lang.Integer r5 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L7f
            java.lang.Object[] r3 = new java.lang.Object[]{r3, r4, r5}     // Catch: java.lang.Throwable -> L7f
            r0.invoke(r7, r3)     // Catch: java.lang.Throwable -> L7f
            r2 = 1
            goto L96
        L7f:
            r7 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r3 = "setMode("
            r0.<init>(r3)
            r0.append(r8)
            java.lang.String r8 = ") failed"
            r0.append(r8)
            java.lang.String r8 = r0.toString()
            android.util.Log.e(r1, r8, r7)
        L96:
            return r2
        L97:
            java.lang.String r3 = "ensureConnected failed"
            android.util.Log.e(r1, r3, r8)
            r7.b = r0
        L9e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.E7.a(int):boolean");
    }

    public final void b() {
        int i;
        Integer valueOf;
        int i2 = -1;
        try {
            i = Settings.Global.getInt(this.a.getContentResolver(), "driver_mode_status", -1);
        } catch (Throwable th) {
            Log.e("DriveModeController", "readMode(driver_mode_status) failed", th);
            i = -1;
        }
        if (i < 0 || i >= 8) {
            try {
                Object invoke = Class.forName("android.os.SystemProperties").getMethod("getInt", String.class, Integer.TYPE).invoke(null, "sys.drive.mode.value", -1);
                AbstractC0348nb.p(invoke, "null cannot be cast to non-null type kotlin.Int");
                i2 = ((Integer) invoke).intValue();
            } catch (Throwable th2) {
                Log.e("DriveModeController", "sysGetInt(sys.drive.mode.value) failed", th2);
            }
            valueOf = (i2 < 0 || i2 >= 8) ? null : Integer.valueOf(i2);
        } else {
            valueOf = Integer.valueOf(i);
        }
        Log.i("DriveModeController", "toggleSport: current=" + valueOf + " previous=" + this.c + " engaged=" + this.d);
        int i3 = 1;
        if (!this.d) {
            if (valueOf != null && valueOf.intValue() != 2) {
                this.c = valueOf.intValue();
            }
            boolean a = a(2);
            if (a) {
                this.d = true;
            }
            Log.i("DriveModeController", "toggleSport: " + valueOf + " -> SPORT (ok=" + a + ')');
            return;
        }
        int i4 = this.c;
        if (i4 >= 0 && i4 < 8 && i4 != 2) {
            i3 = i4;
        }
        boolean a2 = a(i3);
        if (a2) {
            this.d = false;
        }
        Log.i("DriveModeController", "toggleSport: SPORT -> " + i3 + " (ok=" + a2 + ')');
    }
}
