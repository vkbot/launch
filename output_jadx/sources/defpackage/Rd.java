package defpackage;

import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public final class Rd extends FrameLayout implements J4 {
    public final CollapsibleActionView a;

    /* JADX WARN: Multi-variable type inference failed */
    public Rd(View view) {
        super(view.getContext());
        this.a = (CollapsibleActionView) view;
        addView(view);
    }

    @Override // defpackage.J4
    public final void a() {
        this.a.onActionViewExpanded();
    }

    @Override // defpackage.J4
    public final void e() {
        this.a.onActionViewCollapsed();
    }
}
