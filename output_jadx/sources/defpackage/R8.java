package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class R8 extends AnimatorListenerAdapter {
    public final /* synthetic */ int a = 1;
    public boolean b = false;
    public final Object c;

    public R8(View view) {
        this.c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.a) {
            case 1:
                this.b = true;
                return;
            default:
                super.onAnimationCancel(animator);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        Object obj = this.c;
        switch (this.a) {
            case 0:
                C0057c4 c0057c4 = Cn.a;
                View view = (View) obj;
                view.setTransitionAlpha(1.0f);
                if (this.b) {
                    view.setLayerType(0, null);
                    return;
                }
                return;
            default:
                if (this.b) {
                    this.b = false;
                    return;
                }
                Y8 y8 = (Y8) obj;
                if (((Float) y8.z.getAnimatedValue()).floatValue() == 0.0f) {
                    y8.A = 0;
                    y8.j(0);
                    return;
                } else {
                    y8.A = 2;
                    y8.s.invalidate();
                    return;
                }
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.a) {
            case 0:
                WeakHashMap weakHashMap = AbstractC0205hn.a;
                View view = (View) this.c;
                if (Rm.h(view) && view.getLayerType() == 0) {
                    this.b = true;
                    view.setLayerType(2, null);
                    return;
                }
                return;
            default:
                super.onAnimationStart(animator);
                return;
        }
    }

    public R8(Y8 y8) {
        this.c = y8;
    }
}
