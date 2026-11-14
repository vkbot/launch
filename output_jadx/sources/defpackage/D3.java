package defpackage;

import java.io.File;

/* loaded from: classes.dex */
public abstract class D3 {
    public static final boolean a = new File("/system/product/priv-app/T19FL3SystemUI/T19FL3SystemUI.apk").exists();
    public static final boolean b;

    static {
        boolean z;
        String str;
        if (!new File("/system/product/priv-app/T19CFL1systemui/T19CFL1systemui.apk").exists()) {
            try {
                Object invoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, "debug.omoda.navlayout");
                AbstractC0348nb.p(invoke, "null cannot be cast to non-null type kotlin.String");
                str = (String) invoke;
            } catch (Throwable unused) {
                str = "";
            }
            if (!str.equals("fun")) {
                z = false;
                b = z;
            }
        }
        z = true;
        b = z;
    }
}
