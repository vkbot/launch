package defpackage;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* renamed from: hk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0202hk {
    public static final AtomicIntegerFieldUpdater b = AtomicIntegerFieldUpdater.newUpdater(C0202hk.class, "_size");
    private volatile int _size;
    public E8[] a;

    public final void a(E8 e8) {
        e8.b((F8) this);
        E8[] e8Arr = this.a;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = b;
        if (e8Arr == null) {
            e8Arr = new E8[4];
            this.a = e8Arr;
        } else if (atomicIntegerFieldUpdater.get(this) >= e8Arr.length) {
            Object[] copyOf = Arrays.copyOf(e8Arr, atomicIntegerFieldUpdater.get(this) * 2);
            AbstractC0348nb.q(copyOf, "copyOf(this, newSize)");
            e8Arr = (E8[]) copyOf;
            this.a = e8Arr;
        }
        int i = atomicIntegerFieldUpdater.get(this);
        atomicIntegerFieldUpdater.set(this, i + 1);
        e8Arr[i] = e8;
        e8.b = i;
        c(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0060, code lost:
    
        if (r6.compareTo(r7) < 0) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.E8 b(int r9) {
        /*
            r8 = this;
            E8[] r0 = r8.a
            defpackage.AbstractC0348nb.o(r0)
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r1 = defpackage.C0202hk.b
            int r2 = r1.get(r8)
            r3 = -1
            int r2 = r2 + r3
            r1.set(r8, r2)
            int r2 = r1.get(r8)
            if (r9 >= r2) goto L7a
            int r2 = r1.get(r8)
            r8.d(r9, r2)
            int r2 = r9 + (-1)
            int r2 = r2 / 2
            if (r9 <= 0) goto L3a
            r4 = r0[r9]
            defpackage.AbstractC0348nb.o(r4)
            r5 = r0[r2]
            defpackage.AbstractC0348nb.o(r5)
            int r4 = r4.compareTo(r5)
            if (r4 >= 0) goto L3a
            r8.d(r9, r2)
            r8.c(r2)
            goto L7a
        L3a:
            int r2 = r9 * 2
            int r4 = r2 + 1
            int r5 = r1.get(r8)
            if (r4 < r5) goto L45
            goto L7a
        L45:
            E8[] r5 = r8.a
            defpackage.AbstractC0348nb.o(r5)
            int r2 = r2 + 2
            int r6 = r1.get(r8)
            if (r2 >= r6) goto L63
            r6 = r5[r2]
            defpackage.AbstractC0348nb.o(r6)
            r7 = r5[r4]
            defpackage.AbstractC0348nb.o(r7)
            int r6 = r6.compareTo(r7)
            if (r6 >= 0) goto L63
            goto L64
        L63:
            r2 = r4
        L64:
            r4 = r5[r9]
            defpackage.AbstractC0348nb.o(r4)
            r5 = r5[r2]
            defpackage.AbstractC0348nb.o(r5)
            int r4 = r4.compareTo(r5)
            if (r4 > 0) goto L75
            goto L7a
        L75:
            r8.d(r9, r2)
            r9 = r2
            goto L3a
        L7a:
            int r9 = r1.get(r8)
            r9 = r0[r9]
            defpackage.AbstractC0348nb.o(r9)
            r2 = 0
            r9.b(r2)
            r9.b = r3
            int r8 = r1.get(r8)
            r0[r8] = r2
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0202hk.b(int):E8");
    }

    public final void c(int i) {
        while (i > 0) {
            E8[] e8Arr = this.a;
            AbstractC0348nb.o(e8Arr);
            int i2 = (i - 1) / 2;
            E8 e8 = e8Arr[i2];
            AbstractC0348nb.o(e8);
            E8 e82 = e8Arr[i];
            AbstractC0348nb.o(e82);
            if (e8.compareTo(e82) <= 0) {
                return;
            }
            d(i, i2);
            i = i2;
        }
    }

    public final void d(int i, int i2) {
        E8[] e8Arr = this.a;
        AbstractC0348nb.o(e8Arr);
        E8 e8 = e8Arr[i2];
        AbstractC0348nb.o(e8);
        E8 e82 = e8Arr[i];
        AbstractC0348nb.o(e82);
        e8Arr[i] = e8;
        e8Arr[i2] = e82;
        e8.b = i;
        e82.b = i2;
    }
}
