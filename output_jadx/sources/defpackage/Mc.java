package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public class Mc {
    public static final AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(Mc.class, Object.class, "_cur");
    private volatile Object _cur = new Oc(8, false);

    public final boolean a(Runnable runnable) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
            Oc oc = (Oc) atomicReferenceFieldUpdater.get(this);
            int a2 = oc.a(runnable);
            if (a2 == 0) {
                return true;
            }
            if (a2 == 1) {
                Oc c = oc.c();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, oc, c) && atomicReferenceFieldUpdater.get(this) == oc) {
                }
            } else if (a2 == 2) {
                return false;
            }
        }
    }

    public final void b() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
            Oc oc = (Oc) atomicReferenceFieldUpdater.get(this);
            if (oc.b()) {
                return;
            }
            Oc c = oc.c();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, oc, c) && atomicReferenceFieldUpdater.get(this) == oc) {
            }
        }
    }

    public final int c() {
        Oc oc = (Oc) a.get(this);
        oc.getClass();
        long j = Oc.f.get(oc);
        return 1073741823 & (((int) ((j & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j)));
    }

    public final Object d() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
            Oc oc = (Oc) atomicReferenceFieldUpdater.get(this);
            Object d = oc.d();
            if (d != Oc.g) {
                return d;
            }
            Oc c = oc.c();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, oc, c) && atomicReferenceFieldUpdater.get(this) == oc) {
            }
        }
    }
}
