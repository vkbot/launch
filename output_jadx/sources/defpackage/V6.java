package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class V6 extends AnimatorListenerAdapter {
    public final /* synthetic */ ViewGroup a;
    public final /* synthetic */ View b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ C0557vi d;
    public final /* synthetic */ X6 e;

    public V6(ViewGroup viewGroup, View view, boolean z, C0557vi c0557vi, X6 x6) {
        this.a = viewGroup;
        this.b = view;
        this.c = z;
        this.d = c0557vi;
        this.e = x6;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        ViewGroup viewGroup = this.a;
        View view = this.b;
        viewGroup.endViewTransition(view);
        if (this.c) {
            AbstractC0407pi.a(view, this.d.a);
        }
        this.e.d();
    }
}
