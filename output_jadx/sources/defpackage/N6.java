package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* loaded from: classes.dex */
public final class N6 extends AnimatorListenerAdapter {
    public final /* synthetic */ int a;
    public final /* synthetic */ O6 b;
    public final /* synthetic */ ViewPropertyAnimator c;
    public final /* synthetic */ View d;
    public final /* synthetic */ Q6 e;

    public /* synthetic */ N6(Q6 q6, O6 o6, ViewPropertyAnimator viewPropertyAnimator, View view, int i) {
        this.a = i;
        this.e = q6;
        this.b = o6;
        this.c = viewPropertyAnimator;
        this.d = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.a) {
            case 0:
                this.c.setListener(null);
                View view = this.d;
                view.setAlpha(1.0f);
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                O6 o6 = this.b;
                Eg eg = o6.a;
                Q6 q6 = this.e;
                q6.c(eg);
                q6.r.remove(o6.a);
                q6.i();
                return;
            default:
                this.c.setListener(null);
                View view2 = this.d;
                view2.setAlpha(1.0f);
                view2.setTranslationX(0.0f);
                view2.setTranslationY(0.0f);
                O6 o62 = this.b;
                Eg eg2 = o62.b;
                Q6 q62 = this.e;
                q62.c(eg2);
                q62.r.remove(o62.b);
                q62.i();
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.a) {
            case 0:
                Eg eg = this.b.a;
                this.e.getClass();
                return;
            default:
                Eg eg2 = this.b.b;
                this.e.getClass();
                return;
        }
    }
}
