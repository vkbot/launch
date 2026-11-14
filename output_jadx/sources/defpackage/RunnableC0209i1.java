package defpackage;

import android.content.Context;

/* renamed from: i1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0209i1 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Context b;

    public /* synthetic */ RunnableC0209i1(Context context, int i) {
        this.a = i;
        this.b = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x008e, code lost:
    
        if (r4 != null) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009d  */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.concurrent.Executor, java.lang.Object] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r10 = this;
            int r0 = r10.a
            switch(r0) {
                case 0: goto L30;
                case 1: goto L13;
                default: goto L5;
            }
        L5:
            Jf r0 = new Jf
            r0.<init>()
            T7 r1 = defpackage.AbstractC0152fm.k
            r2 = 0
            android.content.Context r10 = r10.b
            defpackage.AbstractC0152fm.S(r10, r0, r1, r2)
            return
        L13:
            java.util.concurrent.ThreadPoolExecutor r0 = new java.util.concurrent.ThreadPoolExecutor
            java.util.concurrent.TimeUnit r8 = java.util.concurrent.TimeUnit.MILLISECONDS
            java.util.concurrent.LinkedBlockingQueue r9 = new java.util.concurrent.LinkedBlockingQueue
            r9.<init>()
            r5 = 1
            r6 = 0
            r4 = 0
            r3 = r0
            r3.<init>(r4, r5, r6, r8, r9)
            i1 r1 = new i1
            android.content.Context r10 = r10.b
            r2 = 2
            r1.<init>(r10, r2)
            r0.execute(r1)
            return
        L30:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 33
            r2 = 1
            if (r0 < r1) goto Lb5
            android.content.ComponentName r0 = new android.content.ComponentName
            android.content.Context r10 = r10.b
            java.lang.String r1 = "androidx.appcompat.app.AppLocalesMetadataHolderService"
            r0.<init>(r10, r1)
            android.content.pm.PackageManager r1 = r10.getPackageManager()
            int r1 = r1.getComponentEnabledSetting(r0)
            if (r1 == r2) goto Lb5
            boolean r1 = defpackage.F3.a()
            java.lang.String r3 = "locale"
            if (r1 == 0) goto L8c
            Y2 r1 = defpackage.AbstractC0286l1.g
            java.util.Iterator r1 = r1.iterator()
        L58:
            r4 = r1
            ed r4 = (defpackage.C0117ed) r4
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L7a
            java.lang.Object r4 = r4.next()
            java.lang.ref.WeakReference r4 = (java.lang.ref.WeakReference) r4
            java.lang.Object r4 = r4.get()
            l1 r4 = (defpackage.AbstractC0286l1) r4
            if (r4 == 0) goto L58
            y1 r4 = (defpackage.LayoutInflaterFactory2C0615y1) r4
            android.content.Context r4 = r4.k
            if (r4 == 0) goto L58
            java.lang.Object r1 = r4.getSystemService(r3)
            goto L7b
        L7a:
            r1 = 0
        L7b:
            if (r1 == 0) goto L91
            android.os.LocaleList r1 = defpackage.AbstractC0260k1.a(r1)
            Ic r4 = new Ic
            Jc r5 = new Jc
            r5.<init>(r1)
            r4.<init>(r5)
            goto L93
        L8c:
            Ic r4 = defpackage.AbstractC0286l1.c
            if (r4 == 0) goto L91
            goto L93
        L91:
            Ic r4 = defpackage.Ic.b
        L93:
            Jc r1 = r4.a
            android.os.LocaleList r1 = r1.a
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto Lae
            java.lang.String r1 = defpackage.AbstractC0348nb.W(r10)
            java.lang.Object r3 = r10.getSystemService(r3)
            if (r3 == 0) goto Lae
            android.os.LocaleList r1 = defpackage.AbstractC0234j1.a(r1)
            defpackage.AbstractC0260k1.b(r3, r1)
        Lae:
            android.content.pm.PackageManager r10 = r10.getPackageManager()
            r10.setComponentEnabledSetting(r0, r2, r2)
        Lb5:
            defpackage.AbstractC0286l1.f = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.RunnableC0209i1.run():void");
    }
}
