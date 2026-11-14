package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* loaded from: classes.dex */
public final class Ul extends AnimatorListenerAdapter {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ Ul(Object obj, View view, int i) {
        this.a = i;
        this.b = obj;
        this.c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.a) {
            case 1:
                ((InterfaceC0637yn) this.b).b((View) this.c);
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
                ((W2) this.b).remove(animator);
                ((Xl) this.c).m.remove(animator);
                return;
            case 1:
                ((InterfaceC0637yn) this.b).a();
                return;
            default:
                ((C0335mo) this.b).a.d(1.0f);
                C0231io.e((View) this.c);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.a) {
            case 0:
                ((Xl) this.c).m.add(animator);
                return;
            case 1:
                ((InterfaceC0637yn) this.b).c();
                return;
            default:
                super.onAnimationStart(animator);
                return;
        }
    }

    public Ul(Xl xl, W2 w2) {
        this.a = 0;
        this.c = xl;
        this.b = w2;
    }
}
