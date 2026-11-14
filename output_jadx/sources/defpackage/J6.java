package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class J6 extends I8 implements Executor {
    public static final J6 c = new AbstractC0162g6();
    public static final AbstractC0162g6 d;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [J6, g6] */
    /* JADX WARN: Type inference failed for: r2v3, types: [ec] */
    static {
        C0511tm c0511tm = C0511tm.c;
        int i = AbstractC0175gj.a;
        if (64 >= i) {
            i = 64;
        }
        int u = AbstractC0171gf.u("kotlinx.coroutines.io.parallelism", i, 0, 0, 12);
        c0511tm.getClass();
        if (u < 1) {
            throw new IllegalArgumentException(AbstractC0407pi.h("Expected positive parallelism level, but got ", u).toString());
        }
        if (u < Cj.d) {
            if (u < 1) {
                throw new IllegalArgumentException(AbstractC0407pi.h("Expected positive parallelism level, but got ", u).toString());
            }
            c0511tm = new C0116ec(c0511tm, u);
        }
        d = c0511tm;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        g(C0497t8.a, runnable);
    }

    @Override // defpackage.AbstractC0162g6
    public final void g(InterfaceC0110e6 interfaceC0110e6, Runnable runnable) {
        d.g(interfaceC0110e6, runnable);
    }

    @Override // defpackage.AbstractC0162g6
    public final String toString() {
        return "Dispatchers.IO";
    }
}
