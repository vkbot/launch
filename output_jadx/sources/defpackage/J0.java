package defpackage;

import android.content.res.ColorStateList;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class J0 extends Animatable2.AnimationCallback {
    public final /* synthetic */ C0577wd a;

    public J0(C0577wd c0577wd) {
        this.a = c0577wd;
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationEnd(Drawable drawable) {
        ColorStateList colorStateList = this.a.b.o;
        if (colorStateList != null) {
            B7.h(drawable, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationStart(Drawable drawable) {
        C0627yd c0627yd = this.a.b;
        ColorStateList colorStateList = c0627yd.o;
        if (colorStateList != null) {
            B7.g(drawable, colorStateList.getColorForState(c0627yd.s, colorStateList.getDefaultColor()));
        }
    }
}
