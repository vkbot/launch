package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: k4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0263k4 extends Ab {
    public final N3 e;

    public C0263k4(N3 n3) {
        this.e = n3;
    }

    @Override // defpackage.InterfaceC0089da
    public final /* bridge */ /* synthetic */ Object h(Object obj) {
        o((Throwable) obj);
        return C0486sm.a;
    }

    @Override // defpackage.Cb
    public final void o(Throwable th) {
        Hb n = n();
        N3 n3 = this.e;
        n3.getClass();
        CancellationException u = n.u();
        if (n3.o()) {
            S5 s5 = n3.d;
            AbstractC0348nb.p(s5, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            C0471s7 c0471s7 = (C0471s7) s5;
            loop0: while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C0471s7.h;
                Object obj = atomicReferenceFieldUpdater.get(c0471s7);
                L l = AbstractC0152fm.g;
                if (!AbstractC0348nb.g(obj, l)) {
                    if (obj instanceof Throwable) {
                        return;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(c0471s7, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(c0471s7) != obj) {
                            break;
                        }
                    }
                    break loop0;
                }
                while (!atomicReferenceFieldUpdater.compareAndSet(c0471s7, l, u)) {
                    if (atomicReferenceFieldUpdater.get(c0471s7) != l) {
                        break;
                    }
                }
                return;
            }
        }
        n3.k(u);
        if (n3.o()) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = N3.h;
        InterfaceC0621y7 interfaceC0621y7 = (InterfaceC0621y7) atomicReferenceFieldUpdater2.get(n3);
        if (interfaceC0621y7 == null) {
            return;
        }
        interfaceC0621y7.c();
        atomicReferenceFieldUpdater2.set(n3, De.a);
    }
}
