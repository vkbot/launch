package defpackage;

import android.view.WindowInsets;

/* loaded from: classes.dex */
public abstract class so extends ro {
    public C0090db m;

    public so(yo yoVar, WindowInsets windowInsets) {
        super(yoVar, windowInsets);
        this.m = null;
    }

    @Override // defpackage.wo
    public yo b() {
        return yo.f(null, this.c.consumeStableInsets());
    }

    @Override // defpackage.wo
    public yo c() {
        return yo.f(null, this.c.consumeSystemWindowInsets());
    }

    @Override // defpackage.wo
    public final C0090db h() {
        if (this.m == null) {
            WindowInsets windowInsets = this.c;
            this.m = C0090db.b(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
        }
        return this.m;
    }

    @Override // defpackage.wo
    public boolean m() {
        return this.c.isConsumed();
    }
}
