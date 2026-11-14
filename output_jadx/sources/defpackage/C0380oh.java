package defpackage;

import java.util.Iterator;

/* renamed from: oh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0380oh extends AbstractC0456rh implements Iterator {
    public C0406ph a;
    public C0406ph b;
    public final /* synthetic */ int c;

    public C0380oh(C0406ph c0406ph, C0406ph c0406ph2, int i) {
        this.c = i;
        this.a = c0406ph2;
        this.b = c0406ph;
    }

    @Override // defpackage.AbstractC0456rh
    public final void a(C0406ph c0406ph) {
        C0406ph c0406ph2;
        C0406ph c0406ph3 = null;
        if (this.a == c0406ph && c0406ph == this.b) {
            this.b = null;
            this.a = null;
        }
        C0406ph c0406ph4 = this.a;
        if (c0406ph4 == c0406ph) {
            switch (this.c) {
                case 0:
                    c0406ph2 = c0406ph4.d;
                    break;
                default:
                    c0406ph2 = c0406ph4.c;
                    break;
            }
            this.a = c0406ph2;
        }
        C0406ph c0406ph5 = this.b;
        if (c0406ph5 == c0406ph) {
            C0406ph c0406ph6 = this.a;
            if (c0406ph5 != c0406ph6 && c0406ph6 != null) {
                c0406ph3 = b(c0406ph5);
            }
            this.b = c0406ph3;
        }
    }

    public final C0406ph b(C0406ph c0406ph) {
        switch (this.c) {
            case 0:
                return c0406ph.c;
            default:
                return c0406ph.d;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        C0406ph c0406ph = this.b;
        C0406ph c0406ph2 = this.a;
        this.b = (c0406ph == c0406ph2 || c0406ph2 == null) ? null : b(c0406ph);
        return c0406ph;
    }
}
