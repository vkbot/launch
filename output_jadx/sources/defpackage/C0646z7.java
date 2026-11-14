package defpackage;

/* renamed from: z7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0646z7 implements Ee, InterfaceC0089da {
    public final /* synthetic */ int a;
    public final Object b;

    public /* synthetic */ C0646z7(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public final void a(Throwable th) {
        switch (this.a) {
            case 0:
                ((D8) this.b).c();
                return;
            default:
                ((InterfaceC0089da) this.b).h(th);
                return;
        }
    }

    @Override // defpackage.InterfaceC0089da
    public final /* bridge */ /* synthetic */ Object h(Object obj) {
        switch (this.a) {
            case 0:
                a((Throwable) obj);
                return C0486sm.a;
            default:
                a((Throwable) obj);
                return C0486sm.a;
        }
    }

    public final String toString() {
        switch (this.a) {
            case 0:
                return "DisposeOnCancel[" + ((D8) this.b) + ']';
            default:
                return "InvokeOnCancel[" + ((InterfaceC0089da) this.b).getClass().getSimpleName() + '@' + C6.p(this) + ']';
        }
    }
}
