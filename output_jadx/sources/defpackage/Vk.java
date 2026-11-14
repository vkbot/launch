package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.view.View;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* loaded from: classes.dex */
public final class Vk extends View {
    public final Tk a;
    public final Paint b;
    public final Paint c;
    public final Path d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Vk(TopOverlayAccessibilityService topOverlayAccessibilityService, Tk tk) {
        super(topOverlayAccessibilityService);
        AbstractC0348nb.r(tk, "cornerPosition");
        this.a = tk;
        Paint paint = new Paint(1);
        paint.setColor(-16777216);
        this.b = paint;
        Paint paint2 = new Paint(1);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.c = paint2;
        this.d = new Path();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        AbstractC0348nb.r(canvas, "canvas");
        float width = getWidth();
        float height = getHeight();
        int saveLayer = canvas.saveLayer(0.0f, 0.0f, width, height, null);
        canvas.drawRect(0.0f, 0.0f, width, height, this.b);
        Path path = this.d;
        path.reset();
        int ordinal = this.a.ordinal();
        if (ordinal == 0) {
            path.addCircle(width, height, width, Path.Direction.CCW);
        } else if (ordinal == 1) {
            path.addCircle(0.0f, height, width, Path.Direction.CCW);
        } else if (ordinal == 2) {
            path.addCircle(width, 0.0f, width, Path.Direction.CCW);
        } else if (ordinal == 3) {
            path.addCircle(0.0f, 0.0f, width, Path.Direction.CCW);
        }
        canvas.drawPath(path, this.c);
        canvas.restoreToCount(saveLayer);
    }
}
