package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.res.ColorStateList;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import java.util.ArrayList;

/* renamed from: a0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0001a0 extends AnimatorListenerAdapter {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0001a0(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.a) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.b;
                actionBarOverlayLayout.w = null;
                actionBarOverlayLayout.k = false;
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
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.b;
                actionBarOverlayLayout.w = null;
                actionBarOverlayLayout.k = false;
                return;
            case 1:
                N0 n0 = (N0) this.b;
                ArrayList arrayList = new ArrayList(n0.e);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ColorStateList colorStateList = ((C0577wd) arrayList.get(i)).b.o;
                    if (colorStateList != null) {
                        B7.h(n0, colorStateList);
                    }
                }
                return;
            case 2:
                AbstractC0348nb.r(animator, "animation");
                ((K2) this.b).g();
                return;
            case 3:
                P7 p7 = (P7) this.b;
                p7.q();
                p7.r.start();
                return;
            case 4:
                ((HideBottomViewOnScrollBehavior) this.b).h = null;
                return;
            default:
                ((Xl) this.b).l();
                animator.removeListener(this);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.a) {
            case 1:
                N0 n0 = (N0) this.b;
                ArrayList arrayList = new ArrayList(n0.e);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    C0627yd c0627yd = ((C0577wd) arrayList.get(i)).b;
                    ColorStateList colorStateList = c0627yd.o;
                    if (colorStateList != null) {
                        B7.g(n0, colorStateList.getColorForState(c0627yd.s, colorStateList.getDefaultColor()));
                    }
                }
                return;
            default:
                super.onAnimationStart(animator);
                return;
        }
    }
}
