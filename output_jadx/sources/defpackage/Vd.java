package defpackage;

import android.widget.PopupWindow;

/* loaded from: classes.dex */
public final class Vd implements PopupWindow.OnDismissListener {
    public final /* synthetic */ Xd a;

    public Vd(Xd xd) {
        this.a = xd;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.a.c();
    }
}
