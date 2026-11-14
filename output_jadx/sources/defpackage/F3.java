package defpackage;

import android.os.Build;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class F3 {
    static {
        int i = Build.VERSION.SDK_INT;
        E3 e3 = E3.a;
        if (i >= 30) {
            e3.a(30);
        }
        if (i >= 30) {
            e3.a(31);
        }
        if (i >= 30) {
            e3.a(33);
        }
        if (i >= 30) {
            e3.a(1000000);
        }
    }

    public static final boolean a() {
        int i = Build.VERSION.SDK_INT;
        if (i < 33) {
            if (i >= 32) {
                String str = Build.VERSION.CODENAME;
                AbstractC0348nb.q(str, "CODENAME");
                if (!"REL".equals(str)) {
                    Locale locale = Locale.ROOT;
                    String upperCase = str.toUpperCase(locale);
                    AbstractC0348nb.q(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
                    String upperCase2 = "Tiramisu".toUpperCase(locale);
                    AbstractC0348nb.q(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
                    if (upperCase.compareTo(upperCase2) >= 0) {
                    }
                }
            }
            return false;
        }
        return true;
    }
}
