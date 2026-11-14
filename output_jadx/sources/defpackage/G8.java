package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes.dex */
public abstract class G8 extends H8 implements InterfaceC0034b7 {
    public static final AtomicReferenceFieldUpdater f = AtomicReferenceFieldUpdater.newUpdater(G8.class, Object.class, "_queue");
    public static final AtomicReferenceFieldUpdater g = AtomicReferenceFieldUpdater.newUpdater(G8.class, Object.class, "_delayed");
    public static final AtomicIntegerFieldUpdater h = AtomicIntegerFieldUpdater.newUpdater(G8.class, "_isCompleted");
    private volatile Object _delayed;
    private volatile int _isCompleted = 0;
    private volatile Object _queue;

    @Override // defpackage.InterfaceC0034b7
    public final void c(long j, N3 n3) {
        long j2 = j > 0 ? j >= 9223372036854L ? Long.MAX_VALUE : 1000000 * j : 0L;
        if (j2 < 4611686018427387903L) {
            long nanoTime = System.nanoTime();
            D8 d8 = new D8(this, j2 + nanoTime, n3);
            s(nanoTime, d8);
            n3.n(new C0646z7(0, d8));
        }
    }

    @Override // defpackage.AbstractC0162g6
    public final void g(InterfaceC0110e6 interfaceC0110e6, Runnable runnable) {
        o(runnable);
    }

