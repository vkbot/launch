package defpackage;

import android.graphics.Typeface;

/* loaded from: classes.dex */
public final class Dj extends AbstractC0145ff {
    public final /* synthetic */ AbstractC0171gf a;
    public final /* synthetic */ Fj b;

    public Dj(Fj fj, AbstractC0171gf abstractC0171gf) {
        this.b = fj;
        this.a = abstractC0171gf;
    }

    @Override // defpackage.AbstractC0145ff
    public final void A(Typeface typeface) {
        Fj fj = this.b;
        fj.n = Typeface.create(typeface, fj.c);
        fj.m = true;
        this.a.n(fj.n, false);
    }

    @Override // defpackage.AbstractC0145ff
    public final void z(int i) {
        this.b.m = true;
        this.a.m(i);
    }
}
