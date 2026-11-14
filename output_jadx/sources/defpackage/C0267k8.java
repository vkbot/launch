package defpackage;

import java.nio.ByteBuffer;

/* renamed from: k8, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0267k8 {
    public static final ThreadLocal d = new ThreadLocal();
    public final int a;
    public final C0446r7 b;
    public volatile int c = 0;

    public C0267k8(C0446r7 c0446r7, int i) {
        this.b = c0446r7;
        this.a = i;
    }

    public final int a(int i) {
        C0222ie c = c();
        int a = c.a(16);
        if (a == 0) {
            return 0;
        }
        ByteBuffer byteBuffer = (ByteBuffer) c.d;
        int i2 = a + c.a;
        return byteBuffer.getInt((i * 4) + byteBuffer.getInt(i2) + i2 + 4);
    }

    public final int b() {
        C0222ie c = c();
        int a = c.a(16);
        if (a == 0) {
            return 0;
        }
        int i = a + c.a;
        return ((ByteBuffer) c.d).getInt(((ByteBuffer) c.d).getInt(i) + i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [hj, java.lang.Object] */
    public final C0222ie c() {
        ThreadLocal threadLocal = d;
        C0222ie c0222ie = (C0222ie) threadLocal.get();
        C0222ie c0222ie2 = c0222ie;
        if (c0222ie == null) {
            ?? abstractC0201hj = new AbstractC0201hj();
            threadLocal.set(abstractC0201hj);
            c0222ie2 = abstractC0201hj;
        }
        C0247je c0247je = (C0247je) this.b.a;
        int a = c0247je.a(6);
        if (a != 0) {
            int i = a + c0247je.a;
            int i2 = (this.a * 4) + ((ByteBuffer) c0247je.d).getInt(i) + i + 4;
            int i3 = ((ByteBuffer) c0247je.d).getInt(i2) + i2;
            ByteBuffer byteBuffer = (ByteBuffer) c0247je.d;
            c0222ie2.d = byteBuffer;
            if (byteBuffer != null) {
                c0222ie2.a = i3;
                int i4 = i3 - byteBuffer.getInt(i3);
                c0222ie2.b = i4;
                c0222ie2.c = ((ByteBuffer) c0222ie2.d).getShort(i4);
            } else {
                c0222ie2.a = 0;
                c0222ie2.b = 0;
                c0222ie2.c = 0;
            }
        }
        return c0222ie2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        C0222ie c = c();
        int a = c.a(4);
        sb.append(Integer.toHexString(a != 0 ? ((ByteBuffer) c.d).getInt(a + c.a) : 0));
        sb.append(", codepoints:");
        int b = b();
        for (int i = 0; i < b; i++) {
            sb.append(Integer.toHexString(a(i)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
