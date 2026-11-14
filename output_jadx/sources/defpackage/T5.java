package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public abstract class T5 extends AbstractC0236j3 {
    public final InterfaceC0110e6 b;
    public transient S5 c;

    public T5(S5 s5, InterfaceC0110e6 interfaceC0110e6) {
        super(s5);
        this.b = interfaceC0110e6;
    }

    @Override // defpackage.S5
    public final InterfaceC0110e6 i() {
        InterfaceC0110e6 interfaceC0110e6 = this.b;
        AbstractC0348nb.o(interfaceC0110e6);
        return interfaceC0110e6;
    }

    @Override // defpackage.AbstractC0236j3
    public final void j() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        S5 s5 = this.c;
        if (s5 != null && s5 != this) {
            InterfaceC0110e6 interfaceC0110e6 = this.b;
            AbstractC0348nb.o(interfaceC0110e6);
            InterfaceC0059c6 b = interfaceC0110e6.b(T7.b);
            AbstractC0348nb.o(b);
            C0471s7 c0471s7 = (C0471s7) s5;
            do {
                atomicReferenceFieldUpdater = C0471s7.h;
            } while (atomicReferenceFieldUpdater.get(c0471s7) == AbstractC0152fm.g);
            Object obj = atomicReferenceFieldUpdater.get(c0471s7);
            N3 n3 = obj instanceof N3 ? (N3) obj : null;
            if (n3 != null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = N3.h;
                InterfaceC0621y7 interfaceC0621y7 = (InterfaceC0621y7) atomicReferenceFieldUpdater2.get(n3);
                if (interfaceC0621y7 != null) {
                    interfaceC0621y7.c();
                    atomicReferenceFieldUpdater2.set(n3, De.a);
                }
            }
        }
        this.c = Z4.a;
    }

    public T5(S5 s5) {
        this(s5, s5 != null ? s5.i() : null);
    }
}
