package defpackage;

import android.window.OnBackInvokedCallback;

/* renamed from: q1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0416q1 implements OnBackInvokedCallback {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0416q1(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public final void onBackInvoked() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ((LayoutInflaterFactory2C0615y1) obj).D();
                return;
            case 1:
                S9 s9 = (S9) obj;
                AbstractC0348nb.r(s9, "$onBackInvoked");
                s9.d();
                return;
            default:
                ((Runnable) obj).run();
                return;
        }
    }
}
