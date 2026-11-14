package defpackage;

import android.view.ActionProvider;
import android.view.View;

/* loaded from: classes.dex */
public final class Qd implements ActionProvider.VisibilityListener {
    public final ActionProvider a;
    public final /* synthetic */ Td b;
    public L c;

    public Qd(Td td, ActionProvider actionProvider) {
        this.b = td;
        this.a = actionProvider;
    }

    public final View a(Pd pd) {
        return this.a.onCreateActionView(pd);
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z) {
        L l = this.c;
        if (l != null) {
            Ld ld = ((Pd) l.b).n;
            ld.h = true;
            ld.p(true);
        }
    }
}
