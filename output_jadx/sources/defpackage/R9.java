package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import android.util.Log;
import java.util.List;

/* loaded from: classes.dex */
public final class R9 extends AbstractC0326mf {
    public final Context c;
    public final Rh d;

    public R9(Context context, Yk yk) {
        AbstractC0348nb.r(context, "context");
        this.c = context;
        Intent putExtra = new Intent("com.yfve.caradapter.3rdapp").setComponent(new ComponentName("com.yfve.caradapter", "com.yfve.caradapter.services.CarAdapterService")).putExtra("pid", Process.myPid()).putExtra("owner", context.getPackageName());
        AbstractC0348nb.q(putExtra, "putExtra(...)");
        this.d = new Rh(context, putExtra, "com.yfve.connectivitysdk.managers.ICarControl", yk);
    }

    @Override // defpackage.AbstractC0326mf
    public final boolean a(EnumC0197hf enumC0197hf) {
        AbstractC0348nb.r(enumC0197hf, "phone");
        return this.d.a(11, C0643z4.k, new A4(1, this, R9.class, "readConnectedPhone", "readConnectedPhone(Landroid/os/Parcel;)Lcom/omoda/launcher/factory/Phone;", 1)) == enumC0197hf;
    }

    @Override // defpackage.AbstractC0326mf
    public final List b(EnumC0197hf enumC0197hf) {
        AbstractC0348nb.r(enumC0197hf, "phone");
        return AbstractC0348nb.N(this.d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00b6, code lost:
    
        if (r14 == 1) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b8, code lost:
    
        r14 = new android.content.Intent("com.chery.setting.ACTION_OPEN_SYSTEM_SETTING").setClassName("com.chery.settings", "com.chery.settings.view.settings.activity.SettingsActivity").putExtra("SettingMenuID", "1").setFlags(270532608);
        defpackage.AbstractC0348nb.q(r14, "setFlags(...)");
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:?, code lost:
    
        return new defpackage.C0430qf(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d2, code lost:
    
        r14 = defpackage.C0352nf.a;
        r13.sendBroadcast(new android.content.Intent("com.chery.settings.START_AA_CONNECT_ACTION").setPackage("com.chery.settings"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:?, code lost:
    
        return r14;
     */
    @Override // defpackage.AbstractC0326mf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.AbstractC0454rf c(defpackage.EnumC0197hf r14) {
        /*
            r13 = this;
            android.content.Context r13 = r13.c
            java.lang.String r0 = "phone"
            defpackage.AbstractC0348nb.r(r14, r0)
            int r14 = r14.ordinal()
            r0 = 1
            java.lang.String r1 = "setFlags(...)"
            r2 = 270532608(0x10200000, float:3.1554436E-29)
            java.lang.String r3 = "1"
            java.lang.String r4 = "SettingMenuID"
            java.lang.String r5 = "com.chery.settings.view.settings.activity.SettingsActivity"
            java.lang.String r6 = "com.chery.setting.ACTION_OPEN_SYSTEM_SETTING"
            java.lang.String r7 = "com.chery.settings"
            if (r14 == 0) goto L3f
            if (r14 != r0) goto L39
            qf r13 = new qf
            android.content.Intent r14 = new android.content.Intent
            r14.<init>(r6)
            android.content.Intent r14 = r14.setClassName(r7, r5)
            android.content.Intent r14 = r14.putExtra(r4, r3)
            android.content.Intent r14 = r14.setFlags(r2)
            defpackage.AbstractC0348nb.q(r14, r1)
            r13.<init>(r14)
            goto Le6
        L39:
            c5 r13 = new c5
            r13.<init>()
            throw r13
        L3f:
            r14 = 0
            android.content.ContentResolver r8 = r13.getContentResolver()     // Catch: java.lang.Exception -> L6e
            java.lang.String r9 = "com.chery.settings.BluetoothAddress"
            java.lang.String r8 = android.provider.Settings.Global.getString(r8, r9)     // Catch: java.lang.Exception -> L6e
            if (r8 == 0) goto Lb4
            int r9 = r8.length()     // Catch: java.lang.Exception -> L6e
            if (r9 != 0) goto L53
            goto Lb4
        L53:
            org.json.JSONArray r9 = new org.json.JSONArray     // Catch: java.lang.Exception -> L6e
            r9.<init>(r8)     // Catch: java.lang.Exception -> L6e
            int r8 = r9.length()     // Catch: java.lang.Exception -> L6e
            mb r8 = defpackage.AbstractC0554vf.o(r14, r8)     // Catch: java.lang.Exception -> L6e
            boolean r10 = r8 instanceof java.util.Collection     // Catch: java.lang.Exception -> L6e
            if (r10 == 0) goto L70
            r10 = r8
            java.util.Collection r10 = (java.util.Collection) r10     // Catch: java.lang.Exception -> L6e
            boolean r10 = r10.isEmpty()     // Catch: java.lang.Exception -> L6e
            if (r10 == 0) goto L70
            goto Lb4
        L6e:
            r8 = move-exception
            goto La1
        L70:
            java.util.Iterator r8 = r8.iterator()     // Catch: java.lang.Exception -> L6e
            r10 = r14
        L75:
            r11 = r8
            lb r11 = (defpackage.C0296lb) r11     // Catch: java.lang.Exception -> L6e
            boolean r11 = r11.c     // Catch: java.lang.Exception -> L6e
            if (r11 == 0) goto L9f
            r11 = r8
            lb r11 = (defpackage.C0296lb) r11     // Catch: java.lang.Exception -> L6e
            int r11 = r11.a()     // Catch: java.lang.Exception -> L6e
            org.json.JSONObject r11 = r9.optJSONObject(r11)     // Catch: java.lang.Exception -> L6e
            if (r11 == 0) goto L75
            java.lang.String r12 = "deviceType"
            int r11 = r11.optInt(r12)     // Catch: java.lang.Exception -> L6e
            r12 = 2
            if (r11 != r12) goto L75
            int r10 = r10 + 1
            if (r10 < 0) goto L97
            goto L75
        L97:
            java.lang.ArithmeticException r8 = new java.lang.ArithmeticException     // Catch: java.lang.Exception -> L6e
            java.lang.String r9 = "Count overflow has happened."
            r8.<init>(r9)     // Catch: java.lang.Exception -> L6e
            throw r8     // Catch: java.lang.Exception -> L6e
        L9f:
            r14 = r10
            goto Lb4
        La1:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r10 = "paired phones: "
            r9.<init>(r10)
            r9.append(r8)
            java.lang.String r8 = r9.toString()
            java.lang.String r9 = "PhoneProjection"
            android.util.Log.w(r9, r8)
        Lb4:
            if (r14 == 0) goto Le4
            if (r14 == r0) goto Ld2
            qf r13 = new qf
            android.content.Intent r14 = new android.content.Intent
            r14.<init>(r6)
            android.content.Intent r14 = r14.setClassName(r7, r5)
            android.content.Intent r14 = r14.putExtra(r4, r3)
            android.content.Intent r14 = r14.setFlags(r2)
            defpackage.AbstractC0348nb.q(r14, r1)
            r13.<init>(r14)
            goto Le6
        Ld2:
            nf r14 = defpackage.C0352nf.a
            android.content.Intent r0 = new android.content.Intent
            java.lang.String r1 = "com.chery.settings.START_AA_CONNECT_ACTION"
            r0.<init>(r1)
            android.content.Intent r0 = r0.setPackage(r7)
            r13.sendBroadcast(r0)
            r13 = r14
            goto Le6
        Le4:
            pf r13 = defpackage.C0404pf.a
        Le6:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.R9.c(hf):rf");
    }

    @Override // defpackage.AbstractC0326mf
    public final AbstractC0454rf d(EnumC0197hf enumC0197hf) {
        AbstractC0348nb.r(enumC0197hf, "phone");
        if (this.d.a(12, C0643z4.h, C0643z4.i) == null) {
            Log.w("PhoneProjection", enumC0197hf + " screen not asked for");
        }
        return C0352nf.a;
    }
}
