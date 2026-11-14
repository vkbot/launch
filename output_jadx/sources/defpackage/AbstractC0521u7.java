package defpackage;

import java.util.concurrent.CancellationException;

/* renamed from: u7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0521u7 extends AbstractRunnableC0226ij {
    public int c;

    public AbstractC0521u7(int i) {
        super(0L, Cj.g);
        this.c = i;
    }

    public abstract void a(Object obj, CancellationException cancellationException);

    public abstract S5 b();

    public Throwable d(Object obj) {
        C0006a5 c0006a5 = obj instanceof C0006a5 ? (C0006a5) obj : null;
        if (c0006a5 != null) {
            return c0006a5.a;
        }
        return null;
    }

    public Object e(Object obj) {
        return obj;
    }

    public final void f(Throwable th, Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            AbstractC0152fm.a(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        AbstractC0348nb.o(th);
        AbstractC0152fm.q(b().i(), new Error("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract Object h();

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = C0486sm.a;
        Th th = this.b;
        try {
            S5 b = b();
            AbstractC0348nb.p(b, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>");
            C0471s7 c0471s7 = (C0471s7) b;
            T5 t5 = c0471s7.e;
            Object obj2 = c0471s7.g;
            InterfaceC0110e6 interfaceC0110e6 = t5.b;
            AbstractC0348nb.o(interfaceC0110e6);
            Object P = AbstractC0152fm.P(interfaceC0110e6, obj2);
            C0359nm X = P != AbstractC0152fm.o ? C6.X(t5, interfaceC0110e6, P) : null;
            try {
                InterfaceC0110e6 interfaceC0110e62 = t5.b;
                AbstractC0348nb.o(interfaceC0110e62);
                Object h = h();
                Throwable d = d(h);
                InterfaceC0625yb interfaceC0625yb = (d == null && C6.v(this.c)) ? (InterfaceC0625yb) interfaceC0110e62.b(T7.f) : null;
                if (interfaceC0625yb != null && !interfaceC0625yb.a()) {
                    CancellationException u = ((Hb) interfaceC0625yb).u();
                    a(h, u);
                    t5.c(AbstractC0171gf.e(u));
                } else if (d != null) {
                    t5.c(AbstractC0171gf.e(d));
                } else {
                    t5.c(e(h));
                }
                if (X == null || X.L()) {
                    AbstractC0152fm.K(interfaceC0110e6, P);
                }
                try {
                    th.getClass();
                } catch (Throwable th2) {
                    obj = AbstractC0171gf.e(th2);
                }
                f(null, AbstractC0276kh.a(obj));
            } catch (Throwable th3) {
                if (X == null || X.L()) {
                    AbstractC0152fm.K(interfaceC0110e6, P);
                }
                throw th3;
            }
        } catch (Throwable th4) {
            try {
                th.getClass();
            } catch (Throwable th5) {
                obj = AbstractC0171gf.e(th5);
            }
            f(th4, AbstractC0276kh.a(obj));
        }
    }
}
