package defpackage;

import android.os.Process;

/* loaded from: classes.dex */
public final class Tg extends Thread {
    public final int a;

    public Tg(Runnable runnable) {
        super(runnable, "fonts-androidx");
        this.a = 10;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.a);
        super.run();
    }
}
