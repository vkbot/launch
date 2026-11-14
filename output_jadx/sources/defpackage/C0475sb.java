package defpackage;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;

/* renamed from: sb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0475sb implements Animator.AnimatorListener {
    public final float a;
    public final float b;
    public final float c;
    public final float d;
    public final Eg e;
    public final int f;
    public final ValueAnimator g;
    public boolean h;
    public float i;
    public float j;
    public boolean k = false;
    public boolean l = false;
    public float m;
    public final /* synthetic */ int n;
    public final /* synthetic */ Eg o;
    public final /* synthetic */ C0550vb p;

    public C0475sb(C0550vb c0550vb, Eg eg, int i, float f, float f2, float f3, float f4, int i2, Eg eg2) {
        this.p = c0550vb;
        this.n = i2;
        this.o = eg2;
        this.f = i;
        this.e = eg;
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.g = ofFloat;
        ofFloat.addUpdateListener(new C0617y3(2, this));
        ofFloat.setTarget(eg.a);
        ofFloat.addListener(this);
        this.m = 0.0f;
    }

    public final void a(Animator animator) {
        if (!this.l) {
            this.e.q(true);
        }
        this.l = true;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.m = 1.0f;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        a(animator);
        if (this.k) {
            return;
        }
        int i = this.n;
        Eg eg = this.o;
        C0550vb c0550vb = this.p;
        if (i <= 0) {
            c0550vb.m.a(c0550vb.r, eg);
        } else {
            c0550vb.a.add(eg.a);
            this.h = true;
            if (i > 0) {
                c0550vb.r.post(new RunnableC0233j0(c0550vb, this, i));
            }
        }
        View view = c0550vb.w;
        View view2 = eg.a;
        if (view == view2) {
            c0550vb.p(view2);
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
