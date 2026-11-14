package defpackage;

import android.animation.ValueAnimator;
import android.view.View;

/* loaded from: classes.dex */
public final /* synthetic */ class L7 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int a = 0;
    public final /* synthetic */ Object b;

    public /* synthetic */ L7(P7 p7) {
        this.b = p7;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.a) {
            case 0:
                P7 p7 = (P7) this.b;
                p7.getClass();
                p7.d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                return;
            default:
                ((View) ((C0128eo) ((C0051bo) this.b).a).t.getParent()).invalidate();
                return;
        }
    }

    public /* synthetic */ L7(C0051bo c0051bo, View view) {
        this.b = c0051bo;
    }
}
