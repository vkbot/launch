package defpackage;

import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.concurrent.Executor;

/* renamed from: j5, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ExecutorC0238j5 implements Executor, ViewTreeObserver.OnDrawListener, Runnable {
    public Runnable b;
    public final /* synthetic */ AbstractActivityC0028b1 d;
    public final long a = SystemClock.uptimeMillis() + 10000;
    public boolean c = false;

    public ExecutorC0238j5(AbstractActivityC0028b1 abstractActivityC0028b1) {
        this.d = abstractActivityC0028b1;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.b = runnable;
        View decorView = this.d.getWindow().getDecorView();
        if (!this.c) {
            decorView.postOnAnimation(new O(6, this));
        } else if (Looper.myLooper() == Looper.getMainLooper()) {
            decorView.invalidate();
        } else {
            decorView.postInvalidate();
        }
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        boolean z;
        Runnable runnable = this.b;
        if (runnable == null) {
            if (SystemClock.uptimeMillis() > this.a) {
                this.c = false;
                this.d.getWindow().getDecorView().post(this);
                return;
            }
            return;
        }
        runnable.run();
        this.b = null;
        Q9 q9 = this.d.i;
        synchronized (q9.b) {
            z = q9.a;
        }
        if (z) {
            this.c = false;
            this.d.getWindow().getDecorView().post(this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.d.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
    }
}
