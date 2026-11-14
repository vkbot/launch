package defpackage;

import android.view.WindowInsets;

/* loaded from: classes.dex */
public class uo extends to {
    public C0090db n;
    public C0090db o;
    public C0090db p;

    public uo(yo yoVar, WindowInsets windowInsets) {
        super(yoVar, windowInsets);
        this.n = null;
        this.o = null;
        this.p = null;
    }

    @Override // defpackage.wo
    public C0090db g() {
        if (this.o == null) {
            this.o = C0090db.c(this.c.getMandatorySystemGestureInsets());
        }
        return this.o;
    }

    @Override // defpackage.wo
    public C0090db i() {
        if (this.n == null) {
            this.n = C0090db.c(this.c.getSystemGestureInsets());
        }
        return this.n;
    }

    @Override // defpackage.wo
    public C0090db k() {
        if (this.p == null) {
            this.p = C0090db.c(this.c.getTappableElementInsets());
        }
        return this.p;
    }

    @Override // defpackage.wo
    public yo l(int i, int i2, int i3, int i4) {
        return yo.f(null, this.c.inset(i, i2, i3, i4));
    }
}
