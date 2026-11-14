package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class Fb extends AbstractC0004a3 {
    public final Cb b;
    public Ce c;
    public final /* synthetic */ Hb d;
    public final /* synthetic */ Qa e;

    public Fb(Cb cb, Hb hb, Qa qa) {
        this.d = hb;
        this.e = qa;
        this.b = cb;
    }

    @Override // defpackage.AbstractC0004a3
    public final void b(Object obj, Object obj2) {
        Lc lc = (Lc) obj;
        boolean z = obj2 == null;
        Cb cb = this.b;
        Qa qa = z ? cb : this.c;
        if (qa != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = Lc.a;
            while (!atomicReferenceFieldUpdater.compareAndSet(lc, this, qa)) {
                if (atomicReferenceFieldUpdater.get(lc) != this) {
                    return;
                }
            }
            if (z) {
                Ce ce = this.c;
                AbstractC0348nb.o(ce);
                cb.j(ce);
            }
        }
    }

    @Override // defpackage.AbstractC0004a3
    public final L c(Object obj) {
        if (this.d.y() == this.e) {
            return null;
        }
        return AbstractC0348nb.g;
    }
}
