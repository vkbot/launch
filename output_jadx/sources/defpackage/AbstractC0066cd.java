package defpackage;

import android.os.Looper;
import java.util.Arrays;
import java.util.Iterator;
import java.util.ServiceConfigurationError;

/* renamed from: cd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0066cd {
    public static final Ca a;

    /* JADX WARN: Type inference failed for: r0v4, types: [H0, java.lang.Object] */
    static {
        String str;
        int i = AbstractC0175gj.a;
        Object obj = null;
        try {
            str = System.getProperty("kotlinx.coroutines.fast.service.loader");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str != null) {
            Boolean.parseBoolean(str);
        }
        try {
            Iterator it = Arrays.asList(new Object()).iterator();
            AbstractC0348nb.r(it, "<this>");
            Iterator it2 = Nh.x(new C0368o5(new C0401pc(1, it))).iterator();
            if (it2.hasNext()) {
                obj = it2.next();
                if (it2.hasNext()) {
                    int a2 = ((H0) obj).a();
                    do {
                        Object next = it2.next();
                        int a3 = ((H0) next).a();
                        if (a2 < a3) {
                            obj = next;
                            a2 = a3;
                        }
                    } while (it2.hasNext());
                }
            }
            H0 h0 = (H0) obj;
            if (h0 == null) {
                throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
            }
            try {
                h0.getClass();
                Looper mainLooper = Looper.getMainLooper();
                if (mainLooper == null) {
                    throw new IllegalStateException("The main looper is not available");
                }
                a = new Ca(Da.a(mainLooper));
            } catch (Throwable th) {
                h0.getClass();
                throw th;
            }
        } catch (Throwable th2) {
            throw new ServiceConfigurationError(th2.getMessage(), th2);
        }
    }
}
