package defpackage;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class Zl extends Yl {
    public final /* synthetic */ W2 a;
    public final /* synthetic */ ViewTreeObserverOnPreDrawListenerC0023am b;

    public Zl(ViewTreeObserverOnPreDrawListenerC0023am viewTreeObserverOnPreDrawListenerC0023am, W2 w2) {
        this.b = viewTreeObserverOnPreDrawListenerC0023am;
        this.a = w2;
    }

    @Override // defpackage.Wl
    public final void e(Xl xl) {
        ((ArrayList) this.a.getOrDefault(this.b.b, null)).remove(xl);
        xl.u(this);
    }
}
