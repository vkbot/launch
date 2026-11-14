package defpackage;

import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractFutureC0388p implements Future {
    public static final boolean d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    public static final Logger e = Logger.getLogger(AbstractFutureC0388p.class.getName());
    public static final AbstractC0152fm f;
    public static final Object g;
    public volatile Object a;
    public volatile C0284l b;
    public volatile C0362o c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [fm] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    static {
        ?? r4;
        try {
            th = null;
            r4 = new C0310m(AtomicReferenceFieldUpdater.newUpdater(C0362o.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(C0362o.class, C0362o.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractFutureC0388p.class, C0362o.class, "c"), AtomicReferenceFieldUpdater.newUpdater(AbstractFutureC0388p.class, C0284l.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractFutureC0388p.class, Object.class, "a"));
        } catch (Throwable th) {
            th = th;
            r4 = new Object();
        }
        f = r4;
        if (th != null) {
            e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        g = new Object();
    }

    public static void b(AbstractFutureC0388p abstractFutureC0388p) {
        C0362o c0362o;
        C0284l c0284l;
        do {
            c0362o = abstractFutureC0388p.c;
        } while (!f.e(abstractFutureC0388p, c0362o, C0362o.c));
        while (c0362o != null) {
            Thread thread = c0362o.a;
            if (thread != null) {
                c0362o.a = null;
                LockSupport.unpark(thread);
            }
            c0362o = c0362o.b;
        }
        do {
            c0284l = abstractFutureC0388p.b;
        } while (!f.c(abstractFutureC0388p, c0284l));
        C0284l c0284l2 = null;
        while (c0284l != null) {
            C0284l c0284l3 = c0284l.a;
            c0284l.a = c0284l2;
            c0284l2 = c0284l;
            c0284l = c0284l3;
        }
        while (c0284l2 != null) {
            c0284l2 = c0284l2.a;
            try {
                throw null;
                break;
            } catch (RuntimeException e2) {
                e.log(Level.SEVERE, "RuntimeException while executing runnable null with executor null", (Throwable) e2);
            }
        }
    }

    public static Object c(Object obj) {
        if (obj instanceof C0232j) {
            CancellationException cancellationException = ((C0232j) obj).a;
            CancellationException cancellationException2 = new CancellationException("Task was cancelled.");
            cancellationException2.initCause(cancellationException);
            throw cancellationException2;
        }
        if (obj instanceof AbstractC0258k) {
            ((AbstractC0258k) obj).getClass();
            throw new ExecutionException((Throwable) null);
        }
        if (obj == g) {
            return null;
        }
        return obj;
    }

    public static Object d(AbstractFutureC0388p abstractFutureC0388p) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = abstractFutureC0388p.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public final void a(StringBuilder sb) {
        try {
            Object d2 = d(this);
            sb.append("SUCCESS, result=[");
            sb.append(d2 == this ? "this future" : String.valueOf(d2));
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        Object obj = this.a;
        if (obj != null) {
            return false;
        }
        if (!f.d(this, obj, d ? new C0232j(z, new CancellationException("Future.cancel() was called.")) : z ? C0232j.b : C0232j.c)) {
            return false;
        }
        b(this);
        return true;
    }

    public final void e(C0362o c0362o) {
        c0362o.a = null;
        while (true) {
            C0362o c0362o2 = this.c;
            if (c0362o2 == C0362o.c) {
                return;
            }
            C0362o c0362o3 = null;
            while (c0362o2 != null) {
                C0362o c0362o4 = c0362o2.b;
                if (c0362o2.a != null) {
                    c0362o3 = c0362o2;
                } else if (c0362o3 != null) {
                    c0362o3.b = c0362o4;
                    if (c0362o3.a == null) {
                        break;
                    }
                } else if (!f.e(this, c0362o2, c0362o4)) {
                    break;
                }
                c0362o2 = c0362o4;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j);
        if (!Thread.interrupted()) {
            Object obj = this.a;
            if (obj != null) {
                return c(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                C0362o c0362o = this.c;
                C0362o c0362o2 = C0362o.c;
                if (c0362o != c0362o2) {
                    C0362o c0362o3 = new C0362o();
                    do {
                        AbstractC0152fm abstractC0152fm = f;
                        abstractC0152fm.C(c0362o3, c0362o);
                        if (abstractC0152fm.e(this, c0362o, c0362o3)) {
                            do {
                                LockSupport.parkNanos(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.a;
                                    if (obj2 != null) {
                                        return c(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    e(c0362o3);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            e(c0362o3);
                        } else {
                            c0362o = this.c;
                        }
                    } while (c0362o != c0362o2);
                }
                return c(this.a);
            }
            while (nanos > 0) {
                Object obj3 = this.a;
                if (obj3 != null) {
                    return c(obj3);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String abstractFutureC0388p = toString();
            String obj4 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = obj4.toLowerCase(locale);
            String str = "Waited " + j + " " + timeUnit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String i = AbstractC0407pi.i(str, " (plus ");
                long j2 = -nanos;
                long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
                long nanos2 = j2 - timeUnit.toNanos(convert);
                boolean z = convert == 0 || nanos2 > 1000;
                if (convert > 0) {
                    String str2 = i + convert + " " + lowerCase;
                    if (z) {
                        str2 = AbstractC0407pi.i(str2, ",");
                    }
                    i = AbstractC0407pi.i(str2, " ");
                }
                if (z) {
                    i = i + nanos2 + " nanoseconds ";
                }
                str = AbstractC0407pi.i(i, "delay)");
            }
            if (isDone()) {
                throw new TimeoutException(AbstractC0407pi.i(str, " but future completed as timeout expired"));
            }
            throw new TimeoutException(str + " for " + abstractFutureC0388p);
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.a instanceof C0232j;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.a != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.a instanceof C0232j) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                if (this instanceof ScheduledFuture) {
                    str = "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
                } else {
                    str = null;
                }
            } catch (RuntimeException e2) {
                str = "Exception thrown from implementation: " + e2.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.a;
            if (obj2 != null) {
                return c(obj2);
            }
            C0362o c0362o = this.c;
            C0362o c0362o2 = C0362o.c;
            if (c0362o != c0362o2) {
                C0362o c0362o3 = new C0362o();
                do {
                    AbstractC0152fm abstractC0152fm = f;
                    abstractC0152fm.C(c0362o3, c0362o);
                    if (abstractC0152fm.e(this, c0362o, c0362o3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.a;
                            } else {
                                e(c0362o3);
                                throw new InterruptedException();
                            }
                        } while (obj == null);
                        return c(obj);
                    }
                    c0362o = this.c;
                } while (c0362o != c0362o2);
            }
            return c(this.a);
        }
        throw new InterruptedException();
    }
}
