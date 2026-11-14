package defpackage;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes.dex */
public final class G6 extends G8 implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;
    public static final G6 i;
    public static final long j;

    /* JADX WARN: Type inference failed for: r0v0, types: [H8, G8, G6] */
    static {
        Long l;
        ?? g8 = new G8();
        i = g8;
        g8.k(false);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l = 1000L;
        }
        j = timeUnit.toNanos(l.longValue());
    }

    @Override // defpackage.H8
    public final Thread j() {
        Thread thread = _thread;
        if (thread == null) {
            synchronized (this) {
                thread = _thread;
                if (thread == null) {
                    thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                    _thread = thread;
                    thread.setDaemon(true);
                    thread.start();
                }
            }
        }
        return thread;
    }

    @Override // defpackage.H8
    public final void m(long j2, E8 e8) {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    @Override // defpackage.G8, defpackage.H8
    public final void n() {
        debugStatus = 4;
        super.n();
    }

    @Override // defpackage.G8
    public final void o(Runnable runnable) {
        if (debugStatus == 4) {
            throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
        }
        super.o(runnable);
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean q;
        AbstractC0176gk.a.set(this);
        try {
            synchronized (this) {
                int i2 = debugStatus;
                if (i2 == 2 || i2 == 3) {
                    if (q) {
                        return;
                    } else {
                        return;
                    }
                }
                debugStatus = 1;
                notifyAll();
                long j2 = Long.MAX_VALUE;
                while (true) {
                    Thread.interrupted();
                    long r = r();
                    if (r == Long.MAX_VALUE) {
                        long nanoTime = System.nanoTime();
                        if (j2 == Long.MAX_VALUE) {
                            j2 = j + nanoTime;
                        }
                        long j3 = j2 - nanoTime;
                        if (j3 <= 0) {
                            _thread = null;
                            t();
                            if (q()) {
                                return;
                            }
                            j();
                            return;
                        }
                        if (r > j3) {
                            r = j3;
                        }
                    } else {
                        j2 = Long.MAX_VALUE;
                    }
                    if (r > 0) {
                        int i3 = debugStatus;
                        if (i3 == 2 || i3 == 3) {
                            _thread = null;
                            t();
                            if (q()) {
                                return;
                            }
                            j();
                            return;
                        }
                        LockSupport.parkNanos(this, r);
                    }
                }
            }
        } finally {
            _thread = null;
            t();
            if (!q()) {
                j();
            }
        }
    }

    public final synchronized void t() {
        int i2 = debugStatus;
        if (i2 == 2 || i2 == 3) {
            debugStatus = 3;
            G8.f.set(this, null);
            G8.g.set(this, null);
            notifyAll();
        }
    }
}
