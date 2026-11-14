package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public class Lc {
    public static final AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(Lc.class, Object.class, "_next");
    public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(Lc.class, Object.class, "_prev");
    public static final AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(Lc.class, Object.class, "_removedRef");
    private volatile Object _next = this;
    private volatile Object _prev = this;
    private volatile Object _removedRef;

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003e, code lost:
    
        r6 = ((defpackage.Pg) r6).a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0046, code lost:
    
        if (r5.compareAndSet(r4, r3, r6) == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004e, code lost:
    
        if (r5.get(r4) == r3) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.Lc i() {
        /*
            r9 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = defpackage.Lc.b
            java.lang.Object r1 = r0.get(r9)
            Lc r1 = (defpackage.Lc) r1
            r2 = 0
            r3 = r1
        La:
            r4 = r2
        Lb:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = defpackage.Lc.a
            java.lang.Object r6 = r5.get(r3)
            if (r6 != r9) goto L24
            if (r1 != r3) goto L16
            return r3
        L16:
            boolean r2 = r0.compareAndSet(r9, r1, r3)
            if (r2 == 0) goto L1d
            return r3
        L1d:
            java.lang.Object r2 = r0.get(r9)
            if (r2 == r1) goto L16
            goto L0
        L24:
            boolean r7 = r9.m()
            if (r7 == 0) goto L2b
            return r2
        L2b:
            if (r6 != 0) goto L2e
            return r3
        L2e:
            boolean r7 = r6 instanceof defpackage.Ve
            if (r7 == 0) goto L38
            Ve r6 = (defpackage.Ve) r6
            r6.a(r3)
            goto L0
        L38:
            boolean r7 = r6 instanceof defpackage.Pg
            if (r7 == 0) goto L58
            if (r4 == 0) goto L51
            Pg r6 = (defpackage.Pg) r6
            Lc r6 = r6.a
        L42:
            boolean r7 = r5.compareAndSet(r4, r3, r6)
            if (r7 == 0) goto L4a
            r3 = r4
            goto La
        L4a:
            java.lang.Object r7 = r5.get(r4)
            if (r7 == r3) goto L42
            goto L0
        L51:
            java.lang.Object r3 = r0.get(r3)
            Lc r3 = (defpackage.Lc) r3
            goto Lb
        L58:
            java.lang.String r4 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"
            defpackage.AbstractC0348nb.p(r6, r4)
            r4 = r6
            Lc r4 = (defpackage.Lc) r4
            r8 = r4
            r4 = r3
            r3 = r8
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Lc.i():Lc");
    }

    public final void j(Lc lc) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = b;
            Lc lc2 = (Lc) atomicReferenceFieldUpdater.get(lc);
            if (k() != lc) {
                return;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(lc, lc2, this)) {
                if (atomicReferenceFieldUpdater.get(lc) != lc2) {
                    break;
                }
            }
            if (m()) {
                lc.i();
                return;
            }
            return;
        }
    }

    public final Object k() {
        while (true) {
            Object obj = a.get(this);
            if (!(obj instanceof Ve)) {
                return obj;
            }
            ((Ve) obj).a(this);
        }
    }

    public final Lc l() {
        Lc lc;
        Object k = k();
        Pg pg = k instanceof Pg ? (Pg) k : null;
        if (pg != null && (lc = pg.a) != null) {
            return lc;
        }
        AbstractC0348nb.p(k, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        return (Lc) k;
    }

    public boolean m() {
        return k() instanceof Pg;
    }

    public String toString() {
        return new Kc(this) + '@' + C6.p(this);
    }
}
