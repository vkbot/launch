package defpackage;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* renamed from: x6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0595x6 extends Dd {
    public final RectF q;

    public C0595x6(Vh vh, RectF rectF) {
        super(vh);
        this.q = rectF;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [y6, android.graphics.drawable.Drawable, Ed] */
    @Override // defpackage.Dd, android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        ?? ed = new Ed(this);
        ed.v = this;
        ed.invalidateSelf();
        return ed;
    }

    public C0595x6(C0595x6 c0595x6) {
        super(c0595x6);
        this.q = c0595x6.q;
    }
}
