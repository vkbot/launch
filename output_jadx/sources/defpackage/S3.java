package defpackage;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.carousel.CarouselLayoutManager;

/* loaded from: classes.dex */
public final class S3 extends C0297lc {
    public final /* synthetic */ int q;
    public final /* synthetic */ Object r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ S3(Object obj, Context context, int i) {
        super(context);
        this.q = i;
        this.r = obj;
    }

    @Override // defpackage.C0297lc
    public int b(View view, int i) {
        switch (this.q) {
            case 0:
                ((CarouselLayoutManager) this.r).getClass();
                return 0;
            default:
                return super.b(view, i);
        }
    }

    @Override // defpackage.C0297lc
    public int c(View view, int i) {
        switch (this.q) {
            case 0:
                ((CarouselLayoutManager) this.r).getClass();
                return 0;
            default:
                return super.c(view, i);
        }
    }

    @Override // defpackage.C0297lc
    public float d(DisplayMetrics displayMetrics) {
        switch (this.q) {
            case 1:
                return 100.0f / displayMetrics.densityDpi;
            case 2:
                return 100.0f / displayMetrics.densityDpi;
            default:
                return super.d(displayMetrics);
        }
    }

    @Override // defpackage.C0297lc
    public int e(int i) {
        switch (this.q) {
            case 1:
                return Math.min(100, super.e(i));
            default:
                return super.e(i);
        }
    }

    @Override // defpackage.C0297lc
    public PointF f(int i) {
        switch (this.q) {
            case 0:
                ((CarouselLayoutManager) this.r).getClass();
                return null;
            default:
                return super.f(i);
        }
    }

    @Override // defpackage.C0297lc
    public void h(View view, C0630yg c0630yg) {
        switch (this.q) {
            case 1:
                C0323mc c0323mc = (C0323mc) this.r;
                int[] b = c0323mc.b(c0323mc.a.getLayoutManager(), view);
                int i = b[0];
                int i2 = b[1];
                int ceil = (int) Math.ceil(e(Math.max(Math.abs(i), Math.abs(i2))) / 0.3356d);
                if (ceil > 0) {
                    DecelerateInterpolator decelerateInterpolator = this.j;
                    c0630yg.a = i;
                    c0630yg.b = i2;
                    c0630yg.c = ceil;
                    c0630yg.e = decelerateInterpolator;
                    c0630yg.f = true;
                    return;
                }
                return;
            case 2:
                C0323mc c0323mc2 = (C0323mc) this.r;
                RecyclerView recyclerView = c0323mc2.a;
                if (recyclerView == null) {
                    return;
                }
                int[] b2 = c0323mc2.b(recyclerView.getLayoutManager(), view);
                int i3 = b2[0];
                int i4 = b2[1];
                int ceil2 = (int) Math.ceil(e(Math.max(Math.abs(i3), Math.abs(i4))) / 0.3356d);
                if (ceil2 > 0) {
                    DecelerateInterpolator decelerateInterpolator2 = this.j;
                    c0630yg.a = i3;
                    c0630yg.b = i4;
                    c0630yg.c = ceil2;
                    c0630yg.e = decelerateInterpolator2;
                    c0630yg.f = true;
                    return;
                }
                return;
            default:
                super.h(view, c0630yg);
                return;
        }
    }
}
