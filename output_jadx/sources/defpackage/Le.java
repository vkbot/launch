package defpackage;

import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;

/* loaded from: classes.dex */
public final class Le {
    public static final Le a = new Object();

    public final OnBackInvokedCallback a(S9 s9) {
        AbstractC0348nb.r(s9, "onBackInvoked");
        return new C0416q1(1, s9);
    }

    public final void b(Object obj, int i, Object obj2) {
        AbstractC0348nb.r(obj, "dispatcher");
        AbstractC0348nb.r(obj2, "callback");
        ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(i, (OnBackInvokedCallback) obj2);
    }

    public final void c(Object obj, Object obj2) {
        AbstractC0348nb.r(obj, "dispatcher");
        AbstractC0348nb.r(obj2, "callback");
        ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
    }
}
