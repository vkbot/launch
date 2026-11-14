package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class Na extends Drawable {
    public final int a;
    public final float b;
    public final List c;
    public final Path d;

    public Na(Drawable drawable, int i, float f) {
        List N;
        this.a = i;
        this.b = f;
        if (drawable instanceof AdaptiveIconDrawable) {
            AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable) drawable;
            N = Z2.W(new Drawable[]{adaptiveIconDrawable.getBackground(), adaptiveIconDrawable.getForeground()});
        } else {
            N = AbstractC0348nb.N(drawable);
        }
        this.c = N;
        this.d = new Path();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        AbstractC0348nb.r(canvas, "canvas");
        int save = canvas.save();
        canvas.clipPath(this.d);
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((Drawable) it.next()).draw(canvas);
        }
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.a;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.a;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        AbstractC0348nb.r(rect, "bounds");
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((Drawable) it.next()).setBounds(rect);
        }
        float f = this.b;
        int i = this.a;
        if (i > 0) {
            f = (f * rect.width()) / i;
        }
        Path path = this.d;
        path.reset();
        path.addRoundRect(new RectF(rect), f, f, Path.Direction.CW);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((Drawable) it.next()).setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((Drawable) it.next()).setColorFilter(colorFilter);
        }
    }
}
