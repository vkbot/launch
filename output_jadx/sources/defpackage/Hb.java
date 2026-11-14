package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public class Hb implements InterfaceC0625yb, InterfaceC0042bf {
    public static final AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(Hb.class, Object.class, "_state");
    public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(Hb.class, Object.class, "_parentHandle");
    private volatile Object _parentHandle;
    private volatile Object _state;

    public Hb(boolean z) {
        this._state = z ? C6.p : C6.o;
    }

    public static C0315m4 E(Lc lc) {
        while (lc.m()) {
            Lc i = lc.i();
            if (i == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = Lc.b;
                Object obj = atomicReferenceFieldUpdater.get(lc);
                while (true) {
                    lc = (Lc) obj;
                    if (!lc.m()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(lc);
                }
            } else {
                lc = i;
            }
        }
        while (true) {
            lc = lc.l();
            if (!lc.m()) {
                if (lc instanceof C0315m4) {
                    return (C0315m4) lc;
                }
                if (lc instanceof Ce) {
                    return null;
                }
            }
        }
    }

    public static String J(Object obj) {
        if (!(obj instanceof Eb)) {
            return obj instanceof Qa ? ((Qa) obj).a() ? "Active" : "New" : obj instanceof C0006a5 ? "Cancelled" : "Completed";
        }
        Eb eb = (Eb) obj;
        return eb.e() ? "Cancelling" : eb.f() ? "Completing" : "Active";
    }

    public void A(C0058c5 c0058c5) {
        throw c0058c5;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0052 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0055 A[EDGE_INSN: B:31:0x0055->B:25:0x0055 BREAK  A[LOOP:0: B:7:0x000c->B:30:?], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void B(defpackage.InterfaceC0625yb r9) {
        /*
            r8 = this;
            De r0 = defpackage.De.a
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = defpackage.Hb.b
            if (r9 != 0) goto La
            r1.set(r8, r0)
            return
        La:
            Hb r9 = (defpackage.Hb) r9
        Lc:
            java.lang.Object r2 = r9.y()
            boolean r3 = r2 instanceof defpackage.C0447r8
            r4 = 1
            r5 = 0
            r6 = -1
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r7 = defpackage.Hb.a
            if (r3 == 0) goto L36
            r3 = r2
            r8 r3 = (defpackage.C0447r8) r3
            boolean r3 = r3.a
            if (r3 == 0) goto L21
            goto L50
        L21:
            r8 r3 = defpackage.C6.p
        L23:
            boolean r5 = r7.compareAndSet(r9, r2, r3)
            if (r5 == 0) goto L2e
            r9.getClass()
        L2c:
            r5 = r4
            goto L50
        L2e:
            java.lang.Object r5 = r7.get(r9)
            if (r5 == r2) goto L23
        L34:
            r5 = r6
            goto L50
        L36:
            boolean r3 = r2 instanceof defpackage.Pa
            if (r3 == 0) goto L50
            r3 = r2
            Pa r3 = (defpackage.Pa) r3
            Ce r3 = r3.a
        L3f:
            boolean r5 = r7.compareAndSet(r9, r2, r3)
            if (r5 == 0) goto L49
            r9.getClass()
            goto L2c
        L49:
            java.lang.Object r5 = r7.get(r9)
            if (r5 == r2) goto L3f
            goto L34
        L50:
            if (r5 == 0) goto L55
            if (r5 == r4) goto L55
            goto Lc
        L55:
            m4 r2 = new m4
            r2.<init>(r8)
            r3 = 2
            y7 r9 = defpackage.AbstractC0348nb.J(r9, r4, r2, r3)
            l4 r9 = (defpackage.InterfaceC0289l4) r9
            r1.set(r8, r9)
            java.lang.Object r2 = r8.y()
            boolean r2 = r2 instanceof defpackage.Qa
            if (r2 != 0) goto L72
            r9.c()
            r1.set(r8, r0)
        L72:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Hb.B(yb):void");
    }

    public boolean C() {
        return false;
    }

    public final Object D(Object obj) {
        Object K;
        do {
            K = K(y(), obj);
            if (K == C6.j) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                C0006a5 c0006a5 = obj instanceof C0006a5 ? (C0006a5) obj : null;
                throw new IllegalStateException(str, c0006a5 != null ? c0006a5.a : null);
            }
        } while (K == C6.l);
        return K;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Throwable, c5] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.RuntimeException] */
    /* JADX WARN: Type inference failed for: r1v5 */
    public final void F(Ce ce, Throwable th) {
        Object k = ce.k();
        AbstractC0348nb.p(k, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        Lc lc = (Lc) k;
        C0058c5 c0058c5 = 0;
        while (!lc.equals(ce)) {
            if (lc instanceof Ab) {
                Cb cb = (Cb) lc;
                try {
                    cb.o(th);
                } catch (Throwable th2) {
                    if (c0058c5 != 0) {
                        AbstractC0152fm.a(c0058c5, th2);
                    } else {
                        c0058c5 = new RuntimeException("Exception in completion handler " + cb + " for " + this, th2);
                    }
                }
            }
            lc = lc.l();
            c0058c5 = c0058c5;
        }
        if (c0058c5 != 0) {
            A(c0058c5);
        }
        o(th);
    }

    public void G(Object obj) {
    }

    public void H() {
    }

    public final void I(Cb cb) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Lc lc = new Lc();
        cb.getClass();
        Lc.b.lazySet(lc, cb);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = Lc.a;
        atomicReferenceFieldUpdater2.lazySet(lc, cb);
        loop0: while (true) {
            if (cb.k() != cb) {
                break;
            }
            while (!atomicReferenceFieldUpdater2.compareAndSet(cb, cb, lc)) {
                if (atomicReferenceFieldUpdater2.get(cb) != cb) {
                    break;
                }
            }
            lc.j(cb);
        }
        Lc l = cb.l();
        do {
            atomicReferenceFieldUpdater = a;
            if (atomicReferenceFieldUpdater.compareAndSet(this, cb, l)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == cb);
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00c0, code lost:
    
        if (r2 != null) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00d0, code lost:
    
        if (defpackage.AbstractC0348nb.J(r2.e, false, new defpackage.Db(r6, r1, r2, r8), 1) == defpackage.De.a) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00d5, code lost:
    
        r2 = E(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00d9, code lost:
    
        if (r2 != null) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:?, code lost:
    
        return defpackage.C6.k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00df, code lost:
    
        return t(r1, r8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object K(java.lang.Object r7, java.lang.Object r8) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Hb.K(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    @Override // defpackage.InterfaceC0625yb
    public boolean a() {
        Object y = y();
        return (y instanceof Qa) && ((Qa) y).a();
    }

    @Override // defpackage.InterfaceC0110e6
    public final InterfaceC0059c6 b(InterfaceC0085d6 interfaceC0085d6) {
        return AbstractC0152fm.l(this, interfaceC0085d6);
    }

    @Override // defpackage.InterfaceC0110e6
    public final InterfaceC0110e6 d(InterfaceC0085d6 interfaceC0085d6) {
        return AbstractC0152fm.v(this, interfaceC0085d6);
    }

    @Override // defpackage.InterfaceC0110e6
    public final Object e(Object obj, InterfaceC0192ha interfaceC0192ha) {
        return interfaceC0192ha.e(obj, this);
    }

    @Override // defpackage.InterfaceC0110e6
    public final InterfaceC0110e6 f(InterfaceC0110e6 interfaceC0110e6) {
        AbstractC0348nb.r(interfaceC0110e6, "context");
        return interfaceC0110e6 == C0497t8.a ? this : (InterfaceC0110e6) interfaceC0110e6.e(this, V4.d);
    }

    @Override // defpackage.InterfaceC0059c6
    public final InterfaceC0085d6 getKey() {
        return T7.f;
    }

    public final boolean j(Qa qa, Ce ce, Cb cb) {
        char c;
        Fb fb = new Fb(cb, this, qa);
        do {
            Lc i = ce.i();
            if (i == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = Lc.b;
                Object obj = atomicReferenceFieldUpdater.get(ce);
                while (true) {
                    i = (Lc) obj;
                    if (!i.m()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(i);
                }
            }
            Lc.b.lazySet(cb, i);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = Lc.a;
            atomicReferenceFieldUpdater2.lazySet(cb, ce);
            fb.c = ce;
            while (true) {
                if (atomicReferenceFieldUpdater2.compareAndSet(i, ce, fb)) {
                    c = fb.a(i) == null ? (char) 1 : (char) 2;
                } else if (atomicReferenceFieldUpdater2.get(i) != ce) {
                    c = 0;
                    break;
                }
            }
            if (c == 1) {
                return true;
            }
        } while (c != 2);
        return false;
    }

    public void k(Object obj) {
    }

    public void l(Object obj) {
        k(obj);
    }

    public final void m(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new C0650zb(p(), null, this);
        }
        n(cancellationException);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
    
        r0 = defpackage.C6.j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
    
        if (r0 != defpackage.C6.k) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0038, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0020, code lost:
    
        r0 = K(r0, new defpackage.C0006a5(s(r10), false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
    
        if (r0 == defpackage.C6.l) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003b, code lost:
    
        if (r0 != defpackage.C6.j) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003d, code lost:
    
        r0 = null;
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003f, code lost:
    
        r4 = y();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0045, code lost:
    
        if ((r4 instanceof defpackage.Eb) == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0094, code lost:
    
        if ((r4 instanceof defpackage.Qa) == false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0096, code lost:
    
        if (r1 != null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0098, code lost:
    
        r1 = s(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009c, code lost:
    
        r5 = (defpackage.Qa) r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0008, code lost:
    
        if (w() != false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a3, code lost:
    
        if (r5.a() == false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c7, code lost:
    
        r5 = K(r4, new defpackage.C0006a5(r1, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00d2, code lost:
    
        if (r5 == defpackage.C6.j) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d6, code lost:
    
        if (r5 == defpackage.C6.l) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00d8, code lost:
    
        r0 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000a, code lost:
    
        r0 = y();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f1, code lost:
    
        throw new java.lang.IllegalStateException(("Cannot happen in " + r4).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a5, code lost:
    
        r6 = x(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00a9, code lost:
    
        if (r6 != null) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ac, code lost:
    
        r7 = new defpackage.Eb(r6, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b1, code lost:
    
        r4 = defpackage.Hb.a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b7, code lost:
    
        if (r4.compareAndSet(r9, r5, r7) == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
    
        if ((r0 instanceof defpackage.Qa) == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c3, code lost:
    
        if (r4.get(r9) == r5) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b9, code lost:
    
        F(r6, r1);
        r10 = defpackage.C6.j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0060, code lost:
    
        r0 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00f2, code lost:
    
        r10 = defpackage.C6.m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0047, code lost:
    
        monitor-enter(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0048, code lost:
    
        r5 = (defpackage.Eb) r4;
        r5.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0056, code lost:
    
        if (defpackage.Eb.d.get(r5) != defpackage.C6.n) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0058, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x005b, code lost:
    
        if (r5 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x005d, code lost:
    
        r10 = defpackage.C6.m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x005f, code lost:
    
        monitor-exit(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0063, code lost:
    
        r5 = ((defpackage.Eb) r4).e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0014, code lost:
    
        if ((r0 instanceof defpackage.Eb) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x006a, code lost:
    
        if (r1 != null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x006c, code lost:
    
        r1 = s(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0073, code lost:
    
        ((defpackage.Eb) r4).c(r1);
        r10 = ((defpackage.Eb) r4).d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0080, code lost:
    
        if (r5 != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0082, code lost:
    
        r0 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0083, code lost:
    
        monitor-exit(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0084, code lost:
    
        if (r0 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0086, code lost:
    
        F(((defpackage.Eb) r4).a, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x008d, code lost:
    
        r10 = defpackage.C6.j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x005a, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0071, code lost:
    
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0091, code lost:
    
        throw r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00f8, code lost:
    
        if (r0 != defpackage.C6.j) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x010a, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x00fe, code lost:
    
        if (r0 != defpackage.C6.k) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001d, code lost:
    
        if (((defpackage.Eb) r0).f() == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0103, code lost:
    
        if (r0 != defpackage.C6.m) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0106, code lost:
    
        k(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:?, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean n(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Hb.n(java.lang.Object):boolean");
    }

    public final boolean o(Throwable th) {
        if (C()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        InterfaceC0289l4 interfaceC0289l4 = (InterfaceC0289l4) b.get(this);
        return (interfaceC0289l4 == null || interfaceC0289l4 == De.a) ? z : interfaceC0289l4.g(th) || z;
    }

    public String p() {
        return "Job was cancelled";
    }

    public boolean q(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return n(th) && v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [c5, java.lang.RuntimeException] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Throwable, c5] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.RuntimeException] */
    /* JADX WARN: Type inference failed for: r1v8 */
    public final void r(Qa qa, Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = b;
        InterfaceC0289l4 interfaceC0289l4 = (InterfaceC0289l4) atomicReferenceFieldUpdater.get(this);
        if (interfaceC0289l4 != null) {
            interfaceC0289l4.c();
            atomicReferenceFieldUpdater.set(this, De.a);
        }
        C0058c5 c0058c5 = 0;
        C0006a5 c0006a5 = obj instanceof C0006a5 ? (C0006a5) obj : null;
        Throwable th = c0006a5 != null ? c0006a5.a : null;
        if (qa instanceof Cb) {
            try {
                ((Cb) qa).o(th);
                return;
            } catch (Throwable th2) {
                A(new RuntimeException("Exception in completion handler " + qa + " for " + this, th2));
                return;
            }
        }
        Ce b2 = qa.b();
        if (b2 != null) {
            Object k = b2.k();
            AbstractC0348nb.p(k, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            Lc lc = (Lc) k;
            while (!lc.equals(b2)) {
                if (lc instanceof Cb) {
                    Cb cb = (Cb) lc;
                    try {
                        cb.o(th);
                    } catch (Throwable th3) {
                        if (c0058c5 != 0) {
                            AbstractC0152fm.a(c0058c5, th3);
                        } else {
                            c0058c5 = new RuntimeException("Exception in completion handler " + cb + " for " + this, th3);
                        }
                    }
                }
                lc = lc.l();
                c0058c5 = c0058c5;
            }
            if (c0058c5 != 0) {
                A(c0058c5);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Throwable] */
    public final Throwable s(Object obj) {
        CancellationException cancellationException;
        if (obj instanceof Throwable) {
            return (Throwable) obj;
        }
        Hb hb = (Hb) ((InterfaceC0042bf) obj);
        Object y = hb.y();
        if (y instanceof Eb) {
            cancellationException = ((Eb) y).d();
        } else if (y instanceof C0006a5) {
            cancellationException = ((C0006a5) y).a;
        } else {
            if (y instanceof Qa) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + y).toString());
            }
            cancellationException = null;
        }
        CancellationException cancellationException2 = cancellationException instanceof CancellationException ? cancellationException : null;
        if (cancellationException2 == null) {
            cancellationException2 = new C0650zb("Parent job is ".concat(J(y)), cancellationException, hb);
        }
        return cancellationException2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object t(Eb eb, Object obj) {
        Throwable th = null;
        C0006a5 c0006a5 = obj instanceof C0006a5 ? (C0006a5) obj : null;
        Throwable th2 = c0006a5 != null ? c0006a5.a : null;
        synchronized (eb) {
            eb.e();
            ArrayList<Throwable> g = eb.g(th2);
            if (!g.isEmpty()) {
                Iterator it = g.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (!(((Throwable) next) instanceof CancellationException)) {
                        th = next;
                        break;
                    }
                }
                th = th;
                if (th == null) {
                    th = (Throwable) g.get(0);
                }
            } else if (eb.e()) {
                th = new C0650zb(p(), null, this);
            }
            if (th != null && g.size() > 1) {
                Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(g.size()));
                for (Throwable th3 : g) {
                    if (th3 != th && th3 != th && !(th3 instanceof CancellationException) && newSetFromMap.add(th3)) {
                        AbstractC0152fm.a(th, th3);
                    }
                }
            }
        }
        if (th != null && th != th2) {
            obj = new C0006a5(th, false);
        }
        if (th != null && (o(th) || z(th))) {
            AbstractC0348nb.p(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
            C0006a5.b.compareAndSet((C0006a5) obj, 0, 1);
        }
        G(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
        Object ra = obj instanceof Qa ? new Ra((Qa) obj) : obj;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, eb, ra) && atomicReferenceFieldUpdater.get(this) == eb) {
        }
        r(eb, obj);
        return obj;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName() + '{' + J(y()) + '}');
        sb.append('@');
        sb.append(C6.p(this));
        return sb.toString();
    }

    public final CancellationException u() {
        CancellationException cancellationException;
        Object y = y();
        if (!(y instanceof Eb)) {
            if (y instanceof Qa) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (!(y instanceof C0006a5)) {
                return new C0650zb(getClass().getSimpleName().concat(" has completed normally"), null, this);
            }
            Throwable th = ((C0006a5) y).a;
            cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
            return cancellationException == null ? new C0650zb(p(), th, this) : cancellationException;
        }
        Throwable d = ((Eb) y).d();
        if (d == null) {
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        String concat = getClass().getSimpleName().concat(" is cancelling");
        cancellationException = d instanceof CancellationException ? (CancellationException) d : null;
        if (cancellationException != null) {
            return cancellationException;
        }
        if (concat == null) {
            concat = p();
        }
        return new C0650zb(concat, d, this);
    }

    public boolean v() {
        return true;
    }

    public boolean w() {
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [Ce, Lc] */
    public final Ce x(Qa qa) {
        Ce b2 = qa.b();
        if (b2 != null) {
            return b2;
        }
        if (qa instanceof C0447r8) {
            return new Lc();
        }
        if (qa instanceof Cb) {
            I((Cb) qa);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + qa).toString());
    }

    public final Object y() {
        while (true) {
            Object obj = a.get(this);
            if (!(obj instanceof Ve)) {
                return obj;
            }
            ((Ve) obj).a(this);
        }
    }

    public boolean z(Throwable th) {
        return false;
    }
}
