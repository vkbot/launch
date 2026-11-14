package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public abstract class E8 implements Runnable, Comparable, InterfaceC0621y7 {
    private volatile Object _heap;
    public long a;
    public int b;

    public final int a(long j, F8 f8, G8 g8) {
        synchronized (this) {
            if (this._heap == AbstractC0348nb.e) {
                return 2;
            }
            synchronized (f8) {
                try {
                    E8[] e8Arr = f8.a;
                    E8 e8 = e8Arr != null ? e8Arr[0] : null;
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = G8.f;
                    g8.getClass();
                    if (G8.h.get(g8) != 0) {
                        return 1;
                    }
                    if (e8 == null) {
                        f8.c = j;
                    } else {
                        long j2 = e8.a;
                        if (j2 - j < 0) {
                            j = j2;
                        }
                        if (j - f8.c > 0) {
                            f8.c = j;
                        }
                    }
                    long j3 = this.a;
                    long j4 = f8.c;
                    if (j3 - j4 < 0) {
                        this.a = j4;
                    }
                    f8.a(this);
                    return 0;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void b(F8 f8) {
        if (this._heap == AbstractC0348nb.e) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        this._heap = f8;
    }

    @Override // defpackage.InterfaceC0621y7
    public final void c() {
        synchronized (this) {
            try {
                Object obj = this._heap;
                L l = AbstractC0348nb.e;
                if (obj == l) {
                    return;
                }
                F8 f8 = obj instanceof F8 ? (F8) obj : null;
                if (f8 != null) {
                    synchronized (f8) {
                        Object obj2 = this._heap;
                        if ((obj2 instanceof C0202hk ? (C0202hk) obj2 : null) != null) {
                            f8.b(this.b);
                        }
                    }
                }
                this._heap = l;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        long j = this.a - ((E8) obj).a;
        if (j > 0) {
            return 1;
        }
        return j < 0 ? -1 : 0;
    }

    public String toString() {
        return "Delayed[nanos=" + this.a + ']';
    }
}
