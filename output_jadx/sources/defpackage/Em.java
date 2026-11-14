package defpackage;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;

/* loaded from: classes.dex */
public final class Em extends Drawable.ConstantState {
    public final Drawable.ConstantState a;

    public Em(Drawable.ConstantState constantState) {
        this.a = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        return this.a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        Fm fm = new Fm();
        fm.a = (VectorDrawable) this.a.newDrawable();
        return fm;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        Fm fm = new Fm();
        fm.a = (VectorDrawable) this.a.newDrawable(resources);
        return fm;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
        Fm fm = new Fm();
        fm.a = (VectorDrawable) this.a.newDrawable(resources, theme);
        return fm;
    }
}