    @Override // defpackage.H8
    public void n() {
        E8 b;
        AbstractC0176gk.a.set(null);
        h.set(this, 1);
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
            Object obj = atomicReferenceFieldUpdater.get(this);
            L l = AbstractC0348nb.f;
            if (obj != null) {
                if (!(obj instanceof Oc)) {
                    if (obj != l) {
                        Oc oc = new Oc(8, true);
                        oc.a((Runnable) obj);
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, oc)) {
                            if (atomicReferenceFieldUpdater.get(this) != obj) {
                                break;
                            }
                        }
                        break loop0;
                    }
                    break;
                }
                ((Oc) obj).b();
                break;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, l)) {
                if (atomicReferenceFieldUpdater.get(this) != null) {
                    break;
                }
            }
            break loop0;
        }
        do {
        } while (r() <= 0);
        long nanoTime = System.nanoTime();
        while (true) {
            F8 f8 = (F8) g.get(this);
            if (f8 == null) {
                return;
            }
            synchronized (f8) {
                b = C0202hk.b.get(f8) > 0 ? f8.b(0) : null;
            }
            if (b == null) {
                return;
            } else {
                m(nanoTime, b);
            }
        }
    }

    public void o(Runnable runnable) {
        if (!p(runnable)) {
            G6.i.o(runnable);
            return;
        }
        Thread j = j();
        if (Thread.currentThread() != j) {
            LockSupport.unpark(j);
        }
    }

    public final boolean p(Runnable runnable) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (h.get(this) != 0) {
                return false;
            }
            if (obj == null) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, null, runnable)) {
                    if (atomicReferenceFieldUpdater.get(this) != null) {
                        break;
                    }
                }
                return true;
            }
            if (!(obj instanceof Oc)) {
                if (obj == AbstractC0348nb.f) {
                    return false;
                }
                Oc oc = new Oc(8, true);
                oc.a((Runnable) obj);
                oc.a(runnable);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, oc)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                return true;
            }
            Oc oc2 = (Oc) obj;
            int a = oc2.a(runnable);
            if (a == 0) {
                return true;
            }
            if (a == 1) {
                Oc c = oc2.c();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c) && atomicReferenceFieldUpdater.get(this) == obj) {
                }
            } else if (a == 2) {
                return false;
            }
        }
    }

    public final boolean q() {
        T2 t2 = this.e;
        if (!(t2 != null ? t2.isEmpty() : true)) {
            return false;
        }
        F8 f8 = (F8) g.get(this);
        if (f8 != null && C0202hk.b.get(f8) != 0) {
            return false;
        }
        Object obj = f.get(this);
        if (obj == null) {
            return true;
        }
        if (obj instanceof Oc) {
            long j = Oc.f.get((Oc) obj);
            if (((int) (1073741823 & j)) == ((int) ((j & 1152921503533105152L) >> 30))) {
                return true;
            }
        } else if (obj == AbstractC0348nb.f) {
            return true;
        }
        return false;
    }

    public final long r() {
        Runnable runnable;
        E8 e8;
        E8 b;
        if (l()) {
            return 0L;
        }
        F8 f8 = (F8) g.get(this);
        if (f8 != null && C0202hk.b.get(f8) != 0) {
            long nanoTime = System.nanoTime();
            do {
                synchronized (f8) {
                    try {
                        E8[] e8Arr = f8.a;
                        E8 e82 = e8Arr != null ? e8Arr[0] : null;
                        if (e82 == null) {
                            b = null;
                        } else {
                            b = ((nanoTime - e82.a) > 0L ? 1 : ((nanoTime - e82.a) == 0L ? 0 : -1)) >= 0 ? p(e82) : false ? f8.b(0) : null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } while (b != null);
        }
        loop1: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                break;
            }
            if (!(obj instanceof Oc)) {
                if (obj == AbstractC0348nb.f) {
                    break;
                }
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, null)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                runnable = (Runnable) obj;
                break loop1;
            }
            Oc oc = (Oc) obj;
            Object d = oc.d();
            if (d != Oc.g) {
                runnable = (Runnable) d;
                break;
            }
            Oc c = oc.c();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c) && atomicReferenceFieldUpdater.get(this) == obj) {
            }
        }
        runnable = null;
        if (runnable != null) {
            runnable.run();
            return 0L;
        }
        T2 t2 = this.e;
        if (((t2 == null || t2.isEmpty()) ? Long.MAX_VALUE : 0L) == 0) {
            return 0L;
        }
        Object obj2 = f.get(this);
        if (obj2 != null) {
            if (!(obj2 instanceof Oc)) {
                if (obj2 != AbstractC0348nb.f) {
                    return 0L;
                }
                return Long.MAX_VALUE;
            }
            long j = Oc.f.get((Oc) obj2);
            if (!(((int) (1073741823 & j)) == ((int) ((j & 1152921503533105152L) >> 30)))) {
                return 0L;
            }
        }
        F8 f82 = (F8) g.get(this);
        if (f82 != null) {
            synchronized (f82) {
                E8[] e8Arr2 = f82.a;
                e8 = e8Arr2 != null ? e8Arr2[0] : null;
            }
            if (e8 != null) {
                long nanoTime2 = e8.a - System.nanoTime();
                if (nanoTime2 < 0) {
                    return 0L;
                }
                return nanoTime2;
            }
        }
        return Long.MAX_VALUE;
    }

    /* JADX WARN: Type inference failed for: r5v0, types: [F8, java.lang.Object] */
    public final void s(long j, E8 e8) {
        int a;
        Thread j2;
        boolean z = h.get(this) != 0;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = g;
        if (z) {
            a = 1;
        } else {
            F8 f8 = (F8) atomicReferenceFieldUpdater.get(this);
            if (f8 == null) {
                ?? obj = new Object();
                obj.c = j;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, null, obj) && atomicReferenceFieldUpdater.get(this) == null) {
                }
                Object obj2 = atomicReferenceFieldUpdater.get(this);
                AbstractC0348nb.o(obj2);
                f8 = (F8) obj2;
            }
            a = e8.a(j, f8, this);
        }
        if (a != 0) {
            if (a == 1) {
                m(j, e8);
                return;
            } else {
                if (a != 2) {
                    throw new IllegalStateException("unexpected result");
                }
                return;
            }
        }
        F8 f82 = (F8) atomicReferenceFieldUpdater.get(this);
        if (f82 != null) {
            synchronized (f82) {
                E8[] e8Arr = f82.a;
                r4 = e8Arr != null ? e8Arr[0] : null;
            }
        }
        if (r4 != e8 || Thread.currentThread() == (j2 = j())) {
            return;
        }
        LockSupport.unpark(j2);
    }
}
