package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* loaded from: classes.dex */
public final class Ti extends Ld implements SubMenu {
    public final Pd A;
    public final Ld z;

    public Ti(Context context, Ld ld, Pd pd) {
        super(context);
        this.z = ld;
        this.A = pd;
    }

    @Override // defpackage.Ld
    public final boolean d(Pd pd) {
        return this.z.d(pd);
    }

    @Override // defpackage.Ld
    public final boolean e(Ld ld, MenuItem menuItem) {
        return super.e(ld, menuItem) || this.z.e(ld, menuItem);
    }

    @Override // defpackage.Ld
    public final boolean f(Pd pd) {
        return this.z.f(pd);
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.A;
    }

    @Override // defpackage.Ld
    public final String j() {
        Pd pd = this.A;
        int i = pd != null ? pd.a : 0;
        if (i == 0) {
            return null;
        }
        return AbstractC0407pi.h("android:menu:actionviewstates:", i);
    }

    @Override // defpackage.Ld
    public final Ld k() {
        return this.z.k();
    }

    @Override // defpackage.Ld
    public final boolean m() {
        return this.z.m();
    }

    @Override // defpackage.Ld
    public final boolean n() {
        return this.z.n();
    }

    @Override // defpackage.Ld
    public final boolean o() {
        return this.z.o();
    }

    @Override // defpackage.Ld, android.view.Menu
    public final void setGroupDividerEnabled(boolean z) {
        this.z.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        u(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        u(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        u(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.A.setIcon(drawable);
        return this;
    }

    @Override // defpackage.Ld, android.view.Menu
    public final void setQwertyMode(boolean z) {
        this.z.setQwertyMode(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i) {
        u(0, null, i, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i) {
        u(i, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i) {
        this.A.setIcon(i);
        return this;
    }
}
