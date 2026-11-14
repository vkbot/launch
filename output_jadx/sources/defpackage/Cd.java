package defpackage;

import android.R;
import android.content.res.ColorStateList;

/* loaded from: classes.dex */
public final class Cd extends L1 {
    public static final int[][] g = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
    public ColorStateList e;
    public boolean f;

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.e == null) {
            int m = C6.m(this, com.omoda.launcher.R.attr.colorControlActivated);
            int m2 = C6.m(this, com.omoda.launcher.R.attr.colorOnSurface);
            int m3 = C6.m(this, com.omoda.launcher.R.attr.colorSurface);
            this.e = new ColorStateList(g, new int[]{C6.A(m3, m, 1.0f), C6.A(m3, m2, 0.54f), C6.A(m3, m2, 0.38f), C6.A(m3, m2, 0.38f)});
        }
        return this.e;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f && AbstractC0264k5.a(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f = z;
        if (z) {
            AbstractC0264k5.c(this, getMaterialThemeColorsTintList());
        } else {
            AbstractC0264k5.c(this, null);
        }
    }
}
