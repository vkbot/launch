package defpackage;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* renamed from: j6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ExecutorC0239j6 implements Executor, Closeable {
    public static final AtomicLongFieldUpdater h = AtomicLongFieldUpdater.newUpdater(ExecutorC0239j6.class, "parkedWorkersStack");
    public static final AtomicLongFieldUpdater i = AtomicLongFieldUpdater.newUpdater(ExecutorC0239j6.class, "controlState");
    public static final AtomicIntegerFieldUpdater j = AtomicIntegerFieldUpdater.newUpdater(ExecutorC0239j6.class, "_isTerminated");
    public static final L k = new L(27, "NOT_IN_STACK");
    private volatile int _isTerminated;
    public final int a;
    public final int b;
    public final long c;
    private volatile long controlState;
    public final String d;
    public final C0574wa e;
    public final C0574wa f;
    public final Vg g;
    private volatile long parkedWorkersStack;

    /* JADX WARN: Type inference failed for: r4v4, types: [Mc, wa] */
    /* JADX WARN: Type inference failed for: r4v5, types: [Mc, wa] */
    public ExecutorC0239j6(int i2, int i3, long j2, String str) {
        this.a = i2;
        this.b = i3;
        this.c = j2;
        this.d = str;
        if (i2 < 1) {
            throw new IllegalArgumentException(("Core pool size " + i2 + " should be at least 1").toString());
        }
        if (i3 < i2) {
            throw new IllegalArgumentException(("Max pool size " + i3 + " should be greater than or equals to core pool size " + i2).toString());
        }
        if (i3 > 2097150) {
            throw new IllegalArgumentException(("Max pool size " + i3 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j2 <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j2 + " must be positive").toString());
        }
        this.e = new Mc();
        this.f = new Mc();
        this.g = new Vg((i2 + 1) * 2);
        this.controlState = i2 << 42;
        this._isTerminated = 0;
    }

    public final int a() {
        synchronized (this.g) {
            try {
                if (j.get(this) != 0) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = i;
                long j2 = atomicLongFieldUpdater.get(this);
                int i2 = (int) (j2 & 2097151);
                int i3 = i2 - ((int) ((j2 & 4398044413952L) >> 21));
                if (i3 < 0) {
                    i3 = 0;
                }
                if (i3 >= this.a) {
                    return 0;
                }
                if (i2 >= this.b) {
                    return 0;
                }
                int i4 = ((int) (atomicLongFieldUpdater.get(this) & 2097151)) + 1;
                if (i4 <= 0 || this.g.b(i4) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                C0214i6 c0214i6 = new C0214i6(this, i4);
                this.g.c(i4, c0214i6);
                if (i4 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i5 = i3 + 1;
                c0214i6.start();
                return i5;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(Runnable runnable, Th th, boolean z) {
        AbstractRunnableC0226ij c0252jj;
        int i2;
        Cj.f.getClass();
        long nanoTime = System.nanoTime();
        if (runnable instanceof AbstractRunnableC0226ij) {
            c0252jj = (AbstractRunnableC0226ij) runnable;
            c0252jj.a = nanoTime;
            c0252jj.b = th;
        } else {
            c0252jj = new C0252jj(runnable, nanoTime, th);
        }
        boolean z2 = false;
        boolean z3 = c0252jj.b.a == 1;
        AtomicLongFieldUpdater atomicLongFieldUpdater = i;
        long addAndGet = z3 ? atomicLongFieldUpdater.addAndGet(this, 2097152L) : 0L;
        Thread currentThread = Thread.currentThread();
        C0214i6 c0214i6 = currentThread instanceof C0214i6 ? (C0214i6) currentThread : null;
        if (c0214i6 == null || !AbstractC0348nb.g(c0214i6.h, this)) {
            c0214i6 = null;
        }
        if (c0214i6 != null && (i2 = c0214i6.c) != 5 && (c0252jj.b.a != 0 || i2 != 2)) {
            c0214i6.g = true;
            Ko ko = c0214i6.a;
            if (z) {
                c0252jj = ko.a(c0252jj);
            } else {
                ko.getClass();
                AbstractRunnableC0226ij abstractRunnableC0226ij = (AbstractRunnableC0226ij) Ko.b.getAndSet(ko, c0252jj);
                c0252jj = abstractRunnableC0226ij == null ? null : ko.a(abstractRunnableC0226ij);
            }
        }
        if (c0252jj != null) {
            if (!(c0252jj.b.a == 1 ? this.f.a(c0252jj) : this.e.a(c0252jj))) {
                throw new RejectedExecutionException(this.d + " was terminated");
            }
        }
        if (z && c0214i6 != null) {
            z2 = true;
        }
        if (z3) {
            if (z2 || e() || d(addAndGet)) {
                return;
            }
            e();
            return;
        }
        if (z2 || e() || d(atomicLongFieldUpdater.get(this))) {
            return;
        }
        e();
    }

    public final void c(C0214i6 c0214i6, int i2, int i3) {
        while (true) {
            long j2 = h.get(this);
            int i4 = (int) (2097151 & j2);
            long j3 = (2097152 + j2) & (-2097152);
            if (i4 == i2) {
                if (i3 == 0) {
                    Object c = c0214i6.c();
                    while (true) {
                        if (c == k) {
                            i4 = -1;
                            break;
                        }
                        if (c == null) {
                            i4 = 0;
                            break;
                        }
                        C0214i6 c0214i62 = (C0214i6) c;
                        int b = c0214i62.b();
                        if (b != 0) {
                            i4 = b;
                            break;
                        }
                        c = c0214i62.c();
                    }
                } else {
                    i4 = i3;
                }
            }
            if (i4 >= 0) {
                if (h.compareAndSet(this, j2, i4 | j3)) {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0087, code lost:
    
        if (r1 == null) goto L39;
     */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() {
        /*
            r8 = this;
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = defpackage.ExecutorC0239j6.j
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r8, r1, r2)
            if (r0 != 0) goto Lc
            goto Laf
        Lc:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            boolean r1 = r0 instanceof defpackage.C0214i6
            r3 = 0
            if (r1 == 0) goto L18
            i6 r0 = (defpackage.C0214i6) r0
            goto L19
        L18:
            r0 = r3
        L19:
            if (r0 == 0) goto L24
            j6 r1 = r0.h
            boolean r1 = defpackage.AbstractC0348nb.g(r1, r8)
            if (r1 == 0) goto L24
            goto L25
        L24:
            r0 = r3
        L25:
            Vg r1 = r8.g
            monitor-enter(r1)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r4 = defpackage.ExecutorC0239j6.i     // Catch: java.lang.Throwable -> Lc1
            long r4 = r4.get(r8)     // Catch: java.lang.Throwable -> Lc1
            r6 = 2097151(0x1fffff, double:1.0361303E-317)
            long r4 = r4 & r6
            int r4 = (int) r4
            monitor-exit(r1)
            if (r2 > r4) goto L77
            r1 = r2
        L37:
            Vg r5 = r8.g
            java.lang.Object r5 = r5.b(r1)
            defpackage.AbstractC0348nb.o(r5)
            i6 r5 = (defpackage.C0214i6) r5
            if (r5 == r0) goto L72
        L44:
            boolean r6 = r5.isAlive()
            if (r6 == 0) goto L53
            java.util.concurrent.locks.LockSupport.unpark(r5)
            r6 = 10000(0x2710, double:4.9407E-320)
            r5.join(r6)
            goto L44
        L53:
            Ko r5 = r5.a
            wa r6 = r8.f
            r5.getClass()
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r7 = defpackage.Ko.b
            java.lang.Object r7 = r7.getAndSet(r5, r3)
            ij r7 = (defpackage.AbstractRunnableC0226ij) r7
            if (r7 == 0) goto L67
            r6.a(r7)
        L67:
            ij r7 = r5.b()
            if (r7 != 0) goto L6e
            goto L72
        L6e:
            r6.a(r7)
            goto L67
        L72:
            if (r1 == r4) goto L77
            int r1 = r1 + 1
            goto L37
        L77:
            wa r1 = r8.f
            r1.b()
            wa r1 = r8.e
            r1.b()
        L81:
            if (r0 == 0) goto L89
            ij r1 = r0.a(r2)
            if (r1 != 0) goto Lb0
        L89:
            wa r1 = r8.e
            java.lang.Object r1 = r1.d()
            ij r1 = (defpackage.AbstractRunnableC0226ij) r1
            if (r1 != 0) goto Lb0
            wa r1 = r8.f
            java.lang.Object r1 = r1.d()
            ij r1 = (defpackage.AbstractRunnableC0226ij) r1
            if (r1 != 0) goto Lb0
            if (r0 == 0) goto La3
            r1 = 5
            r0.h(r1)
        La3:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = defpackage.ExecutorC0239j6.h
            r1 = 0
            r0.set(r8, r1)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = defpackage.ExecutorC0239j6.i
            r0.set(r8, r1)
        Laf:
            return
        Lb0:
            r1.run()     // Catch: java.lang.Throwable -> Lb4
            goto L81
        Lb4:
            r1 = move-exception
            java.lang.Thread r3 = java.lang.Thread.currentThread()
            java.lang.Thread$UncaughtExceptionHandler r4 = r3.getUncaughtExceptionHandler()
            r4.uncaughtException(r3, r1)
            goto L81
        Lc1:
            r8 = move-exception
            monitor-exit(r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ExecutorC0239j6.close():void");
    }

    public final boolean d(long j2) {
        int i2 = ((int) (2097151 & j2)) - ((int) ((j2 & 4398044413952L) >> 21));
        if (i2 < 0) {
            i2 = 0;
        }
        int i3 = this.a;
        if (i2 < i3) {
            int a = a();
            if (a == 1 && i3 > 1) {
                a();
            }
            if (a > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean e() {
        L l;
        int i2;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = h;
            long j2 = atomicLongFieldUpdater.get(this);
            C0214i6 c0214i6 = (C0214i6) this.g.b((int) (2097151 & j2));
            if (c0214i6 == null) {
                c0214i6 = null;
            } else {
                long j3 = (2097152 + j2) & (-2097152);
                Object c = c0214i6.c();
                while (true) {
                    l = k;
                    if (c == l) {
                        i2 = -1;
                        break;
                    }
                    if (c == null) {
                        i2 = 0;
                        break;
                    }
                    C0214i6 c0214i62 = (C0214i6) c;
                    i2 = c0214i62.b();
                    if (i2 != 0) {
                        break;
                    }
                    c = c0214i62.c();
                }
                if (i2 >= 0 && atomicLongFieldUpdater.compareAndSet(this, j2, j3 | i2)) {
                    c0214i6.g(l);
                }
            }
            if (c0214i6 == null) {
                return false;
            }
            if (C0214i6.i.compareAndSet(c0214i6, -1, 0)) {
                LockSupport.unpark(c0214i6);
                return true;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        b(runnable, Cj.g, false);
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        Vg vg = this.g;
        int a = vg.a();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 1; i7 < a; i7++) {
            C0214i6 c0214i6 = (C0214i6) vg.b(i7);
            if (c0214i6 != null) {
                Ko ko = c0214i6.a;
                ko.getClass();
                int i8 = Ko.b.get(ko) != null ? (Ko.c.get(ko) - Ko.d.get(ko)) + 1 : Ko.c.get(ko) - Ko.d.get(ko);
                int p = AbstractC0407pi.p(c0214i6.c);
                if (p == 0) {
                    i2++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(i8);
                    sb.append('c');
                    arrayList.add(sb.toString());
                } else if (p == 1) {
                    i3++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i8);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (p == 2) {
                    i4++;
                } else if (p == 3) {
                    i5++;
                    if (i8 > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(i8);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (p == 4) {
                    i6++;
                }
            }
        }
        long j2 = i.get(this);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.d);
        sb4.append('@');
        sb4.append(C6.p(this));
        sb4.append("[Pool Size {core = ");
        int i9 = this.a;
        sb4.append(i9);
        sb4.append(", max = ");
        sb4.append(this.b);
        sb4.append("}, Worker States {CPU = ");
        sb4.append(i2);
        sb4.append(", blocking = ");
        sb4.append(i3);
        sb4.append(", parked = ");
        sb4.append(i4);
        sb4.append(", dormant = ");
        sb4.append(i5);
        sb4.append(", terminated = ");
        sb4.append(i6);
        sb4.append("}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.e.c());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.f.c());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & j2));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & j2) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(i9 - ((int) ((j2 & 9223367638808264704L) >> 42)));
        sb4.append("}]");
        return sb4.toString();
    }
}
