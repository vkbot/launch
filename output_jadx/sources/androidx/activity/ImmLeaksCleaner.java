package androidx.activity;

import android.view.inputmethod.InputMethodManager;
import defpackage.InterfaceC0039bc;
import defpackage.Vb;
import defpackage.Zb;

/* loaded from: classes.dex */
final class ImmLeaksCleaner implements Zb {
    public static int a;

    @Override // defpackage.Zb
    public final void b(InterfaceC0039bc interfaceC0039bc, Vb vb) {
        if (vb != Vb.ON_DESTROY) {
            return;
        }
        if (a == 0) {
            try {
                a = 2;
                InputMethodManager.class.getDeclaredField("mServedView").setAccessible(true);
                InputMethodManager.class.getDeclaredField("mNextServedView").setAccessible(true);
                InputMethodManager.class.getDeclaredField("mH").setAccessible(true);
                a = 1;
            } catch (NoSuchFieldException unused) {
            }
        }
        if (a == 1) {
            throw null;
        }
    }
}
