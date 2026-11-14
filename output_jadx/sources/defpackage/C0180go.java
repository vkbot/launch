package defpackage;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.animation.PathInterpolator;
import java.util.Collections;

/* renamed from: go, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0180go implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ C0335mo a;
    public final /* synthetic */ yo b;
    public final /* synthetic */ yo c;
    public final /* synthetic */ int d;
    public final /* synthetic */ View e;

    public C0180go(C0335mo c0335mo, yo yoVar, yo yoVar2, int i, View view) {
        this.a = c0335mo;
        this.b = yoVar;
        this.c = yoVar2;
        this.d = i;
        this.e = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float f;
        C0335mo c0335mo;
        float animatedFraction = valueAnimator.getAnimatedFraction();
        C0335mo c0335mo2 = this.a;
        c0335mo2.a.d(animatedFraction);
        float b = c0335mo2.a.b();
        PathInterpolator pathInterpolator = C0231io.e;
        int i = Build.VERSION.SDK_INT;
        yo yoVar = this.b;
        qo c0413po = i >= 30 ? new C0413po(yoVar) : new C0387oo(yoVar);
        int i2 = 1;
        while (i2 <= 256) {
            int i3 = this.d & i2;
            wo woVar = yoVar.a;
            if (i3 == 0) {
                c0413po.c(i2, woVar.f(i2));
                f = b;
                c0335mo = c0335mo2;
            } else {
                C0090db f2 = woVar.f(i2);
                C0090db f3 = this.c.a.f(i2);
                int i4 = (int) (((f2.a - f3.a) * r10) + 0.5d);
                int i5 = (int) (((f2.b - f3.b) * r10) + 0.5d);
                f = b;
                int i6 = (int) (((f2.c - f3.c) * r10) + 0.5d);
                float f4 = (f2.d - f3.d) * (1.0f - b);
                c0335mo = c0335mo2;
                int i7 = (int) (f4 + 0.5d);
                int max = Math.max(0, f2.a - i4);
                int max2 = Math.max(0, f2.b - i5);
                int max3 = Math.max(0, f2.c - i6);
                int max4 = Math.max(0, f2.d - i7);
                if (max != i4 || max2 != i5 || max3 != i6 || max4 != i7) {
                    f2 = C0090db.b(max, max2, max3, max4);
                }
                c0413po.c(i2, f2);
            }
            i2 <<= 1;
            b = f;
            c0335mo2 = c0335mo;
        }
        C0231io.g(this.e, c0413po.b(), Collections.singletonList(c0335mo2));
    }
}
