package defpackage;

/* renamed from: n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0336n extends AbstractC0152fm {
    @Override // defpackage.AbstractC0152fm
    public final void C(C0362o c0362o, C0362o c0362o2) {
        c0362o.b = c0362o2;
    }

    @Override // defpackage.AbstractC0152fm
    public final void D(C0362o c0362o, Thread thread) {
        c0362o.a = thread;
    }

    @Override // defpackage.AbstractC0152fm
    public final boolean c(AbstractFutureC0388p abstractFutureC0388p, C0284l c0284l) {
        C0284l c0284l2 = C0284l.b;
        synchronized (abstractFutureC0388p) {
            try {
                if (abstractFutureC0388p.b != c0284l) {
                    return false;
                }
                abstractFutureC0388p.b = c0284l2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.AbstractC0152fm
    public final boolean d(AbstractFutureC0388p abstractFutureC0388p, Object obj, Object obj2) {
        synchronized (abstractFutureC0388p) {
            try {
                if (abstractFutureC0388p.a != obj) {
                    return false;
                }
                abstractFutureC0388p.a = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.AbstractC0152fm
    public final boolean e(AbstractFutureC0388p abstractFutureC0388p, C0362o c0362o, C0362o c0362o2) {
        synchronized (abstractFutureC0388p) {
            try {
                if (abstractFutureC0388p.c != c0362o) {
                    return false;
                }
                abstractFutureC0388p.c = c0362o2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
