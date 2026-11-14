package defpackage;

import android.window.BackEvent;
import android.window.OnBackAnimationCallback;

/* loaded from: classes.dex */
public final class Me implements OnBackAnimationCallback {
    public final /* synthetic */ InterfaceC0089da a;
    public final /* synthetic */ InterfaceC0089da b;
    public final /* synthetic */ S9 c;
    public final /* synthetic */ S9 d;

    public Me(InterfaceC0089da interfaceC0089da, InterfaceC0089da interfaceC0089da2, S9 s9, S9 s92) {
        this.a = interfaceC0089da;
        this.b = interfaceC0089da2;
        this.c = s9;
        this.d = s92;
    }

    public final void onBackCancelled() {
        this.d.d();
    }

    public final void onBackInvoked() {
        this.c.d();
    }

    public final void onBackProgressed(BackEvent backEvent) {
        AbstractC0348nb.r(backEvent, "backEvent");
        this.b.h(new C0107e3(backEvent));
    }

    public final void onBackStarted(BackEvent backEvent) {
        AbstractC0348nb.r(backEvent, "backEvent");
        this.a.h(new C0107e3(backEvent));
    }
}
