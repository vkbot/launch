package defpackage;

/* renamed from: pb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0400pb extends T5 {
    public int d;
    public final /* synthetic */ InterfaceC0192ha e;
    public final /* synthetic */ S5 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0400pb(S5 s5, InterfaceC0110e6 interfaceC0110e6, InterfaceC0192ha interfaceC0192ha, S5 s52) {
        super(s5, interfaceC0110e6);
        this.e = interfaceC0192ha;
        this.f = s52;
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        int i = this.d;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("This coroutine had already completed");
            }
            this.d = 2;
            AbstractC0171gf.v(obj);
            return obj;
        }
        this.d = 1;
        AbstractC0171gf.v(obj);
        InterfaceC0192ha interfaceC0192ha = this.e;
        AbstractC0348nb.p(interfaceC0192ha, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>");
        AbstractC0152fm.b(interfaceC0192ha);
        return interfaceC0192ha.e(this.f, this);
    }
}
