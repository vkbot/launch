package defpackage;

/* renamed from: nm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0359nm extends Ah {
    public final ThreadLocal e;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0359nm(defpackage.S5 r3, defpackage.InterfaceC0110e6 r4) {
        /*
            r2 = this;
            om r0 = defpackage.C0385om.a
            c6 r1 = r4.b(r0)
            if (r1 != 0) goto Ld
            e6 r0 = r4.f(r0)
            goto Le
        Ld:
            r0 = r4
        Le:
            r2.<init>(r3, r0)
            java.lang.ThreadLocal r0 = new java.lang.ThreadLocal
            r0.<init>()
            r2.e = r0
            e6 r3 = r3.i()
            T7 r0 = defpackage.T7.b
            c6 r3 = r3.b(r0)
            boolean r3 = r3 instanceof defpackage.AbstractC0162g6
            if (r3 != 0) goto L31
            r3 = 0
            java.lang.Object r3 = defpackage.AbstractC0152fm.P(r4, r3)
            defpackage.AbstractC0152fm.K(r4, r3)
            r2.M(r4, r3)
        L31:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0359nm.<init>(S5, e6):void");
    }

    public final boolean L() {
        boolean z = this.threadLocalIsSet && this.e.get() == null;
        this.e.remove();
        return !z;
    }

    public final void M(InterfaceC0110e6 interfaceC0110e6, Object obj) {
        this.threadLocalIsSet = true;
        this.e.set(new C0016af(interfaceC0110e6, obj));
    }

    @Override // defpackage.Ah, defpackage.Hb
    public final void l(Object obj) {
        if (this.threadLocalIsSet) {
            C0016af c0016af = (C0016af) this.e.get();
            if (c0016af != null) {
                AbstractC0152fm.K((InterfaceC0110e6) c0016af.a, c0016af.b);
            }
            this.e.remove();
        }
        Object K = C6.K(obj);
        S5 s5 = this.d;
        InterfaceC0110e6 i = s5.i();
        Object P = AbstractC0152fm.P(i, null);
        C0359nm X = P != AbstractC0152fm.o ? C6.X(s5, i, P) : null;
        try {
            this.d.c(K);
        } finally {
            if (X == null || X.L()) {
                AbstractC0152fm.K(i, P);
            }
        }
    }
}
