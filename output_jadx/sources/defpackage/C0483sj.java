package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import java.util.List;

/* renamed from: sj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0483sj extends Drawable {
    public final List a;
    public final Rect b;
    public final Paint c;
    public final RectF d;

    public C0483sj(Rect rect, List list) {
        AbstractC0348nb.r(list, "pieces");
        AbstractC0348nb.r(rect, "frame");
        this.a = list;
        this.b = rect;
        this.c = new Paint(2);
        this.d = new RectF();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        AbstractC0348nb.r(canvas, "canvas");
        if (canvas.isHardwareAccelerated()) {
            if (this.b.isEmpty()) {
                return;
            }
            float width = getBounds().width() / r0.width();
            float height = getBounds().height() / r0.height();
            for (C0458rj c0458rj : this.a) {
                if (!c0458rj.a.isRecycled()) {
                    RectF rectF = this.d;
                    float f = getBounds().left;
                    Rect rect = c0458rj.c;
                    rectF.set(((rect.left - r0.left) * width) + f, ((rect.top - r0.top) * height) + getBounds().top, ((rect.right - r0.left) * width) + getBounds().left, ((rect.bottom - r0.top) * height) + getBounds().top);
                    canvas.drawBitmap(c0458rj.a, c0458rj.b, rectF, this.c);
                }
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.b.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.b.width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.c.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.c.setColorFilter(colorFilter);
    }
}
