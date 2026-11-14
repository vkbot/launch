package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public abstract class Cb extends Lc implements InterfaceC0621y7, Qa, InterfaceC0089da {
    public Hb d;

    @Override // defpackage.Qa
    public final boolean a() {
        return true;
    }

    @Override // defpackage.Qa
    public final Ce b() {
        return null;
    }

    @Override // defpackage.InterfaceC0621y7
    public final void c() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2;
        Hb n = n();
        while (true) {
            Object y = n.y();
            if (!(y instanceof Cb)) {
                if (!(y instanceof Qa) || ((Qa) y).b() == null) {
                    return;
                }
                while (true) {
                    Object k = k();
                    if (k instanceof Pg) {
                        Lc lc = ((Pg) k).a;
                        return;
                    }
                    if (k == this) {
                        return;
                    }
                    AbstractC0348nb.p(k, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
                    Lc lc2 = (Lc) k;
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = Lc.c;
                    Pg pg = (Pg) atomicReferenceFieldUpdater3.get(lc2);
                    if (pg == null) {
                        pg = new Pg(lc2);
                        atomicReferenceFieldUpdater3.lazySet(lc2, pg);
                    }
                    do {
                        atomicReferenceFieldUpdater = Lc.a;
                        if (atomicReferenceFieldUpdater.compareAndSet(this, k, pg)) {
                            lc2.i();
                            return;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == k);
                }
            } else {
                if (y != this) {
                    return;
                }
                C0447r8 c0447r8 = C6.p;
                do {
                    atomicReferenceFieldUpdater2 = Hb.a;
                    if (atomicReferenceFieldUpdater2.compareAndSet(n, y, c0447r8)) {
                        return;
                    }
                } while (atomicReferenceFieldUpdater2.get(n) == y);
            }
        }
    }

    public final Hb n() {
        Hb hb = this.d;
        if (hb != null) {
            return hb;
        }
        AbstractC0348nb.j0("job");
        throw null;
    }

    public abstract void o(Throwable th);

    @Override // defpackage.Lc
    public final String toString() {
        return getClass().getSimpleName() + '@' + C6.p(this) + "[job@" + C6.p(n()) + ']';
    }
}
