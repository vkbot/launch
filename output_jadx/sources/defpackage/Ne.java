package defpackage;

import android.window.OnBackInvokedCallback;

/* loaded from: classes.dex */
public final class Ne {
    public static final Ne a = new Object();

    public final OnBackInvokedCallback a(InterfaceC0089da interfaceC0089da, InterfaceC0089da interfaceC0089da2, S9 s9, S9 s92) {
        AbstractC0348nb.r(interfaceC0089da, "onBackStarted");
        AbstractC0348nb.r(interfaceC0089da2, "onBackProgressed");
        AbstractC0348nb.r(s9, "onBackInvoked");
        AbstractC0348nb.r(s92, "onBackCancelled");
        return new Me(interfaceC0089da, interfaceC0089da2, s9, s92);
    }
}
