package defpackage;

/* renamed from: fb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0141fb implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Nb b;
    public final /* synthetic */ Exception c;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ RunnableC0141fb(InterfaceC0192ha interfaceC0192ha, Exception exc, int i) {
        this.a = i;
        this.b = (Nb) interfaceC0192ha;
        this.c = exc;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [Nb, ha] */
    /* JADX WARN: Type inference failed for: r0v2, types: [Nb, ha] */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                ?? r0 = this.b;
                Exception exc = this.c;
                Boolean bool = Boolean.FALSE;
                String message = exc.getMessage();
                if (message == null) {
                    message = "";
                }
                r0.e(bool, message);
                return;
            default:
                ?? r02 = this.b;
                Exception exc2 = this.c;
                Boolean bool2 = Boolean.FALSE;
                String message2 = exc2.getMessage();
                if (message2 == null) {
                    message2 = "";
                }
                r02.e(bool2, message2);
                return;
        }
    }
}
