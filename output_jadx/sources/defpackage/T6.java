package defpackage;

/* loaded from: classes.dex */
public final class T6 extends AbstractC0656zh {
    public static final T6 d;

    /* JADX WARN: Type inference failed for: r0v0, types: [T6, zh, g6] */
    static {
        int i = Cj.c;
        int i2 = Cj.d;
        long j = Cj.e;
        String str = Cj.a;
        ?? abstractC0162g6 = new AbstractC0162g6();
        abstractC0162g6.c = new ExecutorC0239j6(i, i2, j, str);
        d = abstractC0162g6;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // defpackage.AbstractC0162g6
    public final String toString() {
        return "Dispatchers.Default";
    }
}
