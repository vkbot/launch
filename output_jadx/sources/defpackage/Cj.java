package defpackage;

import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class Cj {
    public static final String a;
    public static final long b;
    public static final int c;
    public static final int d;
    public static final long e;
    public static final T7 f;
    public static final Th g;
    public static final Th h;

    static {
        String str;
        int i = AbstractC0175gj.a;
        try {
            str = System.getProperty("kotlinx.coroutines.scheduler.default.name");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str == null) {
            str = "DefaultDispatcher";
        }
        a = str;
        b = AbstractC0171gf.t("kotlinx.coroutines.scheduler.resolution.ns", 100000L, 1L, Long.MAX_VALUE);
        int i2 = AbstractC0175gj.a;
        if (i2 < 2) {
            i2 = 2;
        }
        c = AbstractC0171gf.u("kotlinx.coroutines.scheduler.core.pool.size", i2, 1, 0, 8);
        d = AbstractC0171gf.u("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 0, 2097150, 4);
        e = TimeUnit.SECONDS.toNanos(AbstractC0171gf.t("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 1L, Long.MAX_VALUE));
        f = T7.g;
        g = new Th(0);
        h = new Th(1);
    }
}
