package defpackage;

import android.view.View;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public abstract class Ym {
    public static yo a(View view) {
        WindowInsets rootWindowInsets = view.getRootWindowInsets();
        if (rootWindowInsets == null) {
            return null;
        }
        yo f = yo.f(null, rootWindowInsets);
        wo woVar = f.a;
        woVar.p(f);
        woVar.d(view.getRootView());
        return f;
    }

    public static int b(View view) {
        return view.getScrollIndicators();
    }

    public static void c(View view, int i) {
        view.setScrollIndicators(i);
    }

    public static void d(View view, int i, int i2) {
        view.setScrollIndicators(i, i2);
    }
}
