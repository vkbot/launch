package defpackage;

import java.util.ArrayList;

/* renamed from: jg, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0249jg {
    public C0120eg a;
    public ArrayList b;
    public long c;
    public long d;
    public long e;
    public long f;

    public static void b(Eg eg) {
        int i = eg.j;
        if (!eg.i() && (i & 4) == 0) {
            eg.b();
        }
    }

    public abstract boolean a(Eg eg, Eg eg2, Be be, Be be2);

    /* JADX WARN: Removed duplicated region for block: B:16:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(defpackage.Eg r9) {
        /*
            r8 = this;
            eg r8 = r8.a
            if (r8 == 0) goto Laf
            r0 = 1
            r9.q(r0)
            Eg r1 = r9.h
            r2 = 0
            if (r1 == 0) goto L13
            Eg r1 = r9.i
            if (r1 != 0) goto L13
            r9.h = r2
        L13:
            r9.i = r2
            int r1 = r9.j
            r1 = r1 & 16
            if (r1 == 0) goto L1d
            goto Laf
        L1d:
            androidx.recyclerview.widget.RecyclerView r8 = r8.a
            r8.l0()
            o4 r1 = r8.f
            n4 r2 = r1.b
            eg r3 = r1.a
            int r4 = r1.d
            r5 = 0
            android.view.View r6 = r9.a
            if (r4 != r0) goto L3d
            android.view.View r0 = r1.e
            if (r0 != r6) goto L35
        L33:
            r0 = r5
            goto L66
        L35:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "Cannot call removeViewIfHidden within removeView(At) for a different view"
            r8.<init>(r9)
            throw r8
        L3d:
            r7 = 2
            if (r4 == r7) goto La7
            r1.d = r7     // Catch: java.lang.Throwable -> L51
            androidx.recyclerview.widget.RecyclerView r4 = r3.a     // Catch: java.lang.Throwable -> L51
            int r4 = r4.indexOfChild(r6)     // Catch: java.lang.Throwable -> L51
            r7 = -1
            if (r4 != r7) goto L53
            r1.j(r6)     // Catch: java.lang.Throwable -> L51
        L4e:
            r1.d = r5
            goto L66
        L51:
            r8 = move-exception
            goto La4
        L53:
            boolean r7 = r2.d(r4)     // Catch: java.lang.Throwable -> L51
            if (r7 == 0) goto L63
            r2.f(r4)     // Catch: java.lang.Throwable -> L51
            r1.j(r6)     // Catch: java.lang.Throwable -> L51
            r3.h(r4)     // Catch: java.lang.Throwable -> L51
            goto L4e
        L63:
            r1.d = r5
            goto L33
        L66:
            if (r0 == 0) goto L93
            Eg r1 = androidx.recyclerview.widget.RecyclerView.N(r6)
            ug r2 = r8.c
            r2.l(r1)
            r2.i(r1)
            boolean r1 = androidx.recyclerview.widget.RecyclerView.B0
            if (r1 == 0) goto L93
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "after removing animated view: "
            r1.<init>(r2)
            r1.append(r6)
            java.lang.String r2 = ", "
            r1.append(r2)
            r1.append(r8)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "RecyclerView"
            android.util.Log.d(r2, r1)
        L93:
            r1 = r0 ^ 1
            r8.m0(r1)
            if (r0 != 0) goto Laf
            boolean r9 = r9.m()
            if (r9 == 0) goto Laf
            r8.removeDetachedView(r6, r5)
            goto Laf
        La4:
            r1.d = r5
            throw r8
        La7:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "Cannot call removeViewIfHidden within removeViewIfHidden"
            r8.<init>(r9)
            throw r8
        Laf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC0249jg.c(Eg):void");
    }

    public abstract void d(Eg eg);

    public abstract void e();

    public abstract boolean f();
}
