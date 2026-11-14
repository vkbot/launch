package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: c7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0060c7 implements Iterator {
    public int a = -1;
    public int b;
    public int c;
    public C0322mb d;
    public int e;
    public final /* synthetic */ C0086d7 f;

    public C0060c7(C0086d7 c0086d7) {
        this.f = c0086d7;
        int f = AbstractC0554vf.f(c0086d7.b, 0, c0086d7.a.length());
        this.b = f;
        this.c = f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
    
        if (r7 < r3) goto L9;
     */
    /* JADX WARN: Type inference failed for: r0v7, types: [mb, kb] */
    /* JADX WARN: Type inference failed for: r0v8, types: [mb, kb] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            r8 = this;
            int r0 = r8.c
            r1 = 0
            if (r0 >= 0) goto Lb
            r8.a = r1
            r0 = 0
            r8.d = r0
            goto L75
        Lb:
            d7 r2 = r8.f
            int r3 = r2.c
            java.lang.String r4 = r2.a
            r5 = -1
            r6 = 1
            if (r3 <= 0) goto L1c
            int r7 = r8.e
            int r7 = r7 + r6
            r8.e = r7
            if (r7 >= r3) goto L22
        L1c:
            int r3 = r4.length()
            if (r0 <= r3) goto L32
        L22:
            mb r0 = new mb
            int r1 = r8.b
            int r2 = defpackage.Si.I(r4)
            r0.<init>(r1, r2, r6)
            r8.d = r0
            r8.c = r5
            goto L73
        L32:
            Ri r0 = r2.d
            int r2 = r8.c
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.Object r0 = r0.e(r4, r2)
            af r0 = (defpackage.C0016af) r0
            if (r0 != 0) goto L52
            mb r0 = new mb
            int r1 = r8.b
            int r2 = defpackage.Si.I(r4)
            r0.<init>(r1, r2, r6)
            r8.d = r0
            r8.c = r5
            goto L73
        L52:
            java.lang.Object r2 = r0.a
            java.lang.Number r2 = (java.lang.Number) r2
            int r2 = r2.intValue()
            java.lang.Object r0 = r0.b
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            int r3 = r8.b
            mb r3 = defpackage.AbstractC0554vf.o(r3, r2)
            r8.d = r3
            int r2 = r2 + r0
            r8.b = r2
            if (r0 != 0) goto L70
            r1 = r6
        L70:
            int r2 = r2 + r1
            r8.c = r2
        L73:
            r8.a = r6
        L75:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0060c7.a():void");
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.a == -1) {
            a();
        }
        return this.a == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.a == -1) {
            a();
        }
        if (this.a == 0) {
            throw new NoSuchElementException();
        }
        C0322mb c0322mb = this.d;
        AbstractC0348nb.p(c0322mb, "null cannot be cast to non-null type kotlin.ranges.IntRange");
        this.d = null;
        this.a = -1;
        return c0322mb;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
