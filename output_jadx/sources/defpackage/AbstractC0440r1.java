package defpackage;

import android.app.Activity;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import java.util.Objects;

/* renamed from: r1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0440r1 {
    public static OnBackInvokedDispatcher a(Activity activity) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        onBackInvokedDispatcher = activity.getOnBackInvokedDispatcher();
        return onBackInvokedDispatcher;
    }

    public static OnBackInvokedCallback b(Object obj, LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1) {
        Objects.requireNonNull(layoutInflaterFactory2C0615y1);
        C0416q1 c0416q1 = new C0416q1(0, layoutInflaterFactory2C0615y1);
        B.e(obj).registerOnBackInvokedCallback(1000000, c0416q1);
        return c0416q1;
    }

    public static void c(Object obj, Object obj2) {
        B.e(obj).unregisterOnBackInvokedCallback(B.b(obj2));
    }
}
