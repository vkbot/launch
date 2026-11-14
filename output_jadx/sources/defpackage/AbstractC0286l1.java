package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* renamed from: l1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0286l1 {
    public static final E2 a = new E2(new Object());
    public static final int b = -100;
    public static Ic c = null;
    public static Ic d = null;
    public static Boolean e = null;
    public static boolean f = false;
    public static final Y2 g = new Y2();
    public static final Object h = new Object();
    public static final Object i = new Object();

    public static boolean c(Context context) {
        if (e == null) {
            try {
                int i2 = C2.a;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) C2.class), B2.a() | 128).metaData;
                if (bundle != null) {
                    e = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                e = Boolean.FALSE;
            }
        }
        return e.booleanValue();
    }

    public static void g(LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1) {
        synchronized (h) {
            try {
                Iterator it = g.iterator();
                while (true) {
                    C0117ed c0117ed = (C0117ed) it;
                    if (c0117ed.hasNext()) {
                        AbstractC0286l1 abstractC0286l1 = (AbstractC0286l1) ((WeakReference) c0117ed.next()).get();
                        if (abstractC0286l1 == layoutInflaterFactory2C0615y1 || abstractC0286l1 == null) {
                            c0117ed.remove();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void a();

    public abstract void b();

    public abstract void e();

    public abstract void f();

    public abstract boolean h(int i2);

    public abstract void i(int i2);

    public abstract void j(View view);

    public abstract void k(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void l(CharSequence charSequence);
}
