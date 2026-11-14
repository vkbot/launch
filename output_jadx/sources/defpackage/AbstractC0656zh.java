package defpackage;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;

/* renamed from: zh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0656zh extends I8 {
    public ExecutorC0239j6 c;

    @Override // defpackage.AbstractC0162g6
    public final void g(InterfaceC0110e6 interfaceC0110e6, Runnable runnable) {
        ExecutorC0239j6 executorC0239j6 = this.c;
        AtomicLongFieldUpdater atomicLongFieldUpdater = ExecutorC0239j6.h;
        executorC0239j6.b(runnable, Cj.g, false);
    }
}
