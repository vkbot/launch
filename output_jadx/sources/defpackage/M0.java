package defpackage;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class M0 extends Drawable.ConstantState {
    public final Drawable.ConstantState a;

    public M0(Drawable.ConstantState constantState) {
        this.a = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        return this.a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        N0 n0 = new N0(null);
        Drawable newDrawable = this.a.newDrawable();
        n0.a = newDrawable;
        newDrawable.setCallback(n0.f);
        return n0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        N0 n0 = new N0(null);
        Drawable newDrawable = this.a.newDrawable(resources);
        n0.a = newDrawable;
        newDrawable.setCallback(n0.f);
        return n0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
        N0 n0 = new N0(null);
        Drawable newDrawable = this.a.newDrawable(resources, theme);
        n0.a = newDrawable;
        newDrawable.setCallback(n0.f);
        return n0;
    }
}
