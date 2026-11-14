package defpackage;

/* renamed from: ob, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0374ob extends AbstractC0199hh {
    public int b;
    public final /* synthetic */ InterfaceC0192ha c;
    public final /* synthetic */ S5 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0374ob(S5 s5, S5 s52, InterfaceC0192ha interfaceC0192ha) {
        super(s5);
        this.c = interfaceC0192ha;
        this.d = s52;
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        int i = this.b;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("This coroutine had already completed");
            }
            this.b = 2;
            AbstractC0171gf.v(obj);
            return obj;
        }
        this.b = 1;
        AbstractC0171gf.v(obj);
        InterfaceC0192ha interfaceC0192ha = this.c;
        AbstractC0348nb.p(interfaceC0192ha, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>");
        AbstractC0152fm.b(interfaceC0192ha);
        return interfaceC0192ha.e(this.d, this);
    }
}
