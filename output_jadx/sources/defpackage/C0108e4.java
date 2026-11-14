package defpackage;

import android.view.ViewGroup;

/* renamed from: e4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0108e4 extends Yl {
    public boolean a = false;
    public final /* synthetic */ ViewGroup b;

    public C0108e4(ViewGroup viewGroup) {
        this.b = viewGroup;
    }

    @Override // defpackage.Yl, defpackage.Wl
    public final void a() {
        this.b.suppressLayout(false);
        this.a = true;
    }

    @Override // defpackage.Yl, defpackage.Wl
    public final void b() {
        this.b.suppressLayout(false);
    }

    @Override // defpackage.Yl, defpackage.Wl
    public final void d() {
        this.b.suppressLayout(true);
    }

    @Override // defpackage.Wl
    public final void e(Xl xl) {
        if (!this.a) {
            this.b.suppressLayout(false);
        }
        xl.u(this);
    }
}
