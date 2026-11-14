package defpackage;

/* loaded from: classes.dex */
public final class Gb extends AbstractC0224ih implements InterfaceC0192ha {
    public Ce c;
    public Lc d;
    public int e;
    public /* synthetic */ Object f;
    public final /* synthetic */ Hb g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Gb(Hb hb, S5 s5) {
        super(s5);
        this.g = hb;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        Gb gb = new Gb(this.g, s5);
        gb.f = obj;
        return gb;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0060  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0062 -> B:6:0x0075). Please report as a decompilation issue!!! */
    @Override // defpackage.AbstractC0236j3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(java.lang.Object r7) {
        /*
            r6 = this;
            l6 r0 = defpackage.EnumC0291l6.a
            int r1 = r6.e
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L24
            if (r1 == r3) goto L20
            if (r1 != r2) goto L18
            Lc r1 = r6.d
            Ce r3 = r6.c
            java.lang.Object r4 = r6.f
            Mh r4 = (defpackage.Mh) r4
            defpackage.AbstractC0171gf.v(r7)
            goto L75
        L18:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L20:
            defpackage.AbstractC0171gf.v(r7)
            goto L7a
        L24:
            defpackage.AbstractC0171gf.v(r7)
            java.lang.Object r7 = r6.f
            Mh r7 = (defpackage.Mh) r7
            Hb r1 = r6.g
            java.lang.Object r1 = r1.y()
            boolean r4 = r1 instanceof defpackage.C0315m4
            if (r4 == 0) goto L3f
            m4 r1 = (defpackage.C0315m4) r1
            Hb r1 = r1.e
            r6.e = r3
            r7.b(r1, r6)
            return r0
        L3f:
            boolean r3 = r1 instanceof defpackage.Qa
            if (r3 == 0) goto L7a
            Qa r1 = (defpackage.Qa) r1
            Ce r1 = r1.b()
            if (r1 == 0) goto L7a
            java.lang.Object r3 = r1.k()
            java.lang.String r4 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"
            defpackage.AbstractC0348nb.p(r3, r4)
            Lc r3 = (defpackage.Lc) r3
            r4 = r7
            r5 = r3
            r3 = r1
            r1 = r5
        L5a:
            boolean r7 = r1.equals(r3)
            if (r7 != 0) goto L7a
            boolean r7 = r1 instanceof defpackage.C0315m4
            if (r7 == 0) goto L75
            r7 = r1
            m4 r7 = (defpackage.C0315m4) r7
            r6.f = r4
            r6.c = r3
            r6.d = r1
            r6.e = r2
            Hb r7 = r7.e
            r4.b(r7, r6)
            return r0
        L75:
            Lc r1 = r1.l()
            goto L5a
        L7a:
            sm r6 = defpackage.C0486sm.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Gb.b(java.lang.Object):java.lang.Object");
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        return ((Gb) a((S5) obj2, (Mh) obj)).b(C0486sm.a);
    }
}
