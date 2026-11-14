package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0310m extends AbstractC0152fm {
    public final AtomicReferenceFieldUpdater q;
    public final AtomicReferenceFieldUpdater r;
    public final AtomicReferenceFieldUpdater s;
    public final AtomicReferenceFieldUpdater t;
    public final AtomicReferenceFieldUpdater u;

    public C0310m(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.q = atomicReferenceFieldUpdater;
        this.r = atomicReferenceFieldUpdater2;
        this.s = atomicReferenceFieldUpdater3;
        this.t = atomicReferenceFieldUpdater4;
        this.u = atomicReferenceFieldUpdater5;
    }

    @Override // defpackage.AbstractC0152fm
    public final void C(C0362o c0362o, C0362o c0362o2) {
        this.r.lazySet(c0362o, c0362o2);
    }

    @Override // defpackage.AbstractC0152fm
    public final void D(C0362o c0362o, Thread thread) {
        this.q.lazySet(c0362o, thread);
    }

    @Override // defpackage.AbstractC0152fm
    public final boolean c(AbstractFutureC0388p abstractFutureC0388p, C0284l c0284l) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        C0284l c0284l2 = C0284l.b;
        do {
            atomicReferenceFieldUpdater = this.t;
            if (atomicReferenceFieldUpdater.compareAndSet(abstractFutureC0388p, c0284l, c0284l2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(abstractFutureC0388p) == c0284l);
        return false;
    }

    @Override // defpackage.AbstractC0152fm
    public final boolean d(AbstractFutureC0388p abstractFutureC0388p, Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.u;
            if (atomicReferenceFieldUpdater.compareAndSet(abstractFutureC0388p, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(abstractFutureC0388p) == obj);
        return false;
    }

    @Override // defpackage.AbstractC0152fm
    public final boolean e(AbstractFutureC0388p abstractFutureC0388p, C0362o c0362o, C0362o c0362o2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.s;
            if (atomicReferenceFieldUpdater.compareAndSet(abstractFutureC0388p, c0362o, c0362o2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(abstractFutureC0388p) == c0362o);
        return false;
    }
}
