package defpackage;

/* renamed from: gk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0176gk {
    public static final ThreadLocal a = new ThreadLocal();

    public static H8 a() {
        ThreadLocal threadLocal = a;
        H8 h8 = (H8) threadLocal.get();
        if (h8 != null) {
            return h8;
        }
        C0467s3 c0467s3 = new C0467s3(Thread.currentThread());
        threadLocal.set(c0467s3);
        return c0467s3;
    }
}
