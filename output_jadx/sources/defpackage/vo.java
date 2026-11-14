package defpackage;

import android.graphics.Insets;
import android.view.View;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public final class vo extends uo {
    public static final yo q;

    static {
        WindowInsets windowInsets;
        windowInsets = WindowInsets.CONSUMED;
        q = yo.f(null, windowInsets);
    }

    public vo(yo yoVar, WindowInsets windowInsets) {
        super(yoVar, windowInsets);
    }

    @Override // defpackage.ro, defpackage.wo
    public final void d(View view) {
    }

    @Override // defpackage.ro, defpackage.wo
    public C0090db f(int i) {
        Insets insets;
        insets = this.c.getInsets(xo.a(i));
        return C0090db.c(insets);
    }
}
