package defpackage;

import android.animation.ValueAnimator;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.textfield.TextInputLayout;

/* renamed from: y3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0617y3 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0617y3(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.a) {
            case 0:
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                Ed ed = ((BottomSheetBehavior) this.b).i;
                if (ed != null) {
                    Dd dd = ed.a;
                    if (dd.i != floatValue) {
                        dd.i = floatValue;
                        ed.e = true;
                        ed.invalidateSelf();
                        return;
                    }
                    return;
                }
                return;
            case 1:
                int floatValue2 = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
                Y8 y8 = (Y8) this.b;
                y8.c.setAlpha(floatValue2);
                y8.d.setAlpha(floatValue2);
                y8.s.invalidate();
                return;
            case 2:
                ((C0475sb) this.b).m = valueAnimator.getAnimatedFraction();
                return;
            default:
                ((TextInputLayout) this.b).u0.k(((Float) valueAnimator.getAnimatedValue()).floatValue());
                return;
        }
    }
}
