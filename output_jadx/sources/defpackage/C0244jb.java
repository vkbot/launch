package defpackage;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInstaller;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

/* renamed from: jb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0244jb {
    public static final Handler a = new Handler(Looper.getMainLooper());

    public static void a(Context context, File file, boolean z, boolean z2, InterfaceC0192ha interfaceC0192ha) {
        AbstractC0348nb.r(context, "context");
        AbstractC0348nb.r(file, "apkFile");
        Context applicationContext = context.getApplicationContext();
        try {
            PackageInstaller packageInstaller = applicationContext.getPackageManager().getPackageInstaller();
            AbstractC0348nb.q(packageInstaller, "getPackageInstaller(...)");
            PackageInstaller.SessionParams sessionParams = new PackageInstaller.SessionParams(1);
            sessionParams.setSize(file.length());
            if (z) {
                try {
                    PackageInstaller.SessionParams.class.getMethod("setRequestDowngrade", Boolean.TYPE).invoke(sessionParams, Boolean.TRUE);
                } catch (Exception e) {
                    Log.w("InstallManager", "setRequestDowngrade not available: " + e.getMessage());
                }
            }
            int createSession = packageInstaller.createSession(sessionParams);
            PackageInstaller.Session openSession = packageInstaller.openSession(createSession);
            AbstractC0348nb.q(openSession, "openSession(...)");
            OutputStream openWrite = openSession.openWrite("app.apk", 0L, file.length());
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    AbstractC0348nb.o(openWrite);
                    AbstractC0152fm.h(fileInputStream, openWrite);
                    C6.c(fileInputStream, null);
                    openSession.fsync(openWrite);
                    C6.c(openWrite, null);
                    String str = "com.omoda.launcher.INSTALL_RESULT_" + createSession;
                    applicationContext.registerReceiver(new C0193hb(applicationContext, file, z2, interfaceC0192ha), new IntentFilter(str));
                    openSession.commit(PendingIntent.getBroadcast(applicationContext, createSession, new Intent(str), 134217728).getIntentSender());
                    openSession.close();
                } finally {
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    C6.c(openWrite, th);
                    throw th2;
                }
            }
        } catch (Exception e2) {
            Log.e("InstallManager", "installApk failed for " + file.getName(), e2);
            if (!z2) {
                file.delete();
            }
            a.post(new RunnableC0141fb(interfaceC0192ha, e2, 0));
        }
    }

    public static /* synthetic */ void b(Context context, File file, boolean z, InterfaceC0192ha interfaceC0192ha, int i) {
        if ((i & 4) != 0) {
            z = false;
        }
        a(context, file, z, false, interfaceC0192ha);
    }

    public static void c(S9 s9, InterfaceC0192ha interfaceC0192ha, Context context, String str) {
        AbstractC0348nb.r(context, "context");
        AbstractC0348nb.r(str, "packageName");
        Context applicationContext = context.getApplicationContext();
        try {
            PackageInstaller packageInstaller = applicationContext.getPackageManager().getPackageInstaller();
            AbstractC0348nb.q(packageInstaller, "getPackageInstaller(...)");
            String str2 = "com.omoda.launcher.UNINSTALL_RESULT_" + str.hashCode();
            applicationContext.registerReceiver(new C0219ib(s9, interfaceC0192ha, applicationContext, str), new IntentFilter(str2));
            packageInstaller.uninstall(str, PendingIntent.getBroadcast(applicationContext, str.hashCode(), new Intent(str2), 134217728).getIntentSender());
        } catch (Exception e) {
            Log.e("InstallManager", "uninstall failed for ".concat(str), e);
            a.post(new RunnableC0141fb(interfaceC0192ha, e, 1));
        }
    }
}
