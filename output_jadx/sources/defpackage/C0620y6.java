package defpackage;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* renamed from: y6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0620y6 extends Ed {
    public static final /* synthetic */ int w = 0;
    public C0595x6 v;

    @Override // defpackage.Ed
    public final void d(Canvas canvas) {
        if (this.v.q.isEmpty()) {
            super.d(canvas);
            return;
        }
        canvas.save();
        canvas.clipOutRect(this.v.q);
        super.d(canvas);
        canvas.restore();
    }

    public final void m(float f, float f2, float f3, float f4) {
        RectF rectF = this.v.q;
        if (f == rectF.left && f2 == rectF.top && f3 == rectF.right && f4 == rectF.bottom) {
            return;
        }
        rectF.set(f, f2, f3, f4);
        invalidateSelf();
    }

    @Override // defpackage.Ed, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.v = new C0595x6(this.v);
        return this;
    }
}
