package defpackage;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;

/* loaded from: classes.dex */
public final class Y1 implements PopupWindow.OnDismissListener {
    public final /* synthetic */ R1 a;
    public final /* synthetic */ Z1 b;

    public Y1(Z1 z1, R1 r1) {
        this.b = z1;
        this.a = r1;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.b.E.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.a);
        }
    }
}
