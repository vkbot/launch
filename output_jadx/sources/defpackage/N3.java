package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class N3 extends AbstractC0521u7 implements S5, InterfaceC0317m6 {
    public static final AtomicIntegerFieldUpdater f = AtomicIntegerFieldUpdater.newUpdater(N3.class, "_decisionAndIndex");
    public static final AtomicReferenceFieldUpdater g = AtomicReferenceFieldUpdater.newUpdater(N3.class, Object.class, "_state");
    public static final AtomicReferenceFieldUpdater h = AtomicReferenceFieldUpdater.newUpdater(N3.class, Object.class, "_parentHandle");
    private volatile int _decisionAndIndex;
    private volatile Object _parentHandle;
    private volatile Object _state;
    public final S5 d;
    public final InterfaceC0110e6 e;

    public N3(S5 s5) {
        super(1);
        this.d = s5;
        this.e = s5.i();
        this._decisionAndIndex = 536870911;
        this._state = C0439r0.a;
    }

    public static void p(C0646z7 c0646z7, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + c0646z7 + ", already has " + obj).toString());
    }

    public static void r(N3 n3, Object obj, int i) {
        Object obj2;
        n3.getClass();
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = g;
            Object obj3 = atomicReferenceFieldUpdater.get(n3);
            if (!(obj3 instanceof Ee)) {
                if (obj3 instanceof Q3) {
                    Q3 q3 = (Q3) obj3;
                    q3.getClass();
                    if (Q3.c.compareAndSet(q3, 0, 1)) {
                        return;
                    }
                }
                throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
            }
            Ee ee = (Ee) obj3;
            if (!(obj instanceof C0006a5) && C6.v(i) && (ee instanceof C0646z7)) {
                obj2 = new Y4(obj, ee instanceof C0646z7 ? (C0646z7) ee : null, (InterfaceC0089da) null, (CancellationException) null, 16);
            } else {
                obj2 = obj;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(n3, obj3, obj2)) {
                if (atomicReferenceFieldUpdater.get(n3) != obj3) {
                    break;
                }
            }
            if (!n3.o()) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = h;
                InterfaceC0621y7 interfaceC0621y7 = (InterfaceC0621y7) atomicReferenceFieldUpdater2.get(n3);
                if (interfaceC0621y7 != null) {
                    interfaceC0621y7.c();
                    atomicReferenceFieldUpdater2.set(n3, De.a);
                }
            }
            n3.l(i);
            return;
        }
    }

    @Override // defpackage.AbstractC0521u7
    public final void a(Object obj, CancellationException cancellationException) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = g;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof Ee) {
                throw new IllegalStateException("Not completed");
            }
            if (obj2 instanceof C0006a5) {
                return;
            }
            if (!(obj2 instanceof Y4)) {
                Y4 y4 = new Y4(obj2, (C0646z7) null, (InterfaceC0089da) null, cancellationException, 14);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, y4)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                return;
            }
            Y4 y42 = (Y4) obj2;
            if (y42.e != null) {
                throw new IllegalStateException("Must be called at most once");
            }
            Y4 a = Y4.a(y42, null, cancellationException, 15);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, a)) {
                if (atomicReferenceFieldUpdater.get(this) != obj2) {
                    break;
                }
            }
            C0646z7 c0646z7 = y42.b;
            if (c0646z7 != null) {
                j(c0646z7, cancellationException);
            }
            InterfaceC0089da interfaceC0089da = y42.c;
            if (interfaceC0089da != null) {
                try {
                    interfaceC0089da.h(cancellationException);
                    return;
                } catch (Throwable th) {
                    AbstractC0152fm.q(this.e, new RuntimeException("Exception in resume onCancellation handler for " + this, th));
                    return;
                }
            }
            return;
        }
    }

    @Override // defpackage.AbstractC0521u7
    public final S5 b() {
        return this.d;
    }

    @Override // defpackage.S5
    public final void c(Object obj) {
        Throwable a = AbstractC0276kh.a(obj);
        if (a != null) {
            obj = new C0006a5(a, false);
        }
        r(this, obj, this.c);
    }

    @Override // defpackage.AbstractC0521u7
    public final Throwable d(Object obj) {
        Throwable d = super.d(obj);
        if (d != null) {
            return d;
        }
        return null;
    }

    @Override // defpackage.AbstractC0521u7
    public final Object e(Object obj) {
        return obj instanceof Y4 ? ((Y4) obj).a : obj;
    }

    @Override // defpackage.InterfaceC0317m6
    public final InterfaceC0317m6 g() {
        S5 s5 = this.d;
        if (s5 instanceof InterfaceC0317m6) {
            return (InterfaceC0317m6) s5;
        }
        return null;
    }

    @Override // defpackage.AbstractC0521u7
    public final Object h() {
        return g.get(this);
    }

    @Override // defpackage.S5
    public final InterfaceC0110e6 i() {
        return this.e;
    }

    public final void j(C0646z7 c0646z7, Throwable th) {
        try {
            c0646z7.a(th);
        } catch (Throwable th2) {
            AbstractC0152fm.q(this.e, new RuntimeException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void k(Throwable th) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = g;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof Ee) {
                Q3 q3 = new Q3(this, th, obj instanceof C0646z7);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, q3)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                if (((Ee) obj) instanceof C0646z7) {
                    j((C0646z7) obj, th);
                }
                if (!o()) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = h;
                    InterfaceC0621y7 interfaceC0621y7 = (InterfaceC0621y7) atomicReferenceFieldUpdater2.get(this);
                    if (interfaceC0621y7 != null) {
                        interfaceC0621y7.c();
                        atomicReferenceFieldUpdater2.set(this, De.a);
                    }
                }
                l(this.c);
                return;
            }
            return;
        }
    }

    public final void l(int i) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        do {
            atomicIntegerFieldUpdater = f;
            i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = i2 >> 29;
            if (i3 != 0) {
                if (i3 != 1) {
                    throw new IllegalStateException("Already resumed");
                }
                boolean z = i == 4;
                S5 s5 = this.d;
                if (z || !(s5 instanceof C0471s7) || C6.v(i) != C6.v(this.c)) {
                    C6.N(this, s5, z);
                    return;
                }
                AbstractC0162g6 abstractC0162g6 = ((C0471s7) s5).d;
                InterfaceC0110e6 interfaceC0110e6 = ((C0471s7) s5).e.b;
                AbstractC0348nb.o(interfaceC0110e6);
                if (abstractC0162g6.h()) {
                    abstractC0162g6.g(interfaceC0110e6, this);
                    return;
                }
                H8 a = AbstractC0176gk.a();
                if (a.c >= 4294967296L) {
                    T2 t2 = a.e;
                    if (t2 == null) {
                        t2 = new T2();
                        a.e = t2;
                    }
                    t2.c(this);
                    return;
                }
                a.k(true);
                try {
                    C6.N(this, s5, true);
                    do {
                    } while (a.l());
                } finally {
                    try {
                        return;
                    } finally {
                    }
                }
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, 1073741824 + (536870911 & i2)));
    }

    public final InterfaceC0621y7 m() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        InterfaceC0625yb interfaceC0625yb = (InterfaceC0625yb) this.e.b(T7.f);
        if (interfaceC0625yb == null) {
            return null;
        }
        InterfaceC0621y7 J = AbstractC0348nb.J(interfaceC0625yb, true, new C0263k4(this), 2);
        do {
            atomicReferenceFieldUpdater = h;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, J)) {
                break;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return J;
    }

    public final void n(InterfaceC0089da interfaceC0089da) {
        C0646z7 c0646z7 = interfaceC0089da instanceof C0646z7 ? (C0646z7) interfaceC0089da : new C0646z7(1, interfaceC0089da);
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = g;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof C0439r0) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c0646z7)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                return;
            }
            if (obj instanceof C0646z7) {
                p(c0646z7, obj);
                throw null;
            }
            if (obj instanceof C0006a5) {
                C0006a5 c0006a5 = (C0006a5) obj;
                c0006a5.getClass();
                if (!C0006a5.b.compareAndSet(c0006a5, 0, 1)) {
                    p(c0646z7, obj);
                    throw null;
                }
                if (obj instanceof Q3) {
                    if (!(obj instanceof C0006a5)) {
                        c0006a5 = null;
                    }
                    j(c0646z7, c0006a5 != null ? c0006a5.a : null);
                    return;
                }
                return;
            }
            if (!(obj instanceof Y4)) {
                Y4 y4 = new Y4(obj, c0646z7, (InterfaceC0089da) null, (CancellationException) null, 28);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, y4)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                return;
            }
            Y4 y42 = (Y4) obj;
            if (y42.b != null) {
                p(c0646z7, obj);
                throw null;
            }
            Throwable th = y42.e;
            if (th != null) {
                j(c0646z7, th);
                return;
            }
            Y4 a = Y4.a(y42, c0646z7, null, 29);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, a)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            return;
        }
    }

    public final boolean o() {
        if (this.c == 2) {
            S5 s5 = this.d;
            AbstractC0348nb.p(s5, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            if (C0471s7.h.get((C0471s7) s5) != null) {
                return true;
            }
        }
        return false;
    }

    public final void q() {
        S5 s5 = this.d;
        Throwable th = null;
        C0471s7 c0471s7 = s5 instanceof C0471s7 ? (C0471s7) s5 : null;
        if (c0471s7 == null) {
            return;
        }
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C0471s7.h;
            Object obj = atomicReferenceFieldUpdater.get(c0471s7);
            L l = AbstractC0152fm.g;
            if (obj != l) {
                if (!(obj instanceof Throwable)) {
                    throw new IllegalStateException(("Inconsistent state " + obj).toString());
                }
                while (!atomicReferenceFieldUpdater.compareAndSet(c0471s7, obj, null)) {
                    if (atomicReferenceFieldUpdater.get(c0471s7) != obj) {
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                }
                th = (Throwable) obj;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(c0471s7, l, this)) {
                if (atomicReferenceFieldUpdater.get(c0471s7) != l) {
                    break;
                }
            }
        }
        if (th == null) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = h;
        InterfaceC0621y7 interfaceC0621y7 = (InterfaceC0621y7) atomicReferenceFieldUpdater2.get(this);
        if (interfaceC0621y7 != null) {
            interfaceC0621y7.c();
            atomicReferenceFieldUpdater2.set(this, De.a);
        }
        k(th);
    }

    public final void s(AbstractC0162g6 abstractC0162g6) {
        C0486sm c0486sm = C0486sm.a;
        S5 s5 = this.d;
        C0471s7 c0471s7 = s5 instanceof C0471s7 ? (C0471s7) s5 : null;
        r(this, c0486sm, (c0471s7 != null ? c0471s7.d : null) == abstractC0162g6 ? 4 : this.c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CancellableContinuation(");
        sb.append(C6.V(this.d));
        sb.append("){");
        Object obj = g.get(this);
        sb.append(obj instanceof Ee ? "Active" : obj instanceof Q3 ? "Cancelled" : "Completed");
        sb.append("}@");
        sb.append(C6.p(this));
        return sb.toString();
    }
}
