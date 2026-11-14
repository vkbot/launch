package defpackage;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.omoda.launcher.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class T3 extends AbstractC0275kg {
    public final Paint a;
    public final List b;

    public T3() {
        Paint paint = new Paint();
        this.a = paint;
        this.b = Collections.unmodifiableList(new ArrayList());
        paint.setStrokeWidth(5.0f);
        paint.setColor(-65281);
    }

    @Override // defpackage.AbstractC0275kg
    public final void f(Canvas canvas, RecyclerView recyclerView) {
        int i;
        int i2;
        int C;
        int D;
        Paint paint = this.a;
        paint.setStrokeWidth(recyclerView.getResources().getDimension(R.dimen.m3_carousel_debug_keyline_width));
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((Mb) it.next()).getClass();
            ThreadLocal threadLocal = U4.a;
            float f = 1.0f - 0.0f;
            paint.setColor(Color.argb((int) ((Color.alpha(-16776961) * 0.0f) + (Color.alpha(-65281) * f)), (int) ((Color.red(-16776961) * 0.0f) + (Color.red(-65281) * f)), (int) ((Color.green(-16776961) * 0.0f) + (Color.green(-65281) * f)), (int) ((Color.blue(-16776961) * 0.0f) + (Color.blue(-65281) * f))));
            if (((CarouselLayoutManager) recyclerView.getLayoutManager()).A0()) {
                U3 u3 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).p;
                switch (u3.b) {
                    case 0:
                        i = 0;
                        break;
                    default:
                        i = u3.c.E();
                        break;
                }
                float f2 = i;
                U3 u32 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).p;
                switch (u32.b) {
                    case 0:
                        i2 = u32.c.o;
                        break;
                    default:
                        CarouselLayoutManager carouselLayoutManager = u32.c;
                        i2 = carouselLayoutManager.o - carouselLayoutManager.B();
                        break;
                }
                canvas.drawLine(0.0f, f2, 0.0f, i2, paint);
            } else {
                U3 u33 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).p;
                switch (u33.b) {
                    case 0:
                        C = u33.c.C();
                        break;
                    default:
                        C = 0;
                        break;
                }
                float f3 = C;
                U3 u34 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).p;
                switch (u34.b) {
                    case 0:
                        CarouselLayoutManager carouselLayoutManager2 = u34.c;
                        D = carouselLayoutManager2.n - carouselLayoutManager2.D();
                        break;
                    default:
                        D = u34.c.n;
                        break;
                }
                canvas.drawLine(f3, 0.0f, D, 0.0f, paint);
            }
        }
    }
}
