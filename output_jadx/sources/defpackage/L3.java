package defpackage;

import android.graphics.Typeface;

/* loaded from: classes.dex */
public final class L3 extends AbstractC0171gf {
    public final Typeface a;
    public final L b;
    public boolean c;

    public L3(L l, Typeface typeface) {
        this.a = typeface;
        this.b = l;
    }

    @Override // defpackage.AbstractC0171gf
    public final void m(int i) {
        if (this.c) {
            return;
        }
        K4 k4 = (K4) this.b.b;
        if (k4.j(this.a)) {
            k4.h(false);
        }
    }

    @Override // defpackage.AbstractC0171gf
    public final void n(Typeface typeface, boolean z) {
        if (this.c) {
            return;
        }
        K4 k4 = (K4) this.b.b;
        if (k4.j(typeface)) {
            k4.h(false);
        }
    }
}
