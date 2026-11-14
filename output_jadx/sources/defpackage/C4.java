package defpackage;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import java.util.List;

/* loaded from: classes.dex */
public final class C4 extends AbstractC0326mf {
    public final Rh c;
    public final Rh d;
    public final Rh e;

    public C4(Context context, Yk yk) {
        AbstractC0348nb.r(context, "context");
        Intent intent = new Intent("t19c.intent.action.CARPLAY").setPackage("com.yfve.t19c.projection.carplay.service");
        AbstractC0348nb.q(intent, "setPackage(...)");
        this.c = new Rh(context, intent, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface", yk);
        Intent intent2 = new Intent("com.yfve.t19c.projection.androidauto.uiproxy.uiproxyservice").setPackage("vendor.yfvet.projection.androidauto");
        AbstractC0348nb.q(intent2, "setPackage(...)");
        this.d = new Rh(context, intent2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient", yk);
        Intent intent3 = new Intent("com.yfve.t19c.projection.devicemanager.list").setPackage("com.yfve.t19c.projection.devicemanager");
        AbstractC0348nb.q(intent3, "setPackage(...)");
        this.e = new Rh(context, intent3, "com.yfve.t19c.projection.devicelist.DeviceListManager", Ph.c);
    }

    @Override // defpackage.AbstractC0326mf
    public final boolean a(EnumC0197hf enumC0197hf) {
        AbstractC0348nb.r(enumC0197hf, "phone");
        int ordinal = enumC0197hf.ordinal();
        C0643z4 c0643z4 = C0643z4.k;
        if (ordinal == 0) {
            Integer num = (Integer) this.d.a(11, c0643z4, C0643z4.d);
            return num != null && num.intValue() == 1;
        }
        if (ordinal == 1) {
            return AbstractC0348nb.g(this.c.a(12, c0643z4, C0643z4.c), Boolean.TRUE);
        }
        throw new RuntimeException();
    }

    @Override // defpackage.AbstractC0326mf
    public final List b(EnumC0197hf enumC0197hf) {
        AbstractC0348nb.r(enumC0197hf, "phone");
        int ordinal = enumC0197hf.ordinal();
        if (ordinal == 0) {
            return M4.p0(this.d, this.e);
        }
        if (ordinal == 1) {
            return AbstractC0348nb.N(this.c);
        }
        throw new RuntimeException();
    }

    @Override // defpackage.AbstractC0326mf
    public final AbstractC0454rf c(EnumC0197hf enumC0197hf) {
        AbstractC0348nb.r(enumC0197hf, "phone");
        int ordinal = enumC0197hf.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                throw new RuntimeException();
            }
            Intent flags = new Intent("com.chery.setting.ACTION_OPEN_SYSTEM_SETTING").setClassName("com.chery.settings", "com.chery.settings.view.settings.activity.SettingsActivity").putExtra("SettingMenuID", "1").setFlags(270532608);
            AbstractC0348nb.q(flags, "setFlags(...)");
            return new C0430qf(flags);
        }
        A4 a4 = new A4(1, this, C4.class, "readAndroidAutoPhones", "readAndroidAutoPhones(Landroid/os/Parcel;)Ljava/util/List;", 0);
        List list = (List) this.e.a(4, C0643z4.k, a4);
        if (list == null) {
            list = C0547v8.a;
        }
        int size = list.size();
        if (size == 0) {
            return C0404pf.a;
        }
        if (size != 1) {
            return new C0378of(list);
        }
        C0352nf c0352nf = C0352nf.a;
        e((Cif) list.get(0));
        return c0352nf;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0093  */
    @Override // defpackage.AbstractC0326mf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.AbstractC0454rf d(defpackage.EnumC0197hf r7) {
        /*
            r6 = this;
            java.lang.String r6 = "PhoneProjection"
            java.lang.String r0 = "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm #19: "
            java.lang.String r1 = "phone"
            defpackage.AbstractC0348nb.r(r7, r1)
            int r7 = r7.ordinal()
            if (r7 == 0) goto La1
            r1 = 1
            if (r7 != r1) goto L9b
            java.lang.String r7 = "CarPlayCommService"
            r2 = 0
            java.lang.String r3 = "android.os.ServiceManager"
            java.lang.Class r3 = java.lang.Class.forName(r3)     // Catch: java.lang.Exception -> L36
            java.lang.String r4 = "getService"
            java.lang.Class<java.lang.String> r5 = java.lang.String.class
            java.lang.Class[] r5 = new java.lang.Class[]{r5}     // Catch: java.lang.Exception -> L36
            java.lang.reflect.Method r3 = r3.getMethod(r4, r5)     // Catch: java.lang.Exception -> L36
            java.lang.Object[] r7 = new java.lang.Object[]{r7}     // Catch: java.lang.Exception -> L36
            java.lang.Object r7 = r3.invoke(r2, r7)     // Catch: java.lang.Exception -> L36
            boolean r3 = r7 instanceof android.os.IBinder     // Catch: java.lang.Exception -> L36
            if (r3 == 0) goto L48
            android.os.IBinder r7 = (android.os.IBinder) r7     // Catch: java.lang.Exception -> L36
            goto L49
        L36:
            r7 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "CarPlayCommService: "
            r3.<init>(r4)
            r3.append(r7)
            java.lang.String r7 = r3.toString()
            android.util.Log.w(r6, r7)
        L48:
            r7 = r2
        L49:
            if (r7 == 0) goto L8b
            java.lang.String r3 = "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"
            android.os.Parcel r4 = android.os.Parcel.obtain()
            java.lang.String r5 = "obtain(...)"
            defpackage.AbstractC0348nb.q(r4, r5)
            r4.writeInterfaceToken(r3)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            r3 = 32
            byte[] r3 = new byte[r3]     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            r4.writeByteArray(r3)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            r3 = 19
            boolean r7 = r7.transact(r3, r4, r2, r1)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            r4.recycle()
            goto L82
        L6a:
            r6 = move-exception
            goto L87
        L6c:
            r7 = move-exception
            java.lang.String r1 = "ServiceLink"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6a
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L6a
            r2.append(r7)     // Catch: java.lang.Throwable -> L6a
            java.lang.String r7 = r2.toString()     // Catch: java.lang.Throwable -> L6a
            android.util.Log.w(r1, r7)     // Catch: java.lang.Throwable -> L6a
            r4.recycle()
            r7 = 0
        L82:
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r7)
            goto L8b
        L87:
            r4.recycle()
            throw r6
        L8b:
            java.lang.Boolean r7 = java.lang.Boolean.TRUE
            boolean r7 = defpackage.AbstractC0348nb.g(r2, r7)
            if (r7 != 0) goto L98
            java.lang.String r7 = "CarPlay screen not asked for: no CarPlayCommService"
            android.util.Log.w(r6, r7)
        L98:
            nf r6 = defpackage.C0352nf.a
            goto Lcb
        L9b:
            c5 r6 = new c5
            r6.<init>()
            throw r6
        La1:
            qf r6 = new qf
            android.content.Intent r7 = new android.content.Intent
            java.lang.String r0 = "android.intent.action.MAIN"
            r7.<init>(r0)
            java.lang.String r0 = "android.intent.category.LAUNCHER"
            android.content.Intent r7 = r7.addCategory(r0)
            android.content.ComponentName r0 = new android.content.ComponentName
            java.lang.String r1 = "com.yfve.car.androidauto"
            java.lang.String r2 = "com.yfve.car.androidauto.AndroidAutoActivity"
            r0.<init>(r1, r2)
            android.content.Intent r7 = r7.setComponent(r0)
            r0 = 270532608(0x10200000, float:3.1554436E-29)
            android.content.Intent r7 = r7.setFlags(r0)
            java.lang.String r0 = "setFlags(...)"
            defpackage.AbstractC0348nb.q(r7, r0)
            r6.<init>(r7)
        Lcb:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C4.d(hf):rf");
    }

    @Override // defpackage.AbstractC0326mf
    public final void e(Cif cif) {
        AbstractC0348nb.r(cif, "device");
        if (((C0486sm) this.e.a(3, new B4(0, cif), C0643z4.e)) == null) {
            Log.w("PhoneProjection", "Android Auto session not asked for");
        }
    }
}
