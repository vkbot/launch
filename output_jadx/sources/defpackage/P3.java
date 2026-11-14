package defpackage;

/* loaded from: classes.dex */
public final class P3 {
    public boolean a;
    public O3 b;
    public boolean c;

    public final void a(O3 o3) {
        synchronized (this) {
            while (this.c) {
                try {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.b == o3) {
                return;
            }
            this.b = o3;
            if (this.a) {
                o3.l();
            }
        }
    }
}
