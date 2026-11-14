package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: s7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0471s7 extends AbstractC0521u7 implements InterfaceC0317m6, S5 {
    public static final AtomicReferenceFieldUpdater h = AtomicReferenceFieldUpdater.newUpdater(C0471s7.class, Object.class, "_reusableCancellableContinuation");
    private volatile Object _reusableCancellableContinuation;
    public final AbstractC0162g6 d;
    public final T5 e;
    public Object f;
    public final Object g;

    public C0471s7(AbstractC0162g6 abstractC0162g6, T5 t5) {
        super(-1);
        this.d = abstractC0162g6;
        this.e = t5;
        this.f = AbstractC0152fm.f;
        InterfaceC0110e6 interfaceC0110e6 = t5.b;
        AbstractC0348nb.o(interfaceC0110e6);
        Object e = interfaceC0110e6.e(0, V4.g);
        AbstractC0348nb.o(e);
        this.g = e;
    }

    @Override // defpackage.AbstractC0521u7
    public final void a(Object obj, CancellationException cancellationException) {
        if (obj instanceof C0032b5) {
            ((C0032b5) obj).b.h(cancellationException);
        }
    }

    @Override // defpackage.AbstractC0521u7
    public final S5 b() {
        return this;
    }

    @Override // defpackage.S5
    public final void c(Object obj) {
        T5 t5 = this.e;
        InterfaceC0110e6 interfaceC0110e6 = t5.b;
        AbstractC0348nb.o(interfaceC0110e6);
        Throwable a = AbstractC0276kh.a(obj);
        Object c0006a5 = a == null ? obj : new C0006a5(a, false);
        AbstractC0162g6 abstractC0162g6 = this.d;
        if (abstractC0162g6.h()) {
            this.f = c0006a5;
            this.c = 0;
            abstractC0162g6.g(interfaceC0110e6, this);
            return;
        }
        H8 a2 = AbstractC0176gk.a();
        if (a2.c >= 4294967296L) {
            this.f = c0006a5;
            this.c = 0;
            T2 t2 = a2.e;
            if (t2 == null) {
                t2 = new T2();
                a2.e = t2;
            }
            t2.c(this);
            return;
        }
        a2.k(true);
        try {
            InterfaceC0110e6 interfaceC0110e62 = t5.b;
            AbstractC0348nb.o(interfaceC0110e62);
            Object P = AbstractC0152fm.P(interfaceC0110e62, this.g);
            try {
                t5.c(obj);
                do {
                } while (a2.l());
            } finally {
                AbstractC0152fm.K(interfaceC0110e62, P);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    @Override // defpackage.InterfaceC0317m6
    public final InterfaceC0317m6 g() {
        T5 t5 = this.e;
        if (t5 != null) {
            return t5;
        }
        return null;
    }

    @Override // defpackage.AbstractC0521u7
    public final Object h() {
        Object obj = this.f;
        this.f = AbstractC0152fm.f;
        return obj;
    }

    @Override // defpackage.S5
    public final InterfaceC0110e6 i() {
        InterfaceC0110e6 interfaceC0110e6 = this.e.b;
        AbstractC0348nb.o(interfaceC0110e6);
        return interfaceC0110e6;
    }

    public final String toString() {
        return "DispatchedContinuation[" + this.d + ", " + C6.V(this.e) + ']';
    }
}
