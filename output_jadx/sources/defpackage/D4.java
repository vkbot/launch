package defpackage;

import android.view.View;

/* loaded from: classes.dex */
public final /* synthetic */ class D4 implements View.OnFocusChangeListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ C8 b;

    public /* synthetic */ D4(C8 c8, int i) {
        this.a = i;
        this.b = c8;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        switch (this.a) {
            case 0:
                G4 g4 = (G4) this.b;
                g4.t(g4.u());
                return;
            default:
                P7 p7 = (P7) this.b;
                p7.l = z;
                p7.q();
                if (z) {
                    return;
                }
                p7.t(false);
                p7.m = false;
                return;
        }
    }
}
