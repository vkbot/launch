package defpackage;

/* renamed from: n4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0341n4 {
    public long a = 0;
    public C0341n4 b;

    public final void a(int i) {
        if (i < 64) {
            this.a &= ~(1 << i);
            return;
        }
        C0341n4 c0341n4 = this.b;
        if (c0341n4 != null) {
            c0341n4.a(i - 64);
        }
    }

    public final int b(int i) {
        C0341n4 c0341n4 = this.b;
        if (c0341n4 == null) {
            if (i >= 64) {
                return Long.bitCount(this.a);
            }
            return Long.bitCount(((1 << i) - 1) & this.a);
        }
        if (i < 64) {
            return Long.bitCount(((1 << i) - 1) & this.a);
        }
        return Long.bitCount(this.a) + c0341n4.b(i - 64);
    }

    public final void c() {
        if (this.b == null) {
            this.b = new C0341n4();
        }
    }

    public final boolean d(int i) {
        if (i < 64) {
            return ((1 << i) & this.a) != 0;
        }
        c();
        return this.b.d(i - 64);
    }

    public final void e(int i, boolean z) {
        if (i >= 64) {
            c();
            this.b.e(i - 64, z);
            return;
        }
        long j = this.a;
        boolean z2 = (Long.MIN_VALUE & j) != 0;
        long j2 = (1 << i) - 1;
        this.a = ((j & (~j2)) << 1) | (j & j2);
        if (z) {
            h(i);
        } else {
            a(i);
        }
        if (z2 || this.b != null) {
            c();
            this.b.e(0, z2);
        }
    }

    public final boolean f(int i) {
        if (i >= 64) {
            c();
            return this.b.f(i - 64);
        }
        long j = 1 << i;
        long j2 = this.a;
        boolean z = (j2 & j) != 0;
        long j3 = j2 & (~j);
        this.a = j3;
        long j4 = j - 1;
        this.a = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
        C0341n4 c0341n4 = this.b;
        if (c0341n4 != null) {
            if (c0341n4.d(0)) {
                h(63);
            }
            this.b.f(0);
        }
        return z;
    }

    public final void g() {
        this.a = 0L;
        C0341n4 c0341n4 = this.b;
        if (c0341n4 != null) {
            c0341n4.g();
        }
    }

    public final void h(int i) {
        if (i < 64) {
            this.a |= 1 << i;
        } else {
            c();
            this.b.h(i - 64);
        }
    }

    public final String toString() {
        if (this.b == null) {
            return Long.toBinaryString(this.a);
        }
        return this.b.toString() + "xx" + Long.toBinaryString(this.a);
    }
}
