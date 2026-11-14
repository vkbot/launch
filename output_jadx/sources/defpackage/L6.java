package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* loaded from: classes.dex */
public final class L6 extends AnimatorListenerAdapter {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ Eg b;
    public final /* synthetic */ View c;
    public final /* synthetic */ ViewPropertyAnimator d;
    public final /* synthetic */ Q6 e;

    public L6(Q6 q6, Eg eg, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.e = q6;
        this.b = eg;
        this.d = viewPropertyAnimator;
        this.c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.a) {
            case 1:
                this.c.setAlpha(1.0f);
                return;
            default:
                super.onAnimationCancel(animator);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.a) {
            case 0:
                this.d.setListener(null);
                this.c.setAlpha(1.0f);
                Q6 q6 = this.e;
                Eg eg = this.b;
                q6.c(eg);
                q6.q.remove(eg);
                q6.i();
                return;
            default:
                this.d.setListener(null);
                Q6 q62 = this.e;
                Eg eg2 = this.b;
                q62.c(eg2);
                q62.o.remove(eg2);
                q62.i();
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.a) {
            case 0:
                this.e.getClass();
                return;
            default:
                this.e.getClass();
                return;
        }
    }

    public L6(Q6 q6, Eg eg, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.e = q6;
        this.b = eg;
        this.c = view;
        this.d = viewPropertyAnimator;
    }
}
