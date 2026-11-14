package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: i6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0214i6 extends Thread {
    public static final AtomicIntegerFieldUpdater i = AtomicIntegerFieldUpdater.newUpdater(C0214i6.class, "workerCtl");
    public final Ko a;
    public final Kg b;
    public int c;
    public long d;
    public long e;
    public int f;
    public boolean g;
    public final /* synthetic */ ExecutorC0239j6 h;
    private volatile int indexInArray;
    private volatile Object nextParkedWorker;
    private volatile int workerCtl;

    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, Kg] */
    public C0214i6(ExecutorC0239j6 executorC0239j6, int i2) {
        this.h = executorC0239j6;
        setDaemon(true);
        this.a = new Ko();
        this.b = new Object();
        this.c = 4;
        this.nextParkedWorker = ExecutorC0239j6.k;
        AbstractC0069cg.a.getClass();
        this.f = AbstractC0069cg.b.a().nextInt();
        f(i2);
    }

    public final AbstractRunnableC0226ij a(boolean z) {
        AbstractRunnableC0226ij e;
        AbstractRunnableC0226ij e2;
        ExecutorC0239j6 executorC0239j6;
        long j;
        int i2 = this.c;
        AbstractRunnableC0226ij abstractRunnableC0226ij = null;
        Ko ko = this.a;
        ExecutorC0239j6 executorC0239j62 = this.h;
        if (i2 != 1) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = ExecutorC0239j6.i;
            do {
                executorC0239j6 = this.h;
                j = atomicLongFieldUpdater.get(executorC0239j6);
                if (((int) ((9223367638808264704L & j) >> 42)) == 0) {
                    ko.getClass();
                    loop1: while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = Ko.b;
                        AbstractRunnableC0226ij abstractRunnableC0226ij2 = (AbstractRunnableC0226ij) atomicReferenceFieldUpdater.get(ko);
                        if (abstractRunnableC0226ij2 == null || abstractRunnableC0226ij2.b.a != 1) {
                            break;
                        }
                        while (!atomicReferenceFieldUpdater.compareAndSet(ko, abstractRunnableC0226ij2, null)) {
                            if (atomicReferenceFieldUpdater.get(ko) != abstractRunnableC0226ij2) {
                                break;
                            }
                        }
                        abstractRunnableC0226ij = abstractRunnableC0226ij2;
                    }
                    int i3 = Ko.d.get(ko);
                    int i4 = Ko.c.get(ko);
                    while (true) {
                        if (i3 == i4 || Ko.e.get(ko) == 0) {
                            break;
                        }
                        i4--;
                        AbstractRunnableC0226ij c = ko.c(i4, true);
                        if (c != null) {
                            abstractRunnableC0226ij = c;
                            break;
                        }
                    }
                    if (abstractRunnableC0226ij != null) {
                        return abstractRunnableC0226ij;
                    }
                    AbstractRunnableC0226ij abstractRunnableC0226ij3 = (AbstractRunnableC0226ij) executorC0239j62.f.d();
                    return abstractRunnableC0226ij3 == null ? i(1) : abstractRunnableC0226ij3;
                }
            } while (!ExecutorC0239j6.i.compareAndSet(executorC0239j6, j, j - 4398046511104L));
            this.c = 1;
        }
        if (z) {
            boolean z2 = d(executorC0239j62.a * 2) == 0;
            if (z2 && (e2 = e()) != null) {
                return e2;
            }
            ko.getClass();
            AbstractRunnableC0226ij abstractRunnableC0226ij4 = (AbstractRunnableC0226ij) Ko.b.getAndSet(ko, null);
            if (abstractRunnableC0226ij4 == null) {
                abstractRunnableC0226ij4 = ko.b();
            }
            if (abstractRunnableC0226ij4 != null) {
                return abstractRunnableC0226ij4;
            }
            if (!z2 && (e = e()) != null) {
                return e;
            }
        } else {
            AbstractRunnableC0226ij e3 = e();
            if (e3 != null) {
                return e3;
            }
        }
        return i(3);
    }

    public final int b() {
        return this.indexInArray;
    }

    public final Object c() {
        return this.nextParkedWorker;
    }

    public final int d(int i2) {
        int i3 = this.f;
        int i4 = i3 ^ (i3 << 13);
        int i5 = i4 ^ (i4 >> 17);
        int i6 = i5 ^ (i5 << 5);
        this.f = i6;
        int i7 = i2 - 1;
        return (i7 & i2) == 0 ? i7 & i6 : (Integer.MAX_VALUE & i6) % i2;
    }

    public final AbstractRunnableC0226ij e() {
        int d = d(2);
        ExecutorC0239j6 executorC0239j6 = this.h;
        if (d == 0) {
            AbstractRunnableC0226ij abstractRunnableC0226ij = (AbstractRunnableC0226ij) executorC0239j6.e.d();
            return abstractRunnableC0226ij != null ? abstractRunnableC0226ij : (AbstractRunnableC0226ij) executorC0239j6.f.d();
        }
        AbstractRunnableC0226ij abstractRunnableC0226ij2 = (AbstractRunnableC0226ij) executorC0239j6.f.d();
        return abstractRunnableC0226ij2 != null ? abstractRunnableC0226ij2 : (AbstractRunnableC0226ij) executorC0239j6.e.d();
    }

    public final void f(int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.h.d);
        sb.append("-worker-");
        sb.append(i2 == 0 ? "TERMINATED" : String.valueOf(i2));
        setName(sb.toString());
        this.indexInArray = i2;
    }

    public final void g(Object obj) {
        this.nextParkedWorker = obj;
    }

    public final boolean h(int i2) {
        int i3 = this.c;
        boolean z = i3 == 1;
        if (z) {
            ExecutorC0239j6.i.addAndGet(this.h, 4398046511104L);
        }
        if (i3 != i2) {
            this.c = i2;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0082, code lost:
    
        r19 = r6;
        r6 = -2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.AbstractRunnableC0226ij i(int r24) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0214i6.i(int):ij");
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x0004, code lost:
    
        continue;
     */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0214i6.run():void");
    }
}
