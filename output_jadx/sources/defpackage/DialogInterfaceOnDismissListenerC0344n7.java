package defpackage;

import android.app.Dialog;
import android.content.DialogInterface;

/* renamed from: n7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterfaceOnDismissListenerC0344n7 implements DialogInterface.OnDismissListener {
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0396p7 a;

    public DialogInterfaceOnDismissListenerC0344n7(DialogInterfaceOnCancelListenerC0396p7 dialogInterfaceOnCancelListenerC0396p7) {
        this.a = dialogInterfaceOnCancelListenerC0396p7;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        DialogInterfaceOnCancelListenerC0396p7 dialogInterfaceOnCancelListenerC0396p7 = this.a;
        Dialog dialog = dialogInterfaceOnCancelListenerC0396p7.a0;
        if (dialog != null) {
            dialogInterfaceOnCancelListenerC0396p7.onDismiss(dialog);
        }
    }
}
