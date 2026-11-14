package defpackage;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* renamed from: co, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0077co extends AbstractC0389p0 implements Jd {
    public final Context c;
    public final Ld d;
    public K1 e;
    public WeakReference f;
    public final /* synthetic */ C0128eo g;

    public C0077co(C0128eo c0128eo, Context context, K1 k1) {
        this.g = c0128eo;
        this.c = context;
        this.e = k1;
        Ld ld = new Ld(context);
        ld.l = 1;
        this.d = ld;
        ld.e = this;
    }

    @Override // defpackage.AbstractC0389p0
    public final void a() {
        C0128eo c0128eo = this.g;
        if (c0128eo.y != this) {
            return;
        }
        if (c0128eo.F) {
            c0128eo.z = this;
            c0128eo.A = this.e;
        } else {
            this.e.G(this);
        }
        this.e = null;
        c0128eo.U(false);
        ActionBarContextView actionBarContextView = c0128eo.v;
        if (actionBarContextView.k == null) {
            actionBarContextView.e();
        }
        c0128eo.s.setHideOnContentScrollEnabled(c0128eo.K);
        c0128eo.y = null;
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
        return this.d;
    }

    @Override // defpackage.Jd
    public final boolean d(Ld ld, MenuItem menuItem) {
        K1 k1 = this.e;
        if (k1 != null) {
            return ((C0446r7) k1.b).c(this, menuItem);
        }
        return false;
    }

    @Override // defpackage.AbstractC0389p0
    public final MenuInflater e() {
        return new C0046bj(this.c);
    }

    @Override // defpackage.AbstractC0389p0
    public final CharSequence f() {
        return this.g.v.getSubtitle();
    }

    @Override // defpackage.AbstractC0389p0
    public final CharSequence g() {
        return this.g.v.getTitle();
    }

    @Override // defpackage.AbstractC0389p0
    public final void h() {
        if (this.g.y != this) {
            return;
        }
        Ld ld = this.d;
        ld.w();
        try {
            this.e.H(this, ld);
        } finally {
            ld.v();
        }
    }

    @Override // defpackage.AbstractC0389p0
    public final boolean i() {
        return this.g.v.s;
    }

    @Override // defpackage.AbstractC0389p0
    public final void j(View view) {
        this.g.v.setCustomView(view);
        this.f = new WeakReference(view);
    }

    @Override // defpackage.AbstractC0389p0
    public final void k(int i) {
        l(this.g.q.getResources().getString(i));
    }

    @Override // defpackage.AbstractC0389p0
    public final void l(CharSequence charSequence) {
        this.g.v.setSubtitle(charSequence);
    }

    @Override // defpackage.AbstractC0389p0
    public final void m(int i) {
        n(this.g.q.getResources().getString(i));
    }

    @Override // defpackage.AbstractC0389p0
    public final void n(CharSequence charSequence) {
        this.g.v.setTitle(charSequence);
    }

    @Override // defpackage.AbstractC0389p0
    public final void o(boolean z) {
        this.b = z;
        this.g.v.setTitleOptional(z);
    }

    @Override // defpackage.Jd
    public final void t(Ld ld) {
        if (this.e == null) {
            return;
        }
        h();
        C0285l0 c0285l0 = this.g.v.d;
        if (c0285l0 != null) {
            c0285l0.l();
        }
    }
}
