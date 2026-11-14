package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* renamed from: ec, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0116ec extends AbstractC0162g6 implements InterfaceC0034b7 {
    public static final AtomicIntegerFieldUpdater h = AtomicIntegerFieldUpdater.newUpdater(C0116ec.class, "runningWorkers");
    public final C0511tm c;
    public final int d;
    public final /* synthetic */ InterfaceC0034b7 e;
    public final Mc f;
    public final Object g;
    private volatile int runningWorkers;

    /* JADX WARN: Multi-variable type inference failed */
    public C0116ec(C0511tm c0511tm, int i) {
        this.c = c0511tm;
        this.d = i;
        InterfaceC0034b7 interfaceC0034b7 = c0511tm instanceof InterfaceC0034b7 ? (InterfaceC0034b7) c0511tm : null;
        this.e = interfaceC0034b7 == null ? H6.a : interfaceC0034b7;
        this.f = new Mc();
        this.g = new Object();
    }

    @Override // defpackage.InterfaceC0034b7
    public final void c(long j, N3 n3) {
        this.e.c(j, n3);
    }

    @Override // defpackage.AbstractC0162g6
    public final void g(InterfaceC0110e6 interfaceC0110e6, Runnable runnable) {
        this.f.a(runnable);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = h;
        if (atomicIntegerFieldUpdater.get(this) < this.d) {
            synchronized (this.g) {
                if (atomicIntegerFieldUpdater.get(this) >= this.d) {
                    return;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
                Runnable i = i();
                if (i == null) {
                    return;
                }
                this.c.g(this, new RunnableC0233j0(this, 4, i));
            }
        }
    }

    public final Runnable i() {
        while (true) {
            Runnable runnable = (Runnable) this.f.d();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.g) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = h;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.f.c() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }
}
