package defpackage;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class Bi extends AbstractC0389p0 implements Jd {
    public Context c;
    public ActionBarContextView d;
    public K1 e;
    public WeakReference f;
    public boolean g;
    public Ld h;

    @Override // defpackage.AbstractC0389p0
    public final void a() {
        if (this.g) {
            return;
        }
        this.g = true;
        this.e.G(this);
    }

    @Override // defpackage.AbstractC0389p0
    public final View b() {
        WeakReference weakReference = this.f;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // defpackage.AbstractC0389p0
    public final Ld c() {
        return this.h;
    }

    @Override // defpackage.Jd
    public final boolean d(Ld ld, MenuItem menuItem) {
        return ((C0446r7) this.e.b).c(this, menuItem);
    }

    @Override // defpackage.AbstractC0389p0
    public final MenuInflater e() {
        return new C0046bj(this.d.getContext());
    }

    @Override // defpackage.AbstractC0389p0
    public final CharSequence f() {
        return this.d.getSubtitle();
    }

    @Override // defpackage.AbstractC0389p0
    public final CharSequence g() {
        return this.d.getTitle();
    }

    @Override // defpackage.AbstractC0389p0
    public final void h() {
        this.e.H(this, this.h);
    }

    @Override // defpackage.AbstractC0389p0
    public final boolean i() {
        return this.d.s;
    }

    @Override // defpackage.AbstractC0389p0
    public final void j(View view) {
        this.d.setCustomView(view);
        this.f = view != null ? new WeakReference(view) : null;
    }

    @Override // defpackage.AbstractC0389p0
    public final void k(int i) {
        l(this.c.getString(i));
    }

    @Override // defpackage.AbstractC0389p0
    public final void l(CharSequence charSequence) {
        this.d.setSubtitle(charSequence);
    }

    @Override // defpackage.AbstractC0389p0
    public final void m(int i) {
        n(this.c.getString(i));
    }

    @Override // defpackage.AbstractC0389p0
    public final void n(CharSequence charSequence) {
        this.d.setTitle(charSequence);
    }

    @Override // defpackage.AbstractC0389p0
    public final void o(boolean z) {
        this.b = z;
        this.d.setTitleOptional(z);
    }

    @Override // defpackage.Jd
    public final void t(Ld ld) {
        h();
        C0285l0 c0285l0 = this.d.d;
        if (c0285l0 != null) {
            c0285l0.l();
        }
    }
}
