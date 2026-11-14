package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* renamed from: t7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0496t7 extends Ah {
    public static final AtomicIntegerFieldUpdater e = AtomicIntegerFieldUpdater.newUpdater(C0496t7.class, "_decision");
    private volatile int _decision;

    @Override // defpackage.Ah, defpackage.Hb
    public final void k(Object obj) {
        l(obj);
    }

    @Override // defpackage.Ah, defpackage.Hb
    public final void l(Object obj) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        do {
            atomicIntegerFieldUpdater = e;
            int i = atomicIntegerFieldUpdater.get(this);
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("Already resumed");
                }
                AbstractC0152fm.L(C6.u(this.d), C6.K(obj), null);
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, 0, 2));
    }
}
