package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: g9, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0165g9 implements InterfaceC0009a8 {
    public final Context a;
    public final C0139f9 b;
    public final T7 c;
    public final Object d;
    public Handler e;
    public ThreadPoolExecutor f;
    public ThreadPoolExecutor g;
    public AbstractC0152fm h;

    public C0165g9(Context context, C0139f9 c0139f9) {
        T7 t7 = C0191h9.d;
        this.d = new Object();
        AbstractC0145ff.f(context, "Context cannot be null");
        this.a = context.getApplicationContext();
        this.b = c0139f9;
        this.c = t7;
    }

    public final void a() {
        synchronized (this.d) {
            try {
                this.h = null;
                Handler handler = this.e;
                if (handler != null) {
                    handler.removeCallbacks(null);
                }
                this.e = null;
                ThreadPoolExecutor threadPoolExecutor = this.g;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f = null;
                this.g = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final C0448r9 b() {
        try {
            T7 t7 = this.c;
            Context context = this.a;
            C0139f9 c0139f9 = this.b;
            t7.getClass();
            C0558vj o = AbstractC0152fm.o(context, c0139f9);
            int i = o.a;
            if (i != 0) {
                throw new RuntimeException("fetchFonts failed (" + i + ")");
            }
            C0448r9[] c0448r9Arr = (C0448r9[]) o.b;
            if (c0448r9Arr == null || c0448r9Arr.length == 0) {
                throw new RuntimeException("fetchFonts failed (empty result)");
            }
            return c0448r9Arr[0];
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("provider not found", e);
        }
    }

    @Override // defpackage.InterfaceC0009a8
    public final void f(AbstractC0152fm abstractC0152fm) {
        synchronized (this.d) {
            this.h = abstractC0152fm;
        }
        synchronized (this.d) {
            try {
                if (this.h == null) {
                    return;
                }
                if (this.f == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadFactoryC0316m5("emojiCompat"));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    this.g = threadPoolExecutor;
                    this.f = threadPoolExecutor;
                }
                this.f.execute(new O(9, this));
            } finally {
            }
        }
    }
}
