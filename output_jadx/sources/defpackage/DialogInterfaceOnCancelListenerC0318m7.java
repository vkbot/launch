package defpackage;

import android.app.Dialog;
import android.content.DialogInterface;

/* renamed from: m7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC0318m7 implements DialogInterface.OnCancelListener {
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0396p7 a;

    public DialogInterfaceOnCancelListenerC0318m7(DialogInterfaceOnCancelListenerC0396p7 dialogInterfaceOnCancelListenerC0396p7) {
        this.a = dialogInterfaceOnCancelListenerC0396p7;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        DialogInterfaceOnCancelListenerC0396p7 dialogInterfaceOnCancelListenerC0396p7 = this.a;
        Dialog dialog = dialogInterfaceOnCancelListenerC0396p7.a0;
        if (dialog != null) {
            dialogInterfaceOnCancelListenerC0396p7.onCancel(dialog);
        }
    }
}
