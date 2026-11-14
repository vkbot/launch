package defpackage;

import java.util.Iterator;

/* renamed from: qh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0432qh extends AbstractC0456rh implements Iterator {
    public C0406ph a;
    public boolean b = true;
    public final /* synthetic */ C0481sh c;

    public C0432qh(C0481sh c0481sh) {
        this.c = c0481sh;
    }

    @Override // defpackage.AbstractC0456rh
    public final void a(C0406ph c0406ph) {
        C0406ph c0406ph2 = this.a;
        if (c0406ph == c0406ph2) {
            C0406ph c0406ph3 = c0406ph2.d;
            this.a = c0406ph3;
            this.b = c0406ph3 == null;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.b) {
            return this.c.a != null;
        }
        C0406ph c0406ph = this.a;
        return (c0406ph == null || c0406ph.c == null) ? false : true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.b) {
            this.b = false;
            this.a = this.c.a;
        } else {
            C0406ph c0406ph = this.a;
            this.a = c0406ph != null ? c0406ph.c : null;
        }
        return this.a;
    }
}
