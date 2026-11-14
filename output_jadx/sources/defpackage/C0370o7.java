package defpackage;

import android.app.Dialog;
import android.view.View;

/* renamed from: o7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0370o7 extends AbstractC0348nb {
    public final /* synthetic */ C0548v9 r;
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0396p7 s;

    public C0370o7(DialogInterfaceOnCancelListenerC0396p7 dialogInterfaceOnCancelListenerC0396p7, C0548v9 c0548v9) {
        this.s = dialogInterfaceOnCancelListenerC0396p7;
        this.r = c0548v9;
    }

    @Override // defpackage.AbstractC0348nb
    public final View R(int i) {
        C0548v9 c0548v9 = this.r;
        if (c0548v9.S()) {
            return c0548v9.R(i);
        }
        Dialog dialog = this.s.a0;
        if (dialog != null) {
            return dialog.findViewById(i);
        }
        return null;
    }

    @Override // defpackage.AbstractC0348nb
    public final boolean S() {
        return this.r.S() || this.s.d0;
    }
}
