package defpackage;

import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class S2 extends AbstractC0145ff {
    public static volatile S2 b;
    public final Object a;

    public S2(int i) {
        switch (i) {
            case 1:
                this.a = new Object();
                Executors.newFixedThreadPool(4, new ThreadFactoryC0008a7());
                return;
            default:
                this.a = new S2(1);
                return;
        }
    }

    public static S2 H() {
        if (b != null) {
            return b;
        }
        synchronized (S2.class) {
            try {
                if (b == null) {
                    b = new S2(0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return b;
    }
}
